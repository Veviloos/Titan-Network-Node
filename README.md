# Titan-Network-Node (DOCKER Installation)

```bash
Operating System : Ubuntu 22.04
CPU: Minimum of 1/2 core.
Memory: 2 to 4 GB.
Storage: SSD or NVMe with at least 5GB of space.
```
# Prerequisites
Before you start, ensure you have docker compose installed.
```bash
# Install Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
docker version

# Install Docker-Compose
VER=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep tag_name | cut -d '"' -f 4)

curl -L "https://github.com/docker/compose/releases/download/"$VER"/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose
docker-compose --version

# Docker Permission to user
sudo groupadd docker
sudo usermod -aG docker $USER
```

Increase Buffer Size
```bash
sysctl -w net.core.rmem_max=7500000
sysctl -w net.core.wmem_max=7500000
```

## Step 1: Download the Image:
```bash
sudo apt update
docker pull nezha123/titan-edge
```

## Step 2:  Create your own storage path:
```bash
mkdir ~/.titanedge
```

## Step 3: Run the node
```bash
docker run -d -v ~/.titanedge:/root/.titanedge nezha123/titan-edge
```

## Step 4: Enter the Container - Type Command "docker ps" copy the containerID and replace the * in the command. 
```bash
docker exec -it * /bin/bash
```

## Step 5: Bind the applied
Get your Identity Code Here: 
https://test1.titannet.io/intiveRegister?code=ndTnzz
Register Use My Ref Code: ndTnzz
- Go to Node Management
- Get Identity Code

- Replace your-hash-here with your identity code. 
```bash
titan-edge bind --hash=your-hash-here https://api-test1.container1.titannet.io/api/v2/device/binding
```

## Check logs 
```bash
docker logs -f YOURCONTAINERID
```
Now you should see online device if the dashboard.

![image](https://github.com/user-attachments/assets/0cc41727-90f2-4d07-8bd1-97d567a76ae8)



























