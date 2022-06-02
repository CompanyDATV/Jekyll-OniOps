---
layout: post
title: "Voip Pbx Asterisk"
summary: "Multi Author Support allows to create articles with different Authors"
author: nulldoot2k
date: "2020-10-25 1:35:23 +0530"
category: jekyll
thumbnail: /assets/img/posts/theme.png
keywords: devlopr jekyll, how to use devlopr, devlopr, how to use devlopr-jekyll, devlopr-jekyll tutorial,best jekyll themes, multi author
usemathjax: true
permalink: /VoipAsteriskDocker
---

## Ok today i will tutorial about FreePBX in CentOs 7 using Docker

Asterisk is an open source PBX system, created by Digium, more exactly, authored by Mark Spencer.
Asterisk PBX allows people to make calls to each other but also connects them with telephone services,
such as reaching the public network or VoIP services.
Asterisk is certainly the number one PBX system out there.

```diff
+ step 1: install Centos 7
- step 2: install Docker
! step 3: install FreePBX 15
```

    First one !  require you use knowledge aout : docker and open source and cloud and so on ...

## `Step 1 Install CentOS 7`

- Download iso centos 7: Link iso: `http://mirrors.nhanhoa.com/centos/7.9.2009/isos/x86_64`

- Using vmware 16: Key || `ZF3R0-FHED2-M80TY-8QYGC-NPKYF`

<img width="100%" src="/assets/img/posts/theme1.png">

<center> Fix as above </center>

    Edit : DATE & TIME as your country <br>
            + Network : Set IP Static not DHCP
    For Example: choose Manua..
            + Network: 192.168.1.X
            + Netmask: 255.255.255.0 -> /24
            + Gateway: 192.168.1.1
            + DNS1   : 8.8.8.8
            + DNS2   : 8.8.4.4
    PASSWD: root : root

```
    Check ip wifi: nmcli -p dev
    If your ip not change then fix as follows!
    vi /etc/sysconfig/network-scripts/ifcfg-eth0
        ^---------------------------------------------------^
        |    TYPE="Ethernet"                                |
        |    PROXY_METHOD="none"                            |
        |    BROWSER_ONLY="no"                              |
        |    BOOTPROTO="static"                             |
        |    DEFROUTE="yes"                                 |
        |    IPV4_FAILURE_FATAL="no"                        |
        |    IPV6INIT="yes"                                 |
        |    IPV6_AUTOCONF="yes"                            |
        |    IPV6_DEFROUTE="yes"                            |
        |    IPV6_FAILURE_FATAL="no"                        |
        |    IPV6_ADDR_GEN_MODE="stable-privacy"            |
        |    NAME="ens33"                                   |
        |    UUID="1eff6d2b-3fd6-405b-9e78-cafb7fbc2e34"    |
        |    DEVICE="ens33"                                 |
        |    ONBOOT="yes"                                   |
        |    IPADDR=192.168.1.X                             |
        |    GATEWAY=192.168.1.1                            |
        |    NETMASK=255.255.255.0                          |
        |    DNS1=8.8.8.8                                   |
        *---------------------------------------------------*
    After type: esc :wq -> Save file!!!

Edit vmnet8 ip addr : 192.168.1.X – default gateway : 192.168.1.1

    +>Install some as:
        yum install net-tools
        yum install telnet -y
        yum install openssh
        systemctl status firewalld
        firewall-cmd –add-service=ssh –permanent
        firewall-cmd –reload
        firewall-cmd –list-all
        systemctl enable sshd.service
        systemctl start sshd.service

```

## `Step 2 Installer Docker Container in CentOS 7`

But first, let’s update the package database:

```js
sudo yum check-update
```

Now run this command. It will add the official Docker repository, download the latest version of Docker, and install it:

```css
yum -y install yum-utils device-mapper-persistent-data lvm2
```

After download Docker from source packet!

```diff
curl -fsSL https://get.docker.com/ | sh
```

After installation has completed, start the Docker daemon:

