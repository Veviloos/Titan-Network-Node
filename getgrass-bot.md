# GetGrass Bot

This repository contains the code for `getgrass-bot`, a bot designed to establish WebSocket connections through various HTTP and SOCKS proxies, specifically aimed at farming for Grass Airdrop Season 2.

{% hint style="info" %}
I am not responsible for any loss or damage caused by this bot. Use it at your own risk.
{% endhint %}

### Option1: Automatic Installation

1. **Script Features**:
   * Installs Node.js.
   * Clones the repository.
   * Installs dependencies.
   * Configures `config.js` and `proxy.txt`.
   * Starts the bot with a provided password.
2. **User Inputs**:
   * User ID (`UserId`).&#x20;
     1. Obtain your user ID from the Getgrass website:
        * Visit [https://app.getgrass.io/dashboard](https://app.getgrass.io/register/?referralCode=NXZg3yAsUsXKzy2).
        * Open your browser's developer tools (usually by pressing F12 or right-clicking and selecting "Inspect").
        * Go to the "Console" tab.
        *   Paste the following command and press Enter:

            ```
            localStorage.getItem('userId');
            ```
        * Copy the value returned, which is your user ID.
   * Proxies (in a specific format).
3. **Implementation**:
   * Save the script below as `install_getgrass.sh`

***

***

### 🤔 Let's start:

#### **One-Click Installation Script**

```
wget https://raw.githubusercontent.com/Pheanhutz/omsim/refs/heads/main/install_getgrass.sh
```

```
chmod +x install_getgrass.sh
./install_getgrass.sh
```

***

***

### Option2: Manual Installation

install nodejs curl -fssL [https://deb.nodesource.com/setup\_19.x](https://deb.nodesource.com/setup_19.x) | sudo -E bash sudo apt install -y nodejs

1.  Clone this repository to your local machine:

    ```
    git clone https://github.com/Pheanhutz/omsim.git
    ```
2.  Navigate to the project directory:

    ```
    cd omsim
    ```
3.  Install the required dependencies using npm:

    ```
    npm install
    ```

### ⚙️ Configuration:

SetUp on `Config.js`

* Get UserId
  * Login to your grass account
  * Go to Dashboard
  *   Right Click Open New Tab [get-UserId](https://api.getgrass.io/retrieveUser)\
      \
      Edit Config.js\
      \
      // configuration

      const config = { userId: 'xxxxxxxxxxx', // Replace with Your User ID HERE proxyFile: 'proxy.txt' // your Path to Proxy.txt file // format proxies is => socks://username:pass@ip:port (only support socks/socks5 for this freemium version) };

      module.exports = config;\

  * Edit Proxy.txt
  * format proxies is: `socks://username:pass@ip:port` Or `http://username:pass@ip:port`
  * Note: `The proxy format depends on the bot version you are using one proxy per line`.

4.  Start the bot:

    ```
    npm start
    ```

### Buy Me Coffee:

If you would like to support the development of this project, you can make a donation using the following addresses:

* **Solana**: H6zFVqFtB9JXejSAMwPS7eKKqxPWVQDxpqhRyoi2Xw74
* **EVM**: 0x0010F293d5125A549C8d31b86A3Db0F4D312017d

### License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/dante4rt/getgrass-bot/blob/main/LICENSE) file for details.

### Contribution

If you find this project useful, please consider giving it a star on GitHub! Your support motivates further development and enhancements.
