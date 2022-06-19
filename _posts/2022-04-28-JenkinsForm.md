---
layout: post
title: "JenkinsForm"
summary: "Building System DevOps Ci/Cd with Pipeline Jenkins write jenkinsfile... authors nulldoot2k"
author: nulldoot2k
date: "2022-04-28 1:35:23 +0530"
category: ["jekyll", "guides", "linux", "sample_category"]
tags: ["linux"]
thumbnail: /assets/img/posts/jenkinform.png
keywords: devlopr jekyll, how to use devlopr, devlopr, how to use devlopr-jekyll, devlopr-jekyll tutorial,best jekyll themes, multi categories and tags
usemathjax: false
permalink: /JenkinsForm
---

{% if page.description %}<meta name="description" content="{{ page.description }}">{% endif %}

<style>
  .fonts-header {
    font-size: 18px;
}

@media only screen and (max-width: 500px) {
   .fonts-header { 
      font-size: 14px; 
   }
}
</style>

<div class="fonts-header">
  Today we will see how to create a simple DevOps project.
  Here we will use a JAVA development project for DevOps system building purposes, cicd with jenkins.
  What is DevOps?. Let's see a real time scenario. Where do we need DevOps?. Let's say you are working on a JAVA project.
  We have 3 servers. Development dev, test - UAT (User Acceptance Testing) and product - Production server.
  Many developers work on the project. The developers will push their code to the development server.
  If everything is fine, then the code is passed to the UAT server. If the UAT passes the test, then the code is moved to the final production server.
  All steps are done manually only. Every time we have to manually move the code from one server to another with dependent libraries manually.
  Everything is a manual process. It will take more time.
  DevOps is a process and it includes many tools to automate the process and it is used to ease the work of developer and operations team.
</div>

`Hôm nay chúng ta sẽ xem cách tạo một dự án DevOps đơn giản. Ở đây chúng ta sẽ sử dụng một dự án phát triển JAVA cho mục đích xây dựng hệ thống DevOps, cicd cùng với jenkins.`

- Hãy xem một kịch bản thời gian thực.
- Giả sử chúng ta đang làm việc trên một dự án JAVA.
- Chúng ta có 3 máy chủ. Phát triển : dev, test - UAT (Kiểm tra sự chấp nhận của người dùng) và product - Máy chủ sản xuất.
- Nhiều nhà phát triển làm việc trong dự án. Các nhà phát triển sẽ đẩy mã của họ đến máy chủ phát triển.
  Nếu mọi thứ ổn, thì mã được chuyển đến máy chủ UAT. Nếu UAT vượt qua bài kiểm tra, thì mã sẽ được chuyển
  đến máy chủ sản xuất cuối cùng. Tất cả các bước chỉ được thực hiện thủ công. Mỗi lần chúng ta phải di
  chuyển mã theo cách thủ công từ máy chủ này sang máy chủ khác với các thư viện phụ thuộc theo cách thủ công.
  Mọi thứ đều là một quy trình thủ công. Nó sẽ tiêu tốn nhiều thời gian hơn. DevOps là một quy trình và nó bao
  gồm nhiều công cụ để tự động hóa quy trình và nó được sử dụng để giảm bớt công việc của nhà phát triển và nhóm vận hành.

## **_[[HOME](/JenkinsForm)]_** • **_[[INSTALL](/JenkinsForm/install)]_** • **_[[AUTHOR](https://datv.nulldoot2k.xyz/JenkinsForm#author)]_**

<details><summary> <b>Theme ShowCase!</b></summary>

<h3 style="margin-top: 5px; font-weight: bold">Jenkins CI/CD Ansible Tomcat</h3>

<img src="https://user-images.githubusercontent.com/83489434/164889628-2bed0230-42e6-4e80-beb6-5464a2184c58.png" width="100%"/>

<h3 style="margin-top: 5px; font-weight: bold">Jenkins CI/CD Pipelines Tomcat</h3>

<img width="100%" src="https://user-images.githubusercontent.com/83489434/164889770-ad8b2dc7-82f1-482d-8f84-12db0e7ceb5a.png">

<h3 style="margin-top: 5px; font-weight: bold">Jenkins CI/CD SonarQube Tomcat</h3>

<img width="100%" src="https://user-images.githubusercontent.com/83489434/170981454-4db23ad1-b668-4601-8978-e3498c4bdb0a.png">

</details>

## **Tools**

