# MeshChain

DISCLAIMER!\
This project includes code that is related to encryption. By using this code, you acknowledge the following:

* The encryption methods and algorithms implemented here are provided for educational purposes only.
* The author does not take any responsibility for any misuse or unintended consequences that may arise from the use of this code.
* It is your responsibility to ensure that you understand the implications of using encryption and to comply with all applicable laws and regulations in your jurisdiction.
* Always conduct thorough testing and validation of any encryption code before deploying it in a production environment.

Use this code at your own risk.

**Clone Repo:**

{% code title="run command" %}
```
git clone https://github.com/MeoMunDep/MeshChain.git
cd MeshChain/MeshChain
```
{% endcode %}

**Install Dependencies and Modules:**

```
npm i user-agents axios colors p-limit https-proxy-agent socks-proxy-agent crypto ws uuid
```

***

**Prepare Configuration Files:**

{% hint style="info" %}
You'll need to set up a few configuration files for the bot to work properly.
{% endhint %}

**Configuration Files:**

{% code title="run command:" %}
```
nano configs.json 
```
{% endcode %}

```
{
  "timeZone": "en-US",
  "delayEachAccount": [5, 8],
  "timeToRestartAllAccounts": 300,
  "numberOfAccountsRunInOneTime": 100,
  "isDoTasks": true,
  "isPlayingGames": true,
  "referralCode": "D9B458G1JLSB" - Your referral code, dont change it if you want to help me ^^
}
```

***

**Edit datas.txt**

{% code title="run command" %}
```
nano datas.txt
```
{% endcode %}

{% hint style="info" %}
Open MeshChain Dashboard, turn on devtool by F12 or Ctrl + Shift + I, copy all the Authorization value except Bearer from tab like the picture. [Click Here](https://t.me/KeoAirDropFreeNe/257/16137)
{% endhint %}

{% code title="Sample:" %}
```
ey...
ey...
ey...
```
{% endcode %}

***

**Edit datas2.txt**

{% hint style="info" %}
Get info here: [Click Me](https://t.me/KeoAirDropFreeNe/257/6879)
{% endhint %}

{% code title="Sample:" %}
```
query_id.../user...
query_id.../user...
query_id.../user...
```
{% endcode %}

***

**Edit proxies.txt**

{% code title="run command:" %}
```
nano proxies.txt
```
{% endcode %}

{% hint style="info" %}
#### Proxy is an option. If you have one, fill it in; otherwise, leave it blank.
{% endhint %}

{% code title="Sample Format:" %}
```
http://user:password@host:port
https://user:password@host:port
socks4://user:password@host:port
socks5://user:password@host:port
```
{% endcode %}

***

**Run MeshChain Bot:**

{% code title="run command:" %}
```
node linux_run
```
{% endcode %}

{% hint style="info" %}
You need to `cd` to the file after extract it. To run the bot, use the following command: `node bot_telegram` for **telegram** version or `node bot_extension` for **extension** version If you want to run both bot, use this command `node windows_run` for **windows** environment or `node linux_run` for **linux** environment.&#x20;
{% endhint %}
