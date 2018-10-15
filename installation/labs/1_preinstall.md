Disclaimer:
I have created a script that resides in installation/tools/checks.sh
That script installs everything on the cleat Centos 6 machine I am using and produces the output. The commands I am listing here are all there - plus the installation.

1. Check vm.swappiness on all your nodes, set the value to 1 if necessary
```
cat /proc/sys/vm/swappiness
echo 1 > /proc/sys/vm/swappiness
```
Was 60, changed to 1.
ATTENTION: It actually changes back to 60 after reboot!!! Could that be mentioned somewhere maybe??

2. Show the mount attributes of all volumes
```
[centos@ip-172-31-35-4 ~]$ mount
/dev/xvda1 on / type ext4 (rw)
proc on /proc type proc (rw)
sysfs on /sys type sysfs (rw)
devpts on /dev/pts type devpts (rw,gid=5,mode=620)
tmpfs on /dev/shm type tmpfs (rw,rootcontext="system_u:object_r:tmpfs_t:s0")
none on /proc/sys/fs/binfmt_misc type binfmt_misc (rw)
```
3. Show the reserve space of any non-root, ext-based volumes
```
[centos@ip-172-31-35-4 ~]$ sudo df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1      7.8G  857M  6.6G  12% /
tmpfs           7.8G     0  7.8G   0% /dev/shm
```
4. Disable transparent hugepage support
```
[root@ip-172-31-35-4 centos]# echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag
[root@ip-172-31-35-4 centos]# cat /sys/kernel/mm/transparent_hugepage/defrag
always madvise [never]
[root@ip-172-31-35-4 centos]# echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled
[root@ip-172-31-35-4 centos]# cat /sys/kernel/mm/transparent_hugepage/enabled
always madvise [never]
```
5. List your network interface configuration
```
[root@ip-172-31-35-4 centos]# ifconfig
eth0      Link encap:Ethernet  HWaddr 06:53:B4:29:B6:B2
          inet addr:172.31.35.4  Bcast:172.31.47.255  Mask:255.255.240.0
          inet6 addr: fe80::453:b4ff:fe29:b6b2/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:9001  Metric:1
          RX packets:22709 errors:0 dropped:0 overruns:0 frame:0
          TX packets:4609 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:30916769 (29.4 MiB)  TX bytes:479838 (468.5 KiB)

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 b)  TX bytes:0 (0.0 b)
```
6. List forward and reverse host lookups using getent or nslookup
```
[root@ip-172-31-35-4 centos]# getent hosts localhost
::1             localhost localhost.localdomain localhost6 localhost6.localdomain6
[root@ip-172-31-35-4 centos]# getent hosts 127.0.0.1
127.0.0.1       localhost localhost.localdomain localhost4 localhost4.localdomain4
[root@ip-172-31-35-4 centos]# hostname
ip-172-31-35-4
[root@ip-172-31-35-4 centos]# getent hosts ip-172-31-35-4
172.31.35.4     ip-172-31-35-4.eu-central-1.compute.internal

[root@ip-172-31-35-4 centos]# sudo yum install bind-utils
...
[root@ip-172-31-35-4 centos]# nslookup ip-172-31-35-4
Server:         172.31.0.2
Address:        172.31.0.2#53

Non-authoritative answer:
Name:   ip-172-31-35-4.eu-central-1.compute.internal
Address: 172.31.35.4
```
7. Show the nscd service is running
```
[root@ip-172-31-35-4 centos]# sudo yum install nscd
...
[root@ip-172-31-35-4 centos]# service nscd start
Starting nscd:                                             [  OK  ]
[root@ip-172-31-35-4 centos]# service nscd status
nscd (pid 6938) is running...
[root@ip-172-31-35-4 centos]#
[root@ip-172-31-35-4 centos]# chkconfig nscd on
```
8. Show the ntpd service is running
```
[root@ip-172-31-35-4 centos]# /etc/init.d/ntpd status
ntpd (pid  6800) is running...
[root@ip-172-31-35-4 centos]# ps aux | grep ntpd
ntp       6800  0.0  0.0  30740  2120 ?        Ss   12:13   0:00 ntpd -u ntp:ntp -p /var/run/ntpd.pid -g
root      6822  0.0  0.0 103320   884 pts/0    S+   12:13   0:00 grep ntpd
```
