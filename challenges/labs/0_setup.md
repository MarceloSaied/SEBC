* List the cloud provider you are using (AWS, GCE, Azure, other)
   * AWS
* List the Linux release you have chosen
```
# cat /etc/*release
CentOS release 6.10 (Final)
...
```
* Show that the disk space on each node is at least 30 GB
```
# ansible -i all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'lsblk'
172.31.45.88 | SUCCESS | rc=0 >>
NAME    MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
xvda    202:0    0  30G  0 disk
└─xvda1 202:1    0  30G  0 part /

172.31.41.184 | SUCCESS | rc=0 >>
NAME    MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
xvda    202:0    0  30G  0 disk
└─xvda1 202:1    0  30G  0 part /

172.31.38.212 | SUCCESS | rc=0 >>
NAME    MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
xvda    202:0    0  30G  0 disk
└─xvda1 202:1    0  30G  0 part /

172.31.40.36 | SUCCESS | rc=0 >>
NAME    MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
xvda    202:0    0  30G  0 disk
└─xvda1 202:1    0  30G  0 part /

172.31.45.243 | SUCCESS | rc=0 >>
NAME    MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
xvda    202:0    0  30G  0 disk
└─xvda1 202:1    0  30G  0 part /
```
* List the command and output for yum repolist enabled
```
# yum repolist enabled
Loaded plugins: fastestmirror, presto
Loading mirror speeds from cached hostfile
epel/metalink                                                                                                               |  18 kB     00:00
 * base: mirror.fra10.de.leaseweb.net
 * epel: d2lzkl7pfhq30w.cloudfront.net
 * extras: ftp.rz.uni-frankfurt.de
 * updates: mirror.fra10.de.leaseweb.net
base                                                                                                                        | 3.7 kB     00:00
extras                                                                                                                      | 3.4 kB     00:00
updates                                                                                                                     | 3.4 kB     00:00
repo id                                            repo name                                                                                 status
base                                               CentOS-6 - Base                                                                            6,713
epel                                               Extra Packages for Enterprise Linux 6 - x86_64                                            12,515
extras                                             CentOS-6 - Extras                                                                             33
updates                                            CentOS-6 - Updates                                                                           205
repolist: 19,466
```