```
# sudo systemctl status/start/enable/stop docker
```

Step 4: If you want to avoid typing sudo whenever you run the docker command, add your username to the docker group:

```diff
# sudo usermod -aG docker $(whoami)
# sudo usermod -aG docker username
```

- Let's it install Docker-compose in CentOs 7

```sh
Step 1: sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

```sh
Step 2: sudo chmod +x /usr/local/bin/docker-compose
```

```sh
Step 3: docker-compose --version
```

## `Step 3 Install FreePBX`

```
# Open terimal in CentOS 7
# Type command line:
    Docker pull tiredofit/freepbx
    After build images from packet brove: -> check images || docker images
    I see: ---->
    REPOSITORY          TAG       IMAGE ID       CREATED        SIZE
    tiredofit/freepbx   latest    e98ede842e6d   7 months ago   2.05GB

    after : build images to container linux:
    docker run --name freepbx1 -v /docker-volumes/api/home/asterisk:/var/spool/asterisk \
    --net=host -e HTTP_PORT=8080 -e HTTPS_PORT=1443 --restart=always -itd tiredofit/freepbx

    with:
        --name : your name container
        -- \ is space
        -e : environment
        --restart=always -> after reboot then automatic restart
        -itd: -i starts an interactive session and \
              -t emulates a tty. \
              -d tells Docker to detach and run in the background.
    Edit file config avoid conflict:
        vim /etc/apache2/ports.conf

            listen 8080
            <ifModule ssl_module>
                listen 1443
            </IfModule>
            <ifModule mod_gnutls.c>
                listen 1443
            </IfModule>

        After reset httpd:
            Command line: /etc/init.d/apache2 restart
        + complement:
            apt-get install pkg-config
            sudo apt-get install -y icu-devtools
            sudo apt-get install -y libicu-dev
            sudo apt-get install -y pkgconf
            fwconsole ma upgradeall
        	fwconsole ma download cel
        	fwconsole ma install cel
    Execute FreePBX:
    Type: ip:8080/admin/config.php
