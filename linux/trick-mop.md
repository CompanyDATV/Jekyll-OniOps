---
layout: linux
title: "Trick Tips Bash Shell"
thumbnail: /assets/img/trick.png
permalink: /blog/linux/trick-mop
category: ["linux"]
---

# About Trick Post to Server

> 0x0.st is NOT a platform for:
  * piracy
  * pornography and gore
  * extremist material of any kind
  * malware / botnet C&C
  * anything related to crypto currencies
  * backups (yes, this includes your minecraft stuff, seriously
    people have been dumping terabytes of it here for years)
  * CI build artifacts
  * doxxing, database dumps containing personal information
  * anything illegal under German law

## Trick Post - Image 
  - Using `Curl` for Windows or Linux and MacOs git server gitea
  
  Server : **`https://0x0.st`**

> ### Syntax: For **`file`** you need to use the following

```css
curl -F'file=@nameImage.png' https://0x0.st
```

> ### Syntax: For **`url`** you need to use the following

```css
curl -F'url=http://example.com/image.jpg' https://0x0.st
```

- ### **`Note that`** 
  - Uploads found to be in violation of these rules will be removed,
    and the originating IP address blocked from further uploads.

  - Tor exit nodes are blocked by the firewall due to frequent rule violations.

---
## Trick Post - Documents

  - Using `netcat` for Windows or Linux and MacOs git server gitea

    Server : **`ircnow.org`** <br>
    Post : 7777

> ### Syntax: For **`documents`** you need to use the following  

```yaml
!+) Writing text before post to Server
    - echo "a piece of text" | nc ircnow.org 7777
!+) Reading text in file before post to Server
    - cat nameFile.* | nc ircnow.org 7777
    or you can use : less, more, cat *.* | nc 
```

- ### **`Note that`**
  - nc it means `Netcat`

---

#### **`Link Course Lession`**

- [Linux GUI](/blog/linux) : Linux Course Guild
- [Lession 1](/blog/linux/sudo-and-root-linux) : Sudo and Root ?
- [Lession 2](/blog/linux/dir-and-folder-linux) : Dir and folder ?
- [Lession 3](/blog/linux/putty-and-ssh-linux) : Putty and ssh ?
- [Lession 4](/blog/linux/change-or-mount-disk-linux) : Storage media
