---
layout: linux
title: "What is Sudo and Root"
<!-- thumbnail: /assets/img/posts/Linuxbasic.png -->
permalink: /blog/linux/sudo-and-root-linux
category: ["linux"]
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

#### **`Link Course Lession`**

- [Linux GUI](/blog/linux) : Linux Course Guild
- [Lession 2](/blog/linux/dir-and-folder-linux) : Dir and folder ?
- [Lession 3](/blog/linux/putty-and-ssh-linux) : Putty and ssh ?
- [Lession 4](/blog/linux/change-or-mount-disk-linux) : Storage media
- [Lession 5](/blog/linux/blog/linux/trick-mop) : Trick Beginer Mop ?
