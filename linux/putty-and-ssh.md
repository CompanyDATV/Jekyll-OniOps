---
layout: linux
title: "What is Putty and SSH"
<!-- thumbnail: /assets/img/posts/Linuxbasic.png -->
permalink: /blog/linux/putty-and-ssh-linux
category: ["linux"]
---
### What is **`Putty`**

PuTTY is an SSH and telnet client, developed originally by Simon Tatham for the Windows platform. PuTTY is open source software that is available with source code and is developed and supported by a group of volunteers.

Download and install the latest version of [Putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)

1. Open Putty:

<img src="https://wiki.ircnow.org/uploads/PuTTY/putty-config.png" style="max-width:100%;" />

  1. Host Name: username@fruit.ircnow.org 
      - For example, if your username is john, and your server address is fruit.ircnow.org, 
      then fill in john@example.ircnow.org.
  2. Port: 22
  3. Click Open at the bottom. 

2. Verify the SSH host keys:

<img src="https://wiki.ircnow.org/uploads/PuTTY/putty-fpr.png" style="max-width:100%;" />

  1. You can consult the SSH Fingerprints page or check the DNS SSHFP records. 

3. Type in your password (the password is invisible):

<img src="https://wiki.ircnow.org/uploads/PuTTY/putty-login.png" style="max-width:100%;" />

**`NOTE`**: In PuTTY, you must use Shift+[Ins] in order to paste. Ctrl+v does not work for PuTTY. 

> Fixing the [Esc] key.
  Ctrl+[ is an alternate key for [Esc] -> To get the [Esc] key to work properly on PuTTY:
  
  1. Go to Terminal > Keyboard and change The Function keys and keypad to VT100+.
  <img src="https://wiki.ircnow.org/uploads/PuTTY/putty-keyboard.png" style="max-width:100%;" />

  2. Go to Terminal > Features and check Disable application keypad mode. 

> Logging in with Keys 

we need to learn what is SSH, what is private key and public key? Please read below

### What is **`SSH`**

The SSH protocol (also referred to as Secure Shell) is a method for secure remote login from one computer to another. It provides several alternative options for strong authentication, and it protects the communications security and integrity with strong encryption.

> **`Creating SSH keys with PuTTYgen`**

<img src="https://wiki.ircnow.org/uploads/PuTTY/puttygen.gif" style="max-width:100%;" />

1. Generate Public/Private Key 

For additional security, you can use a public/private key pair to login. If you disable password authentication, your sshd setup will be more secure.

  1. In the parameters field at the bottom, select the type of key to generate. This guide uses Ed25519.
  2. Click Generate <br>
  <img src="https://wiki.ircnow.org/uploads/PuTTY/puttygen-random.png" style="max-width:100%;" />

  3. **`Optional`**: In Key passphrase, provide a passphrase and write it down securely. 
  Type the passphrase again in Confirm passphrase. **`WARNING`**: If you use a passphrase, 
  the key becomes worthless if you forget the passphrase!
  4. Click Save public key. Give it a name like publickey.pub. This key can be shared with anyone.
  5. Click Save private key. Give it a name like privatekey.ppk. 
  Keep the private key safe; **`never`** share this key! 

**`Optional`**: To export this key for another ssh client, click on Conversions in the menu 
at top, then click Export OpenSSH key. Give it a name like private.key. 

- You have now generated your public and private key! 

2. Adding the Public Key

  1. Connect with PuTTY using a password as described at top.
  2. Edit ~/.ssh/authorized_keys:
  <img src="https://wiki.ircnow.org/uploads/PuTTY/putty-editauthorized.png" style="max-width:100%;" />

   1. Select the public key from PuTTyGen, from the field Public key for pasting into OpenSSH authorized keys file. Type ctrl+c to copy.
  <img src="https://wiki.ircnow.org/uploads/PuTTY/putty-copyauthorized.png" style="max-width:100%;" />
   2. Paste the key into ~/.ssh/authorized_keys by pressing Shift+[Ins].
   3. Alternatively, you can get the public key from the .ppk you created earlier.
    Open it with Notepad. It should look like this: 

    ---- BEGIN SSH2 PUBLIC KEY ----
    Comment: "ed25519-key-20210809"
    AAAAC3NzaC1lZDI1NTE5AAAAINCB6GpCoQPG4byfLwqHyA2SMyTV7RjfVw+bqO3h
    fTDF
    ---- END SSH2 PUBLIC KEY ----

    Ignore the comment lines, copying only the key; join the lines together, and add ssh-ed25519 in front:

    ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINCB6GpCoQPG4byfLwqHyA2SMyTV7RjfVw+bqO3hfTDF

> Logging in with Private Key 

  1. Open PuTTY
  2. Go to Connection > SSH > Auth
  3. In Private key file for authentication, click Browse, 
  and load your private key (hint: it ends in .ppk).

  - Click Session and fill in Hostname as described in the **[PuTTY connect guide](/blog/linux/3?what-is-putty)**. Then, click Open.
  - If you used a passphrase for the key, type it in.
  <img src="https://wiki.ircnow.org/uploads/PuTTY/putty-keypassphrase.png" style="max-width:100%;" />

#### **`Link Course Lession`**

- [Linux GUI](/blog/linux) : Linux Course Guild
- [Lession 1](/blog/linux/sudo-and-root-linux) : Sudo and Root ?
- [Lession 2](/blog/linux/dir-and-folder-linux) : Dir and Folder ?
- [Lession 4](/blog/linux/change-or-mount-disk-linux) : Storage media
