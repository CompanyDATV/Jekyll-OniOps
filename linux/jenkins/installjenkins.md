---
layout: linux
title: "Install Here"
thumbnail: /assets/img/posts/install.png
permalink: /JenkinsForm/install
---

## **Server Tomcat**

```diff
- Download Java and setup Env JAVA_HOME
+ Setup Page Manager Tomcat
```

- **`Step 1:`** copy and run,
  Click Here: **[Bash Tomcat](https://paste.ircnow.org/wpqvo5qr49ifc5mrod6z)**

- **`Step 2:`** command line

```js
  # source bash.sh
  and waiting a ...
```

- **`Step 3:`** Change Port Tomcat

```diff
  # vi /opt/apache-tomcat-8.5.77/conf/server.xml
  change port : 8080 -> 8090
```

- **`Step 4:`** Config Manager Tomcat
  - edit file `tomcat-users.xml`

```js
  <role rolename="manager-gui" />
  <role rolename="manager-script" />
  <role rolename="manager-jmx" />
  <role rolename="manager-status" />
  <user username="admin" password="admin" roles="manager-gui, manager-script, manager-jmx, manager-status" />
  <user username="deployer" password="deployer" roles="manager-script" />
  <user username="tomcat" password="secret" roles="manager-gui" />
```

- **`Step 5:`** Open Internet and connect with IP-Server-Tomcat:8090

  **`Webserver Tomcat : IP-Server-Tomcat:8090/webapp`**

- Repo: [DemoJenkins Ci/Cd](https://codeberg.org/nulldoot2k/JenkinsPorm)

> **`Note That:`**

- Copy file bash here: **[Start Tomcat](https://paste.ircnow.org/8dqr812j01ur4p6z4d67)**

  After run commane line:

```bash
  # chmod 755 /etc/init.d/tomcat
  # chkconfig --add /etc/init.d/tomcat
```

## **Jenkins Server**

- IP-Server-Jenkins:8080

```diff
:: Require
+ Plugins: SSH Over, SSH Agent
- Plugins: deploy container, sonarqube scanner, SonarQube
! Plugins: Pipeline, maven
```

- **`Step 1:`** Install Packet

  - Click Here **[Jenkins bash](https://paste.ircnow.org/wd6f4x2bclafcxafopmn)** and copy paste

- **`Step 2:`** Run source

```bash
  # source bash.sh
  and waiting a ...
```

- **`Step 3:`** Start Jenkins and Install Plugins

  - Copy here : # less /var/lib/jenkins/secrets/initialAdminPassword
  - After change Passwd for Jenkins

- **`Complete`** After we complete ==> result

<img width="100%" src="https://0x0.st/oufP.png"/>

## **Server Ansible**

> Ansible helps to configure "many" servers according to a variety of customizations, reducing the operating time on each installed server.

[<img src="/assets/img/posts/ansibal.png" width="100%"/>](anible)

- Install Ansible

        yum install epel-release <br>
        yum install ansible

- Inventory Host

       echo "ip-server-tomcat" >> /etc/ansible/hosts

- For example:

        cat <<EOF>/etc/ansible/hosts
        [local]
        127.0.0.1
        [apiserver]
        192.168.88.2
        [jobserver]
        192.168.89.100
        192.168.89.101
        [dbservers]
        192.168.90.200
        192.168.90.201
        EOF

- Struct call ans

        # ansible [tên host] -m [tên module] -a [tham số truyền vào module]
        # ansible [host name] -m [name module] -a [parameter passed to module]

- Test ping to server

        # ansible apiserver -m ping -u tuanda -k
        SSH password: (nhập pass của host api)
        192.168.88.2 | SUCCESS => {
            "changed": false,
            "ping": "pong"
        }

- Ansible playbook

        cat << EOF > copywarfile.yml
        - hosts: all
        become: true
        tasks:
            - name: copywarfile
            copy:
                src: /opt/playbooks/webapp/target/webapp.war
                dest: /opt/apache-tomcat-8.5.77/webapps
        EOF

- Check Ansible: `ansible all -m ping`

        /etc/ansible/playbook copywarfile.yml

## **SonarQube**

- **`Step 1:`** Install Packet
  - Copy and run code like under

```bash
  # cat << EOF > start.sh
  cd /opt
  wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.8.54436.zip
  unzip sonarqube-8.9.8.54436.zip
  mv sonarqube-8.9.8.54436 sonarqube
  yum install java-11-openjdk-devel mysql  -y
  yum -y install epel-release wget
  EOF
  source start.sh
```

- **`Step 2:`** Config and Start
  - Add user

```js
  # useradd sonar
```

- Add permit User

```js
RUN_AS_USER = sonar;
```

- Start Service SonarQube

```js
  # ./sonar.sh start
```

- **`Step 3:`** Connect page
  - Connect to `http://localhost:9000`
  - result ==>

<img width="100%" src="https://0x0.st/oufZ.jpg"/>

- **`Step 4:`** Create Token

<img width="100%" src="https://0x0.st/oufq.png"/>
```js 
  Project Key: Key author token to link jenkins
  Display name: Show name project of us
```
After SonarQube auto create token like : `shsasa...`

## **Create Key SSH**

> Generating a new SSH key and adding it to the ssh-agent

    After you've checked for existing SSH keys, you can generate a new SSH key to use for authentication, then add it to the ssh-agent.

- When you're prompted to "Enter a file in which to save the key," press Enter. This accepts the default file location.

```
    # ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
        or
    # ssh-keygen <enter>
```

- At the prompt, type a secure passphrase. For more information, see "Working with SSH key passphrases."

```
    > Enter passphrase (empty for no passphrase): [Type a passphrase]
    > Enter same passphrase again: [Type passphrase again]
```

- Adding your SSH key to the ssh-agent or ssh-server

```
    # ssh-copy-id [ip server []...] ]
```
