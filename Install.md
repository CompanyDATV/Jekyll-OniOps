---
title: Welcome To OniOps
layout: page
permalink: /oniops
---

[<img src="https://youranonnews.files.wordpress.com/2011/07/untitled-1.jpg" width="100%"/>](anonops)

<center>
<h1 style="font-weight:bold">
Welcome To IRC_Hexchat^AnOps!!!
</h1>
</center>

# Overview 0_o

- **OniOps is a group name created by NullDoot2k, OniOps is a self-made nickname organization with the desire to be cool and present as an anonymous but sharing and instructive community...**

Join with me by IRC*, I will recommend this subordinate!!!

## IRC

- **The Users' Network**

  Everything you should know about IRC, welcome to the IRC association, Of the users, By the users, For the users

## **[IRC-Now](https://ircnow.org)** || **[IRC-AnOps](https://anonops.com)** || **[IRC-2600](https://scuttled.net)**

- We are here **[OPNSA](https://anonops.com/opnsa)**

  There are many ways you can spread the word, the most efficient could be printing over 9000 flyers and during the night go out and place them everwhere. Ideally in high-traffic areas. You can get lawn signs, posters, flyers, etc to bring attention. Even only posting a few still helps, but the more you are able to put up, the more attention it will bring!

  > -- Link Click go to --> : **[Bring!!!](https://anonops.com/opnsa/paperstorm.html)** <--

# Suggest More...!!!

<h3>Upload Hidden</h3>

    Upload your files anonymously and free on AnonFiles <br>
    We offer you 20 GB filesize limit and unlimited bandwidth.

> Link : **[Upload Anonops](https://anonfiles.com)**

<h3>Radio AnonOps</h3>

- [<img src="/assets/img/anonops.png" width="100%"/>](anonops)

  Hello, and welcome to RadioAnonOps. The home of eargasms, dragons, and knitting. <br>
  To chat to us then join us on IRC and harangue the DJs if you don't like our tunes. <br>
  irc.anonops.com Port: 6697 SSL Only and accept self-signed certs.

> Link **[Radio AnonOps](https://radio.anonops.com/)**

# How To Join Us

<h3>(Tor + browser) - browser = Tor!</h3>

- First of all, you need to **_[download and install Tor](https://www.torproject.org/download/)_** which is now bundled together with custom firefox browser (but we won’t use the bundled browser),
  please open cmd, navigate deeper into Tor browser folder and find Tor binary file
  ex: **(C:/User/ADMIN/Desktop/Tor Browser/Browser/TorBrowser/Tor)** and execute Tor binary with **-service install** as parameter (just once).

```diff
$ ./tor.exe -service install
Running on a Post-Win2K OS, so we'll assume that the LocalService account exists.
IMPORTANT NOTE:
    The Tor service will run under the account "NT AUTHORITY\LocalService".  This means
    that Tor will look for its configuration file under that
    account's Application Data directory, which is probably not
    the same as yours.
Done with CreateService.
Service installed successfully
Service started successfully

Note: run cmd with adminis...
```

- After that press win+r and type services.msc and press enter. Search Tor Win32 Service and check the service status
  [<img src="https://user-images.githubusercontent.com/67037335/165703689-05ce317b-8fd0-48d2-88a9-42a94c864ed7.png" width="100%"/>](anonops)

- Please make sure Tor Win32 Service is started and running, so we will able to use it with HexChat IRC client.

If you want to check the service work or not, you can use curl command to check (if you have curl installed):

```css
curl --socks5 localhost:9050 \
    --socks5-hostname localhost:9050 \
    -s https://check.torproject.org/ \
    | cat | grep -m 1 Congratulations | xargs
```

The output should be something like this

> Congratulations. This browser is configured to use Tor

So now we don’t need to open Tor Browser overtimes to connect with Tor network (all we need just Tor services).

<h3>Setup IRC with Hexchat</h3>
you need to download it first ***[Hexchat](https://hexchat.github.io/downloads.html)***
- Now, let connect to Freenode IRC (directly) using HexChat. I assume you already register IRC account under AnonOps server, 
if you don’t have account then you need to register because it prerequisite to use hidden services on **union** network.

Just login as usual:

```html
/nick
<insert_your_username>
  /msg NickServ REGISTER
  <insert_your_password>
    <insert_your_fake_email>
      /msg NickServ IDENTIFY
      <insert_your_password></insert_your_password></insert_your_fake_email></insert_your_password
></insert_your_username>
```

Successfuly log in? OK, then open CMD (i prefer to use git-bash actually) and type
**(cd %AppData%\Roaming\HexChat)**
and press enter, just create folder certs if you don’t have yet and navigate inside that folder.

> **mkdir certs && cd certs**

Now let generate certificate using this command

> **openssl req -x509 -sha256 -new -newkey rsa:4096 -days 1000 -nodes -out client.pem -keyout client.pem**

```css
$ openssl req -x509 -sha256 -new -newkey rsa:4096 -days 1000 -nodes -out client.pem -keyout client.pem
Generating a RSA private key
writing new private key to 'client.pem'
-----
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [AU]:MY
State or Province Name (full name) [Some-State]:
Locality Name (eg, city) []:
Organization Name (eg, company) [Internet Widgits Pty Ltd]:
Organizational Unit Name (eg, section) []:
Common Name (e.g. server FQDN or YOUR name) []:
Email Address []:
```

When finish, find the cert fingerprint and copy thus 40 chars output using command like example below:

```html
$ openssl x509 -in ./client.pem -outform der | sha1sum -b | cut -d' ' -f1
12345bd20a7c7dcm123453e1e61234588f412345
```

- Go back to your HexChat IRC client and add you cert fingerprint

```css
/msg NickServ CERT ADD <insert_cert_fingerprint>
/msg NiclServ CERT LIST
```

Now let set our HEXCHAT to use proxy via HexChat (setting-> preference-> Network and Network setup).

Set proxy port to listen on 9050 and use proxy type SOCK5. For hostname set as localhost or 127.0.0.1. Then press OK to comfirm.

- Open network service menus (ctrl+S) and now add new server name. Lets put as “Server-TOR” then press OK. Click on “Freenode-TOR” and press Edit button.
  [<img src="https://i.vgy.me/TEeSb7.png#center" width="100%"/>](anonops)

- Opt and tick “connect on selected server only”, “use SSL for all server on this network” and “accept invalid SSL certificate”.
- Change login method to **SASL EXTERNAL (cert)** and add Server IRC hidden service server address (you may check here ).
- We are almost done, now just close everything and exit HexChat. Start (open) HexChat again and try connect to Server-TOR
- Now your IP are spoofed on Tor network. Let me know if you have some error or problem :)

# **Setting <3**

- irc 2600net: irc.2600.net/+6697

  > Use SSL for all the servers on this Network

  > Accept invalid SSL certificate

  > nickname + username : <your_name>

  > Login_method : <SASL EXTERNAL (cert)>

  > UTF-8 (Unicode)

  > Connect commands: msg nickserv identify insert_your_name insert_your_password

- irc AnonOps: irc.anonops.com/+6697

  > Use SSL for all the servers on this Network

  > nickname + username : <your_name>

  > Login_method : NickServ (/MSG NickServ + password)

  > password: insert_your_password

  > UTF-8 (Unicode)

  > Connect commands: msg nickserv identify insert_your_password

- irc FreeNode:

  > [Look](chat.freenode.net/+6697) or [Look1](d6dx2v2kh34q3mil3c774ozfa637czrrfwgevvpbujhbk5axyy7hoiqd.onion) and [Look2](ajnvpgl6prmkb7yktvue6im5wiedlz2w32uhcwaamdiecdrfpwwgnlqd.onion)

  > Bypass proxy server (because hexchat error irc-tor)

  > Use SSL for all the servers on this Network

  > Accept invalid SSL certificate

  > nickname + username : <your_name>

  > Login_method : <SASL EXTERNAL (cert)>

  > UTF-8 (Unicode)

- irc IRCnet: [Look](IRCnet3mh2zfmpn3zcgwtrjnh37zcnyvjmsvoig577isjmy6m24auqqd.onion) or [Look1](ssl.cloak.ircnet.io)

  > Register account Cloak: **[Cloak Hidden](https://www.cloak.ircnet.io)**

  > nickname + username : <your_name>

  > Login_method : Server password (/PASS password)

  > password: Account_Hostname_Cloak-password_cloak --> for example: username-password

  > UTF-8 (Unicode)

- irc Libera.Chat: [Look](irc.libera.chat/+6697) or [Look1](libera75jm6of4wxpxt4aynol3xjmbtxgfyjpu34ss4d7r7q2v5zrpyd.onion/+6697)

  > Use SSL for all the servers on this Network

  > Accept invalid SSL certificate

  > nickname + username : <your_name>

  > Login_method : NickServ (/MSG NickServ + password)

  > password: insert_your_password

  > UTF-8 (Unicode)

- irc OFTC: [Look](irc.oftc.net) or [Look1](oftcnet6xg6roj6d7id4y4cu6dchysacqj2ldgea73qzdagufflqxrid.onion)

  > Use SSL for all the servers on this Network

  > Accept invalid SSL certificate

  > nickname + username : <your_name>

  > Login_method : <SASL EXTERNAL (cert)>

  > UTF-8 (Unicode)

  > Connect commands : msg nickserv identify insert_your_password

- irc IRCNow: [Look](4ufrikyorlatp5ekgz6tlre22v6b5jxqbiid6cp7nuhemklukiohidqd.onion)

  > Use SSL for all the servers on this Network

  > Accept invalid SSL certificate

  > nickname + username : <your_name>

  > Login_method : <SASL EXTERNAL (cert)>

  > UTF-8 (Unicode)

  > Connect commands : msg nickserv identify insert_your_password

## Setting Network - REQUIRE

<h3>Network setup : Preferences - Hexchat</h3>

    - **Proxy Server**
    - Hostname : 127.0.0.1
    - Port : 9050
    - Type : SOCKS5
    - Use proxy for: ALL connections

- like that:
  [<img src="https://user-images.githubusercontent.com/67037335/166261925-927a1d76-a678-4b66-b2e1-90e13d2a5abe.png" width="100%"/>](anonops)

# **Study Try Hard - COURSE AnonOps**

- Learn and improve skill by --> **[HERE](https://wiki.ircnow.org/index.php?n=Ircnow.Minutemin)**
- By the side : we also have an overview course (OSCP or CEH + Hacking)
  > --> Link : **[[Study try Hard](https://goldmine.anonworld.us)** <--
- The money to keep this going comes straight from our pockets. If you find these resources useful, please consider
  donating any amount to one of the following addresses. We will keep working to improve the content and provide more resources:
- [<img src="https://user-images.githubusercontent.com/67037335/166635031-0234f61b-3532-44a9-a63e-fa0322f24028.png" width="100%"/>](anonops)

  > --> Click go to Dowload : **[Download](https://goldmine.anonworld.us/learninghub/THE%20WHOLE%20GODDMAN%20GOLDMINE.rar)**

- Almost --> Tools for you!!!

```js
    https://portswigger.net/web-security/ssrf

    https://book.hacktricks.xyz/pentesting-web/ssrf-server-side-request-forgery

    https://cobalt.io/blog/a-pentesters-guide-to-server-side-request-forgery-ssrf

    https://payatu.com/blog/arjuns/a-basic-approach-to-ssrf

    https://opensourceagenda.com/projects/allthingsssrf

    https://neuralegion.com/blog/ssrf-server-side-request-forgery/

    https://trustwave.com/en-us/resources/blogs/spiderlabs-blog/from-ssrf-to-compromise-case-study/

    https://0xn3va.gitbook.io/cheat-sheets/web-application/server-side-request-forgery
```

# **IRC-Free Virtual Private Server - COURSE IRCNow**

- With IRCNow: Free OpenBSD VPS for Teammates **[FREE](https://wiki.ircnow.org/index.php?n=Vps.Vps)**

  >

          We are offering a free sysadmin course. If interested,
          Check out our shell tutorial:
          For Windows: https://wiki.ircnow.org/?n=PuTTY.Connect
          For Android: https://wiki.ircnow.org/?n=ConnectBot.Connect
          For Mac: https://wiki.ircnow.org/?n=MacTerminal.Connect
          For Linux: https://wiki.ircnow.org/?n=OpenSSH.Connect
          Username: unix101
          Password: sIC4NrMcvBG
          Server: freeirc.org
          Port: 22

- **Note:**
  If you need help, you can connect to irc.freeirc.org and ask us on #shell.
  After you finish unix105, you can apply for a virtual private server.
  > If you join our team, you can claim your free homestead VPS today. Digital independence is FREE for the taking.<br>
  > If you prefer to work solo, you can purchase a homestead VPS.

# Good luck :)

- Tutorial **_[Follow me](https://www.youtube.com/)_** by channel youtube!!!
- Follow Me **_[It's About Me](https://linktr.ee/nulldoot)_**
