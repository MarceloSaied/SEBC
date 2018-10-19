* The full teragen command
```
HADOOP_USER_NAME=raffles time hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Ddfs.block.size=33554432 51200000 /user/raffles/tgen512
```
* The output of the time command
```
5.33 user
0.44 system
0:52.88 elapsed
```
* The command and output of hdfs dfs -ls /user/raffles/tgen512
```
[root@ip-172-31-40-36 centos]# HADOOP_USER_NAME=raffles hdfs dfs -ls /user/raffles/tgen512
Found 7 items
-rw-r--r--   3 raffles raffles          0 2018-10-19 08:34 /user/raffles/tgen512/_SUCCESS
-rw-r--r--   3 raffles raffles  853333400 2018-10-19 08:34 /user/raffles/tgen512/part-m-00000
-rw-r--r--   3 raffles raffles  853333300 2018-10-19 08:34 /user/raffles/tgen512/part-m-00001
-rw-r--r--   3 raffles raffles  853333300 2018-10-19 08:34 /user/raffles/tgen512/part-m-00002
-rw-r--r--   3 raffles raffles  853333400 2018-10-19 08:34 /user/raffles/tgen512/part-m-00003
-rw-r--r--   3 raffles raffles  853333300 2018-10-19 08:34 /user/raffles/tgen512/part-m-00004
-rw-r--r--   3 raffles raffles  853333300 2018-10-19 08:34 /user/raffles/tgen512/part-m-00005
```
* Show how many blocks are associated with this directory
```
[root@ip-172-31-40-36 centos]# HADOOP_USER_NAME=raffles hdfs fsck /user/raffles/tgen512 -blocks
Connecting to namenode via http://ip-172-31-38-212.eu-central-1.compute.internal:50070/fsck?ugi=raffles&blocks=1&path=%2Fuser%2Fraffles%2Ftgen512
FSCK started by raffles (auth:SIMPLE) from /172.31.40.36 for path /user/raffles/tgen512 at Fri Oct 19 08:38:27 UTC 2018
.......Status: HEALTHY
 Total size:    5120000000 B
 Total dirs:    1
 Total files:   7
 Total symlinks:                0
 Total blocks (validated):      156 (avg. block size 32820512 B)
 Minimally replicated blocks:   156 (100.0 %)
 Over-replicated blocks:        0 (0.0 %)
 Under-replicated blocks:       0 (0.0 %)
 Mis-replicated blocks:         0 (0.0 %)
 Default replication factor:    3
 Average block replication:     3.0
 Corrupt blocks:                0
 Missing replicas:              0 (0.0 %)
 Number of data-nodes:          4
 Number of racks:               1
FSCK ended at Fri Oct 19 08:38:27 UTC 2018 in 6 milliseconds


The filesystem under path '/user/raffles/tgen512' is HEALTHY
```
