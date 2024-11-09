#!/bin/bash

# Update system and install Docker if not present
echo "Updating system packages..."
sudo apt update -y

if ! command -v docker &> /dev/null; then
    echo "Docker not found, installing..."
    sudo apt install -y docker.io
    sudo systemctl start docker
    sudo systemctl enable docker
else
    echo "Docker is already installed."
fi

# Titan Edge Docker image
docker pull nezha123/titan-edge

# Prompt for number of instances
read -p "How many Titan Edge instances would you like to create? " num_instances

# Loop to create instances with individual proxies
for ((i=1; i<=num_instances; i++)); do
    echo -e "\nConfiguring proxy for Titan Edge instance $i:"
    read -p "Enter proxy in format IP:PORT:USERNAME:PASSWORD: " proxy_input
    IFS=':' read -r proxy_ip proxy_port proxy_user proxy_password <<< "$proxy_input"

    # Create a unique directory for each instance
    instance_dir="$HOME/.titanedge_instance_$i"
    mkdir -p "$instance_dir"

    # Create Dockerfile with `redsocks` setup for the proxy
    cat <<EOL > "$instance_dir/Dockerfile"
FROM ubuntu:latest
WORKDIR /app
RUN apt-get update && apt-get install -y bash curl jq redsocks iptables iproute2

# Add Titan Edge binary
RUN curl -L https://github.com/nezha123/titan-edge/releases/download/v1.0/titan-edge -o /usr/local/bin/titan-edge && chmod +x /usr/local/bin/titan-edge

# Copy redsocks configuration and entrypoint
COPY redsocks.conf /etc/redsocks.conf
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint to start redsocks and configure iptables
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
EOL

    # Create redsocks.conf with user proxy details
    cat <<EOL > "$instance_dir/redsocks.conf"
base {
    log_debug = on;
    log_info = on;
    log = "file:/var/log/redsocks.log";
    daemon = on;
    redirector = iptables;
}

redsocks {
    local_ip = 127.0.0.1;
    local_port = 12345;
    ip = $proxy_ip;
    port = $proxy_port;
    type = http-connect;
    login = "$proxy_user";
    password = "$proxy_password";
}
EOL

    # Create entrypoint script for iptables configuration
    cat << 'EOL' > "$instance_dir/entrypoint.sh"
#!/bin/sh
echo "Starting redsocks..."
redsocks -c /etc/redsocks.conf &
sleep 5

echo "Configuring iptables..."
iptables -t nat -A OUTPUT -p tcp --dport 80 -j REDIRECT --to-ports 12345
iptables -t nat -A OUTPUT -p tcp --dport 443 -j REDIRECT --to-ports 12345

echo "Starting Titan Edge..."
exec titan-edge
EOL

    # Build and run the Docker container with proxy
    docker build -t "titan_edge_instance_$i" "$instance_dir"
    docker run -d --name "titan_edge_instance_$i" -v "$instance_dir:/root/.titanedge" --cap-add=NET_ADMIN "titan_edge_instance_$i"
    
    echo "Titan Edge instance $i started with proxy $proxy_ip:$proxy_port."
done

echo -e "\nAll requested Titan Edge instances have been created and started with individual proxy settings!"
