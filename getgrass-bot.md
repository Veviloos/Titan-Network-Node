# GetGrass Bot

This repository contains the code for `getgrass-bot`, a bot designed to establish WebSocket connections through various HTTP and SOCKS proxies, specifically aimed at farming for Grass Airdrop Season 2.

{% hint style="info" %}
I am not responsible for any loss or damage caused by this bot. Use it at your own risk.
{% endhint %}

### Manual Installation

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
    npm install
    ```

### Donations

If you would like to support the development of this project, you can make a donation using the following addresses:

* **Solana**: `GLQMG8j23ookY8Af1uLUg4CQzuQYhXcx56rkpZkyiJvP`
* **EVM**: `0x960EDa0D16f4D70df60629117ad6e5F1E13B8F44`
* **BTC**: `bc1p9za9ctgwwvc7amdng8gvrjpwhnhnwaxzj3nfv07szqwrsrudfh6qvvxrj8`

### License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/dante4rt/getgrass-bot/blob/main/LICENSE) file for details.

### Contribution

If you find this project useful, please consider giving it a star on GitHub! Your support motivates further development and enhancements.
