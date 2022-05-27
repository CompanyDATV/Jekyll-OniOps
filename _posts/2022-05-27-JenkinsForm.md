---
title: JenkinsForm
published: true
---

Today we will see how to create a simple DevOps project.
Here we will use a JAVA development project for DevOps system building purposes, cicd with jenkins.
What is DevOps?. Let's see a real time scenario. Where do we need DevOps?. Let's say you are working on a JAVA project.
We have 3 servers. Development dev, test - UAT (User Acceptance Testing) and product - Production server.
Many developers work on the project. The developers will push their code to the development server.
If everything is fine, then the code is passed to the UAT server. If the UAT passes the test, then the code is moved to the final production server.
All steps are done manually only. Every time we have to manually move the code from one server to another with dependent libraries manually.
Everything is a manual process. It will take more time.
DevOps is a process and it includes many tools to automate the process and it is used to ease the work of developer and operations team.

# **_[[AUTHOR](https://datv.nulldoot2k.xyz#author)]_** • **_[[ANSIBLE](https://datv.nulldoot2k.xyz#server-ansible)]_** • **_[[SONARQUBE](https://datv.nulldoot2k.xyz#server-ansible)]_** • **_[[SSH](https://datv.nulldoot2k.xyz#create-key-ssh)]_** • **_[[SUPPORT](https://datv.nulldoot2k.xyz#gift_heart-support)]_**

## Showcase

![jenkins](https://user-images.githubusercontent.com/83489434/164890400-1c8045ec-c34e-4061-b989-0be4442ec937.png)

## Theme Showcase

<details><summary> <b>Images CI/CD Jenkins (Click to expand!)</b></summary>
<h3>Jenkins CI/CD Ansible Tomcat</h3>

![DEMO1](https://user-images.githubusercontent.com/83489434/164889628-2bed0230-42e6-4e80-beb6-5464a2184c58.png)

<h3>Jenkins CI/CD Pipelines Tomcat</h3>

![DEMO2](https://user-images.githubusercontent.com/83489434/164889770-ad8b2dc7-82f1-482d-8f84-12db0e7ceb5a.png)

</details>

## Tools

- Vmware: Virtualization Platform vmware

  - Server Jenkins : Ram 1Gb, SSD 20GB, Process 1, Port 22, 8080
  - Server Tomcat : Ram 1Gb, SSD 20GB, Process 1, Port 22, 8090
  - Server Ansible : Ram 1Gb, SSD 20GB, Process 1, Port 22

- Git: Open source, repository - use 1 on 4

  - [Github](https://github.com)
  - [Gitlab](https://gitlab.com)
  - [Codeberg](https://codeberg.org)
  - [0xacab](https://about.0xacab.org)

- Packet: Extension pack, repository for open source Linux, Unix
  - httpd, git, wget, chkconfig, php, java, tomcat, ansible, firewalld…

## Tomcat Server

- IP-Server-Tomcat:8090

> Webserver Tomcat : IP-Server-Tomcat:8090/webapp

## Jenkins Server

- IP-Server-Jenkins:8080

```diff
:: Require
+ Plugins: SSH Over, SSH Agent
- Plugins: deploy container
! Plugins: Pipeline, maven
```

## Server Ansible

> Ansible helps to configure "many" servers according to a variety of customizations, reducing the operating time on each installed server.

![image](https://user-images.githubusercontent.com/83489434/165114820-b2a9c53e-4118-4841-9dbd-61ffc5c5a21d.png)

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

## SonarQube

    .. Continoune

## Create Key SSH

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

## Author

### **>>** **_[[Link Documents]](https://codeberg.org/nulldoot2k/Do_An_Tot_nghiep_2022)_** - **_WORD_** Do_An_Tot_nghiep_2022

## Warning

- If you don't have access then message me via: **_[Contact me](mailto:nulldoot2k@proton.me)_**
  - Title: Access JenkinsPorm
  - Content: your username codeberg
- If you have an issue with a plugin in DATV, first you should report it to DATV to see if it's an issue with it.

## :gift_heart: Support

- Donate: VISA ViettinBank: 103868801400 - SWIFT/BIC Code: ICBVVNVXDDD

## THANK FOR WATCHING MY Repo

# LINK: (**[My channel](https://www.youtube.com/c/nulldoot)**) Youtube
