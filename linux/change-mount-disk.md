---
layout: linux
title: "Storage Media"
<!-- thumbnail: /assets/img/posts/Linuxbasic.png -->
permalink: /blog/linux/change-or-mount-disk-linux
category: ["linux"]
---

Linux has amazing capabilities for handling storage devices, whether physical storage such 
as hard disks, network storage, or virtual storage devices such as RAID and LVM
> we will look at the following commands:
- **`mount`** Mount a file system
- **`umount`** Unmount a file system
- **`fsck`** Check and repair a file system
- **`mkfs`** Create a file system
- **`fdisk`** mainpulate disk partition table
- **`dd`** Convert and copy a file
- **`genisoimage (mkisofs)`** Create an ISO 9660 image file
- **`wodim (cdrecord)`** Write data to optical storage media
- **`md5sum`** Calculate an MD5 checksum

For example

```js
[root@bcdinc jray]# fdisk /dev/hda
Command (m for help): p

Disk /dev/hda: 255 heads, 63 sectors, 784 cylinders
Units = cylinders of 16065 * 512 bytes

Device Boot  Start    End  Blocks  Id System
/dev/hda1  *     1     3   24066  83 Linux
/dev/hda2       4    784  6273382+  5 Extended
/dev/hda5       4    338  2690856  83 Linux
/dev/hda6      339    673  2690856  83 Linux
/dev/hda7      674    706  265041  83 Linux
/dev/hda8      707    739  265041  83 Linux
/dev/hda9      740    772  265041  82 Linux swap

Command (m for help):
``` 

### Mounting and Unmounting Storage Devices 

This is a rather complex partitioning scheme that sets up separate boot,
user, and swap partitions. These partitions are then automatically mounted as well:
```js
[root@bcdinc jray]# mount
/dev/hda8 on / type ext2 (rw)
none on /proc type proc (rw)
usbdevfs on /proc/bus/usb type usbdevfs (rw)
/dev/hda1 on /boot type ext2 (rw)
/dev/hda6 on /home type ext2 (rw)
/dev/hda5 on /usr type ext2 (rw)
/dev/hda7 on /var type ext2 (rw)
none on /dev/pts type devpts (rw,gid=5,mode=620)
.....
```
Again, if you're a first-time user, Red Hat's automatic partition system 
makes installation as easy as Windows or Mac OS. If you've decided to 
use another distribution or partition the drive manually, 
there are several rules you should follow.

### Lumping Linux into a Single Partition
At system startup, Linux mounts all available file systems per the specifications 
set forth in /etc/fstab. You can use /etc/fstab to incisively control how users 
and the system access your partitions. Let's quickly cover /etc/fstab now.

> **`/etc/fstab`**
- /etc/fstab is the plain text file in which you specify file system mount options. 
Each line addresses one file system. For example, the following entry 
specifies mount options for an MS-DOS file system mountable in /dos:

The line consists of six fields:

  - The file system specification—Here you specify either the block device or file system to be mounted—in this case, partition 4 on the first drive. This is what Linux will mount.

  - The file system file location—This is the mount point—in this case, it's /dos, a common naming for a DOS file system mount point, as discussed earlier.

  - The file system type—In this field, you describe the file system's type: Minix, extended, DOS, HPFS, iso9660/CDROM, Network File System (NFS), or swap.

  - The file system mount options—Here you specify the level of access that users and the system will have on this mounted file system. Here's where security comes in. Your choices are as follows:

  - File system dump parameters—This is a numerical value to flag file systems that need to be dumped (backed up).

  - File system check sequence number—Here you specify the file system's priority for integrity checks performed by fsck. (fsck is a file system integrity checker that examines file systems at boot by default.)
>
|`Parameter` |`Describe`                                  |   
|:-----------|-------------------------------------------:|
|defaults    |Everything (quota, read-write, and suid).   |
|noquota     |No quotas, generally.                       |
|nosuid      |No SUID access.                             |
|quota       |Quotas are active.                          |
|ro          |Read-only                                   |
|rv          |Read-only                                   |
|suid        |SUID access is okay                         |


# **`Resolved According to Me`** 

Where should you force a nosuid mount? Anywhere that local or remote users 
might be up to no good. 
- For example, suppose that you anticipate providing 
anonymous FTP services (not a great idea). If so, consider creating a 
separate partition for this and have Linux mount it nosuid. 
This still allows data to be written but addresses the SUID problem.

```js 
datv@OniOps:/mnt/Learn/Jekyll-OniOps$ cat /etc/fstab 
# /etc/fstab: static file system information.
#
# Use 'blkid' to print the universally unique identifier for a
# device; this may be used with UUID= as a more robust way to name devices
# that works even if disks are added and removed. See fstab(5).
#
# <file system> <mount point>   <type>  <options>       <dump>  <pass>
# / was on /dev/sdb2 during installation
UUID=aed9c610-d8eb-4c21-8f16-f96d9a121c76 /               ext4    errors=remount-ro 0       1
# /boot/efi was on /dev/sdb1 during installation
UUID=ACBF-08C8  /boot/efi       vfat    umask=0077      0       1
/swapfile                                 none            swap    sw              0       0
# mounth path hdd
UUID=01D6236EF70FF080 /mnt/Data ntfs defaults,x-gvfs-show 0 0
UUID=E8F80524F804F31C /mnt/Learn ntfs defaults,x-gvfs-show 0 0
```

