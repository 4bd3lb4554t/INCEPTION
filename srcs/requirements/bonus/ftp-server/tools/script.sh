#!/bin/bash


sed -i 's/^local_enable = .*/local_enable=YES/' /etc/vsftpd.conf
sed -i 's/^write_enable = .*/write_enable=YES/' /etc/vsftpd.conf
sed -i 's/^anonymous_enable = .*/anonymous_enable=NO/' /etc/vsftpd.conf
