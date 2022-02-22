#!/bin/bash

# Check if we are root privilage or not
sudo su echo $EUID

if [[ $EUID -ne 0 ]]; then
    sudo su
fi
# Which files are we going to back up. Please make sure to exist /home/ec2-user/data file

# Where do we backup to. Please crete this file before execute this script


# Create archive filename based on time

# Print start status message.

# Backup the files using tar.
sudo su cp -R /etc/mnt/backup/etc-"$(date+"%d %m % y : %r")"-"$(hostname)"
tar -cvzf etc-"$(date+"%d %m % y : %r")"-"$(hostname)".tar.gz /mnt/backup/etc-"$(date+"%d %m % y : %r")"-"$(hostname)" 
sudo su cp -R /boot/mnt/backup/boot-"$(date+"%d %m % y : %r")"-"$(hostname)" 
tar -cvzf root-"$(date+"%d %m % y : %r")"-"$(hostname)".tar.gz /mnt/backup/root-"$(date+"%d %m % y : %r")"-"$(hostname)"
sudo su cp -R /usr/mnt/backup/usr-"$(date+"%d %m % y : %r")"-"$(hostname)" 
tar -cvzf usr-"$(date+"%d %m % y : %r")"-"$(hostname)".tar.gz /mnt/backup/usr-"$(date+"%d %m % y : %r")"-"$(hostname)"
sudo su cp -R /data/mnt/backup/data-"$(date+"%d %m % y : %r")"-"$(hostname)" 
tar -cvzf data-"$(date+"%d %m % y : %r")"-"$(hostname)".tar.gz /mnt/backup/data-"$(date+"%d %m % y : %r")"-"$(hostname)"
# Print end status message.

# Long listing of files in $dest to check file sizes.