```

Note that! <br>

    - Open port:
        tcp: 22, 80, 443, 1443, 5060, 5160, 8089, 8002
        udp: 10000 - 60000, 5060, 55000, 1194, 5160

<center> <h1 style="color:orange;">Practice Now</h1> </center>

- Install Module Admin:
  ```diff
  !   ADMIN
          REST API
          CALLERID LOOKUP
          BACKUP&RESTORE
          ASTERISK CLI
  +	APPLICATION
          IVR
          ANNOUCEMENTS
          QUEUES
          RING GROUPS
          CALENDAR
          TIME CONDITION
          fwconsole ma upgradeall
          fwconsole ma download cel
          fwconsole ma install cel
          PBX API
          ASTERISK API
          MISC APPLICATION
          MISC DESTINATION
          SET CALLERID (CEL)
          WAKE UP CALLS
  -   SETTING
          FILE STORE
          ASTERISK REST INTERFACE USER (ARI)
  @   CONNECTIVITY
  	    WEBRTC PHONE
  ```

<center> <h1 style="color:red; font-weight: bold;">Athor with docker-compose and Dockerfile</h1></center>

Ok let's it

    Step 1: Install Centos 7 in Vmware os Using VPS CentOs 7

```sh
Step 2: git clone https://github.com/ElsagaTech/Voip.git
```

```sh
Step 3: cd Voip
```

```sh
Step 4: docker-compose up -d --build
```

Now you look!

- command line: docker logs freepbbx-app

==> `logs`

# Note that:

## File moule.sh

    install module and chmod key

I look two key :

```bash
api_oauth_public.key
api_oauth.key
```

## File user.sh

## Using Curl bypass create information!

        Create admin user

        curl -X POST \
        'http://192.168.1.25:8080/admin/config.php' \
        --data 'action=setup_admin', \
        --data 'username=admin', \
        --data 'password1=admin', \
        --data 'password2=admin', \
        --data 'email=vudat412@gmail.com', \
        --data 'system_ident=VoIP+Server', \
        --data 'auto_module_updates=enabled', \
        --data 'auto_module_security_updates=enabled', \
        --data 'unsigned_module_emails=enabled', \
        --data 'update_every=saturday', \
        --data 'update_period=4to8' \
        -c /var/www/html/cookieLogin.json

- File cookieLogin.json contains cookie information!

        Create Languages

        curl -X POST \
        'http://192.168.1.25:8080/admin/config.php' \
        --data 'username=admin', \
        --data 'password=admin', \
        --data 'oobeSoundLang=en', \
        --data 'oobeGuiLang=en_US'

- Create Api Token Graphql

  ```rb
  To create Api Token OAUTH 2 you need 2 factors: ClientID and ClientSC
  Ok! To generate 2 authentication keys we have to get the returned cookie data to bypass login
  Look!

  # cut hash #
  cookie="$(curl -X POST -v --silent http://192.168.1.25:8080/admin/config.php \
  -d 'username=admin&password=admin&oobeSoundLang=en&oobeGuiLang=en_US' --stderr - | grep expire | grep -oP 'PHPSESSID=([a-zA-Z0-90]+)' | awk -F "=" '{print $2}')"

  You see: curl POST --> cookie after cut hash | PHPSESSID=?key?
  we have to cut it| ([a-zA-Z0-90]+) | using `awk` because  PHPSESSID=?key? "="
  awk -F "=" '{print $2}')" | exacly

  # Okey after cookie we will get that cookie to bypass and create an api through the cookie that we can req #
  curl -X POST \
  'http://192.168.1.25:8080/admin/ajax.php?module=api&command=add_application' \
  --header 'Referer: http://192.168.1.25:8080/admin/config.php?display=api' \
  --cookie "PHPSESSID=$cookie" \
  --data 'type=client_credentials', \
  --data 'name=API', \
  --data 'description=GRAPH+API', \
  --data 'allowed_scopes=gql', \
  --data 'website=&redirect=&&user=' > /var/www/html/token.json

  # we get the key file that stores the api_application information about we req,
  # Now we will cut those two keys and assign them to a variable, setting the value with the name clientID and clientSC.

  clientID="$(awk -F ":" '{print $5}' /var/www/html/token.json | cut -d, -f1 | cut -d '"' -f2)"

  ## and

  clientSC="$(awk -F ":" '{print $6}' /var/www/html/token.json | cut -d, -f1 | cut -d '"' -f2)"

  # Now we will use these 2 variables to attach values to curl and ask them to return us a token

  curl -X POST \
  -H "Accept:*/*" \
  -H "Content-Type: application/json" \
  -d '{"client_id":"'"$clientID"'","client_secret":"'"$clientSC"'","grant_type":"'"client_credentials"'","scope":"'"gql"'"}' \
  http://192.168.1.25:8080/admin/api/api/token >> /var/www/html/tokenAPI.json

  Now we have finished creating Token API
  ```

## Using Insert DBS create information!

- Create in DBS

  ````sh

          # Tao nguoi dung qua co so du lieu

          password="`echo -n 'admin'|sha1sum|cut -d ' ' -f 1`"
          mysql -D asterisk -e "INSERT INTO ampusers (username,password_sha1,sections) VALUES ('admin','$password','*');"

          # tao api thong qua co so du lieu
          passwordSC="`echo 'adminSC'|sha256sum| awk '{print $1}'`"
          mysql -D asterisk -e "INSERT INTO api_applications (owner,name,description,grant_type,client_id,client_secret,redirect_uri,website,algo,allowed_scopes) VALUES (NULL,'API','GRAPH API','client_credentials','$passwordSC',SHA2('$passwordSC', 256),'','','sha256','gql');"
          # lấy key client_secret trong dbs
          clientsecret="`mysql -ND asterisk -e "select client_secret from api_applications where name = 'API' and allowed_scopes = 'gql';"`"

          ... To be continued ...
      ```

  Folder : certs, data, db, dbbackup, logs
  ````
