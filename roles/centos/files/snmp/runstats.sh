#!/bin/bash
rm -rf /var/named/chroot/var/named/data/named_stats.txt
touch /var/named/chroot/var/named/data/named_stats.txt
chmod 777 /var/named/chroot/var/named/data/named_stats.txt
rndc stats
cat /var/named/chroot/var/named/data/named_stats.txt | perl /etc/snmp/dnsstats.pl
