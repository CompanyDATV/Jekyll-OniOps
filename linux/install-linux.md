---
layout: linux
title: "Learn Linux Basic Lesson 1"
thumbnail: /assets/img/posts/Linuxbasic.png
permalink: /blog/linux/1
category: ["jekyll", "guides", "linux", "sample_category"]
---

#### **`What is Root?`**

- The "root" account on a Linux computer is an account with full permissions.
  To manipulate commands on Linux, especially those that affect system files, often we need root or privileged access.
  With great power, unlike normal usage rights, root access should be requested only when necessary.
  As a result, important system files can be protected from unwanted damage.

#### **`What is Sudo?`**

- Sudo (/ˈsuːduː/ or /ˈsuːdoʊ/) is a program for Unix-like operating systems.
  Sudo allows a User to run programs with the security privileges of another User in the Linux operating system.
  That is, sudo allows someone to execute commands in the system under another member's authority and without special permissions.
  For Linux distributions, sudo operations are extremely important. Therefore, you should make use of sudo no matter what Linux distribution you are using.

#### > **`Command Line Sudo in Linux`**

- Add permit Poweroff

```css
## Allow root to run any commands anywhere

root All=(All) All

user localhost= NOPASSWD: /sbin/poweroff
```

## Course Linux

- [Linux GUI](/blog/linux) : Linux Guild
- [Lession 2](/blog/linux/2) : what is dir, folder ?
