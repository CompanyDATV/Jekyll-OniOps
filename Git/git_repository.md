---
layout: git
title: "Create Repo-Git"
# thumbnail: /assets/img/trick.png
permalink: /blog/git/git-create-repository
category: ["git"]
---
<h2 class="font-texth2">Create a repository. You can store a variety of projects in GitHub repositories, including open source projects. With open source projects, you can share code to make better, more reliable software. You can use repositories to collaborate with others and track your work.</h2>
---

## Start a new Git repository for a non-exist codebase

1. Sign up with you account [Login](https://github.com/login) or Sign in <br>
  <img src="https://0x0.st/ojX6.png" class="img-01"/>

2. Now you need to create the repository as follows <br>
  <img src="https://0x0.st/ojXI.png" class="img-01" />

    + Repository name : repo your name
    + Description : description information about your repository
    + public or private : options if you want to make your project public or make it private to yourself
    + initalize this... : access create file markdown in repository
    + .gitignore and license : files and keys if you want to add to the project to set up some structure for your working directory. thanks
3. Create repository <br>
  <img src="https://0x0.st/ojXl.png" class="img-01" />

4. now we need to clone the url from our project with https or ssh link, for me use https

## Start a new Git repository for an existing code base
```git
$ cd /path/to/my/codebase
$ git init # Create a /path/to/my/codebase/.git directory
$ echo "hello world" > README.md # insert text to file .markdown
$ git add . # Add all existing files to the index
$ git commit # Record the pristine state as the first commit
```

## Push the repository to Github

1. Before we proceed to push the project to the repository, we need to validate the Git repository credentials with our local machine.
```bash
    git config --global user.name "name-Github" #assign name to local
    git config --global user.email "email-Github" # assign email to local
```

2. After you need remote url from Github to Local machine
```css
    git remote add origin https://github.com/......... # url-https or url-ssh to assign to file .config github
```

3. You can check remote with command line
  - git remote -v

4. After you assign information you can push with User to Github
```ts
    git push -u origin master # note that: master is branch
```

`Note that:` after we push the project to Github, now it asks us to enter the password for authentication

# Okay, so we can create our own project on Github. Good Luck!!!

#### **`Link Course Lession`**

- [Create Repo](/blog/git/git-create-repository) : Create Repository Git
- [Git Actions](/blog/git/git-actions) : Github Actions by me
- [About Git](/blog/git) : What is About Git
- [Reference from Github page source](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions) : Github Action Source Google


<style>
    .img-01 {
        max-width: 100%;
        width: auto;
    }
    .font-texth2 {
        color: #84d984 !important;
        font-weight: bold;
        font-size: 24px;
    }
    .card-body {
        margin-top: -30px;
    } 
</style>