- Look at the last 2 lines, I have concatenated `UUID` because my directory drive parameter maps 
them to the directory drive I created earlier `/mnt/...` 
besides the default parameters will show display drive parameters outside task

- Where do I get those stats, see how I did it below

> **`Lsblk -l`** check list - path /

```html
.....
loop26   7:26   0  70,4M  1 loop /snap/core22/188
loop27   7:27   0 344,6M  1 loop /snap/telegram-desktop/4024
sda      8:0    0 931,5G  0 disk 
sda1     8:1    0 731,5G  0 part /mnt/Data
sda2     8:2    0   200G  0 part /mnt/Learn
sdb      8:16   0 223,6G  0 disk 
sdb1     8:17   0   512M  0 part /boot/efi
sdb2     8:18   0 223,1G  0 part /
```


> **`sudo parted -l`** check hardisk information

```bash
Model: ATA TOSHIBA MQ04ABF1 (scsi)
Disk /dev/sda: 1000GB
Sector size (logical/physical): 512B/4096B
Partition Table: gpt
Disk Flags: 
Number  Start   End     Size   File system  Name                  Flags
 1      1049kB  785GB   785GB  ntfs         Basic data partition  msftdata
 2      785GB   1000GB  215GB  ntfs         Basic data partition  msftdata

Model: ATA KINGSTON SA400M8 (scsi)
Disk /dev/sdb: 240GB
Sector size (logical/physical): 512B/512B
Partition Table: gpt
Disk Flags: 
Number  Start   End    Size   File system  Name                  Flags
 1      1049kB  538MB  537MB  fat32        EFI System Partition  boot, esp
 2      538MB   240GB  240GB  ext4
```

> **`sudo blkid`** check uuid hardisk

```js 
.....
/dev/sdb2: UUID="aed9c610-d8eb-4c21-8f16-f96d9a121c76" TYPE="ext4" PARTUUID="9b252550-989a-4a9a-95de-dd16e7c823c1"
/dev/loop0: TYPE="squashfs"
/dev/loop1: TYPE="squashfs"
/dev/loop2: TYPE="squashfs"
/dev/loop3: TYPE="squashfs"
/dev/loop4: TYPE="squashfs"
/dev/loop5: TYPE="squashfs"
/dev/loop6: TYPE="squashfs"
/dev/loop7: TYPE="squashfs"
/dev/sda1: LABEL="Data" UUID="01D6236EF70FF080" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="85d94ef4-adef-45e9-9f22-90fee92f4b09"
/dev/sda2: LABEL="Learn" UUID="E8F80524F804F31C" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="8467a1ed-0afc-4bbe-b93c-1b3be2211884"
/dev/sdb1: UUID="ACBF-08C8" TYPE="vfat" PARTLABEL="EFI System Partition" PARTUUID="a19ef76d-380b-4725-952e-0baa2523da14"
.....
```

### Here are some closing tips:

  - You might prefer fewer partitions, or you might want to prioritize file systems that must or should be segregated. If so, the important file systems to house on separate partitions are root (/), /var, and /tmp from a security viewpoint, or root (/), /var, and /usr from an administrative viewpoint. At bare minimum, I strongly advise housing root on its own partition.

  - If you allocate partitions to non-Linux operating systems, carefully consider how you want Linux to mount them. For example, suppose that you have a small Windows partition at the beginning of the disk. If you use this partition almost exclusively when in Windows, consider having Linux mount it read-only or not at all. That way, you protect it from either accidental or intentional damage.

  - If you're running a firewall, sniffer, or other network-monitoring device, funnel logs to their own partition (preferably on another disk).

  - Exercise care when setting partition mount options. Sometimes, restrictive policies can lead to administrative headaches. For example, suppose that you decide to lump contributed binaries into /usr/local and have Linux mount /usr/local read-only. Later, this might hamper your ability to perform upgrades without first redefining the mount option.

Finally, here are some resources for more information on partitioning:
#### **`Link Course Lession`**

## - **[Mount Disk](https://youtu.be/vTMPG1XTOw4)** : Watching videos on Youtube by me.
- [Linux GUI](/blog/linux) : Linux Course Guild
- [Lession 1](/blog/linux/sudo-and-root-linux) : Sudo and Root ?
- [Lession 2](/blog/linux/dir-and-folder-linux) : Dir and folder ?
- [Lession 3](/blog/linux/putty-and-ssh-linux) : Putty and ssh ?