- Vmware: Virtualization Platform vmware

  - Server Jenkins : Ram 1Gb, SSD 20GB, Process 1, Port 22, 8080
  - Server Tomcat : Ram 1Gb, SSD 20GB, Process 1, Port 22, 8090
  - Server Ansible : Ram 1Gb, SSD 20GB, Process 1, Port 22
  - Server SonarQube : Ram 1Gb, SSD 20GB, Process 1, Port 22, 9000

- Git: Open source, repository - use 1 on 4

  - [Github](https://github.com)
  - [Gitlab](https://gitlab.com)
  - [Codeberg](https://codeberg.org)
  - [0xacab](https://about.0xacab.org)

- Packet: Extension pack, repository for open source Linux, Unix
  - Packet: httpd, git, wget, chkconfig, php, java, tomcat, ansible, firewalld…
  - Plugin: SSH Over, SSH Agent, Pipeline, maven, deploy container, SonarQube Scanner, Git Server
  - Ngrok: Công cụ tạo đường hầm (tunnel) giữa localhost và internet, giúp cho việc truy cập mạng riêng tư thông qua custom doamin của ngrok

## **Begin with Jenkin Pipeline**

### **`Step 1`** Create pipeline jenkins

<img width="100%" src="https://0x0.st/oufS.png" />

### **`Step 2`** Embed repo

<img width="100%" src="https://0x0.st/ouyH.png" />

```css
	Description: des your repo
	Github project: your name repo
```

### **`Step 3`** Webhook repo

> Use Build Triggers

- [x] Github hook trigger for GITScm polling
- [x] Poll SCM

  - Schedule : `H * * * *` --> des: time for build

> `Note that`: We have to use Ip address public and Webhook access delivery like piture here!

<img src="https://0x0.st/ouyq.png" width="100%" />

```bash
  Name: your name
  Server URL and Alias URL: host jenkins we want connect to github server
  Tick box Manage hooks and type user and password of github server to validate
```

- After, Github we need test delivery from github server with Webhook

<img src="https://0x0.st/ouyP.png" width="100%"/>

### **`Step 4`** Creat Token Test Sonar CI

[<img src="/assets/img/posts/sonarqubeserver.png" width="100%"/>](sonarqube)

### **`Step 5`** Write file jenkinsfile

- `After we have installed the steps and entered this step 5, we have all the servers we need and the tools we need, now our job is to write a small script to optimize everything. the process into 1 build`

```js
pipeline {
    agent any
    environment {
        PATH = "/opt/maven/apache-maven-3.6.3/bin:$PATH"
    }
    stages {
        stage("checkout code") {
            steps {
                git credentialsId: 'JenkinsForm_codeberg', url: 'git@codeberg.org:nulldoot2k/JenkinsPorm.git'
            }
        }
        stage("build code") {
            steps {
                sh "mvn clean install"
            }
        }
        stage("SonarQube analysis") {
            steps {
                withSonarQubeEnv("sonarqube-8.9.8") {
                    sh """mvn sonar:sonar \
                    -Dsonar.projectKey=DemoJenkins \
                    -Dsonar.host.url=http://192.168.56.33:9000 \
                    -Dsonar.login=caf0b32a5dadd61104953d074ceea1e619646605"""
                }
            }
        }
        stage("deploy") {
            steps {
                sshagent(['deploy_user']) {
                    sh "scp -o StrictHostKeyChecking=no webapp/target/webapp.war root@192.168.56.55:/opt/apache-tomcat-8.5.77/webapps"
                }
            }
        }
    }
}
```

### **`Step 6`** Build Ci/Cd automatic

<img src="https://0x0.st/ouy9.png" width="100%" />

- `So we have finished building a simple DevOps CI/CD system with Jenkins`

## **Author**

### **>>** **_[[Link Documents]](https://codeberg.org/nulldoot2k/Do_An_Tot_nghiep_2022)_** - **_WORD_** Do_An_Tot_nghiep_2022

## **Warning**

- If you don't have access then message me via: **_[Contact me](mailto:nulldoot2k@proton.me)_**
  - Title: Access JenkinsPorm
  - Content: your username codeberg
- If you have an issue with a plugin in DATV, first you should report it to DATV to see if it's an issue with it.

## **Support**

- Donate: VISA ViettinBank: 103868801400 - SWIFT/BIC Code: ICBVVNVXDDD

# LINK: (**[Video Jenkin DevOps Baisc](https://youtu.be/z6KcdSelj18)**) Youtube
