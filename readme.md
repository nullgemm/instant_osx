# Instant Catalina
[macOS-Simple-KVM](https://github.com/foxlet/macOS-Simple-KVM), TL;DR version.
Only for ArchLinux, does not clone the whole repo, creates a 25G system disk.

```
./instant_catalina.sh
```

## Installation
Only KVM and bootdisk creation are automated, the installation itself is not.
Here is how to proceed in order to get a working setup as quickly as possible.

After the installation program has booted you must format your system disk
 - select "Disk Utility"
 - select *the topmost* "QEMU HARDDISK MEDIA"
 - select "Erase" (they mean "Format")
 - choose "disk_catalina" as the name
 - choose "MacOS Extended (Journaled)" as the filesystem format
 - choose "GUID Partition Map" as the partition table format
 - select "Erase"
 - select "Done"
 - close the "Disk Utility" window

Now you can safely install OS X
 - select "Reinstall macOS"
 - select "Continue"
 - wait (if an error occurs just try again, it's not *that* stable)
 - accept the terms
 - select "disk_catalina" as the target system disk
 - select "Install" OS X
 - wait (if an error occurs just try again, it's not *that* stable)

## Start
```
./start_catalina.sh
```
