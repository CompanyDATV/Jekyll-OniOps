---
layout: git
title: "Github Actions"
# thumbnail: /assets/img/trick.png
permalink: /blog/git/git-actions
category: ["git"]
---

<h2 class="text-title"> GitHub Actions is a continuous integration and continuous delivery (CI/CD) platform that allows you to automate your build, test, and deployment pipeline. You can create workflows that build and test every pull request to your repository or deploy merged pull requests to production. </h2>

- GitHub provides Linux, Windows, and macOS virtual machines to run your workflows, or you can host your own self-hosted runners in your own data center or cloud infrastructure.

- GitHub cung cấp các máy ảo Linux, Windows và macOS để chạy quy trình công việc của bạn hoặc bạn có thể lưu trữ các trình chạy tự lưu trữ của riêng mình trong trung tâm dữ liệu hoặc cơ sở hạ tầng đám mây của riêng bạn.

### **The components of GitHub Actions**

<img src="https://0x0.st/ojKf.png" class="img-01"/>

- Workflows
- Events
- Jobs
- Actions
- Runners

### **Description**

- Workflows : is a configurable automated process that will run one or more jobs. Workflows are defined by a YAML file checked in to your repository and will run when triggered by an event in your repository, or they can be triggered manually, or at a defined schedule.
- Events : is a specific activity in a repository that triggers a workflow run.
- Jobs : is a set of steps in a workflow that execute on the same runner. Each step is either a shell script that will be executed, or an action that will be run. Steps are executed in order and are dependent on each other. Since each step is executed on the same runner, you can share data from one step to another.
- Actions : custom application for the GitHub Actions platform that performs a complex but frequently repeated task. Use action to help reduce the amount of repetitive code that you write in your workflow files. An action can pull your git repository from GitHub, set up the correct toolchain for your build environment, or set up the authentication to your cloud provider.
- Runners : is a server that runs your workflows when they're triggered. Each runner can run a single job at a time. GitHub provides Ubuntu Linux, Microsoft Windows, and macOS runners to run your workflows; each workflow run executes in a fresh, newly-provisioned virtual machine.

### `Create an example workflow`

1. First of all we need to create a project from git, you can refer to the previous post I wrote about how to create a simple project with a [Github](/blog/git/git-create-repository) repository.
2. After we have our project, we need to create a folder called `.github`
```css
# Note that ".github" directory houses workflows, issue templates, pull request templates, funding information, and some other files specific to that project
```
3. In folder `.github` we need create a new folder name `workflows`
- In this workflows folder will execute the files `yaml`

> we create a YAML file as follows 

```css
> name_file: hello-world.yaml

name: hello world
on:
  push: 
    branches: [main]
jobs:
  demo-gitaction:
    runs-on: ubuntu-latest
    steps: 
      - run: echo Hello World
```

> workflows

```js
# name: The name of the workflow as it will appear in the Actions tab of the GitHub repository.
# on: Specifies the trigger for this workflow
# jobs: Groups together all the jobs that run in the learn-github-actions workflow.
# demo-gitaction: Defines a job named demo-gitaction. The child keys will define properties of the job.
# runs-on: Configures the job to run on the latest version of an Ubuntu Linux runner. This means that the job will execute on a fresh virtual machine hosted by GitHub.
# steps: Groups together all the steps that run in the demo-gitaction. Each item nested under this section is a separate action or shell script.
# run: The run keyword tells the job to execute a command on the runner.
```

#### **`Link Course Lession`**

- [Create Repo](/blog/git/git-create-repository) : Create Repository Git
- [Git Actions](/blog/git/git-actions) : Github Actions by me
- [About Git](blog/git) : What is About Git
- [Reference from Github page source](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions) : Github Action Source Google


<style>
    .card-body { margin-top: -30px }
    .text-title {
        color: green !important;
        font-weight: bold;
        font-size: 22px;
    }
    .img-01 {
        max-width: 100%;
        width: auto
    }

</style>