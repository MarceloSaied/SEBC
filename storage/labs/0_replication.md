```
[root@ip-172-31-35-4 centos]# HADOOP_USER_NAME=hdfs hdfs fsck /skalolazka -files -blocks
Connecting to namenode via http://ip-172-31-32-101.eu-central-1.compute.internal:50070
FSCK started by hdfs (auth:SIMPLE) from /172.31.35.4 for path /skalolazka at Tue Oct 16 08:58:58 UTC 2018
/skalolazka <dir>
/skalolazka/_SUCCESS 0 bytes, 0 block(s):  OK

/skalolazka/part-m-00000 250000 bytes, 1 block(s):  OK
0. BP-1392931215-172.31.32.101-1539641763199:blk_1073744083_3259 len=250000 Live_repl=3

/skalolazka/part-m-00001 250000 bytes, 1 block(s):  OK
0. BP-1392931215-172.31.32.101-1539641763199:blk_1073744081_3257 len=250000 Live_repl=3

Status: HEALTHY
 Total size:    500000 B
 Total dirs:    1
 Total files:   3
 Total symlinks:                0
 Total blocks (validated):      2 (avg. block size 250000 B)
 Minimally replicated blocks:   2 (100.0 %)
 Over-replicated blocks:        0 (0.0 %)
 Under-replicated blocks:       0 (0.0 %)
 Mis-replicated blocks:         0 (0.0 %)
 Default replication factor:    3
 Average block replication:     3.0
 Corrupt blocks:                0
 Missing replicas:              0 (0.0 %)
 Number of data-nodes:          4
 Number of racks:               1
FSCK ended at Tue Oct 16 08:58:58 UTC 2018 in 2 milliseconds


The filesystem under path '/skalolazka' is HEALTHY
```
```
[root@ip-172-31-35-4 centos]# HADOOP_USER_NAME=hdfs hdfs fsck /olgierdg -files -blocks
Connecting to namenode via http://ip-172-31-32-101.eu-central-1.compute.internal:50070
FSCK started by hdfs (auth:SIMPLE) from /172.31.35.4 for path /olgierdg at Tue Oct 16 08:59:15 UTC 2018
/olgierdg <dir>
/olgierdg/olgierdg <dir>
/olgierdg/olgierdg/_SUCCESS 0 bytes, 0 block(s):  OK

/olgierdg/olgierdg/part-m-00000 256000000 bytes, 2 block(s):  OK
0. BP-1392931215-172.31.32.101-1539641763199:blk_1073744102_3278 len=134217728 Live_repl=3
1. BP-1392931215-172.31.32.101-1539641763199:blk_1073744104_3280 len=121782272 Live_repl=3

/olgierdg/olgierdg/part-m-00001 256000000 bytes, 2 block(s):  OK
0. BP-1392931215-172.31.32.101-1539641763199:blk_1073744103_3279 len=134217728 Live_repl=3
1. BP-1392931215-172.31.32.101-1539641763199:blk_1073744105_3281 len=121782272 Live_repl=3

Status: HEALTHY
 Total size:    512000000 B
 Total dirs:    2
 Total files:   3
 Total symlinks:                0
 Total blocks (validated):      4 (avg. block size 128000000 B)
 Minimally replicated blocks:   4 (100.0 %)
 Over-replicated blocks:        0 (0.0 %)
 Under-replicated blocks:       0 (0.0 %)
 Mis-replicated blocks:         0 (0.0 %)
 Default replication factor:    3
 Average block replication:     3.0
 Corrupt blocks:                0
 Missing replicas:              0 (0.0 %)
 Number of data-nodes:          4
 Number of racks:               1
FSCK ended at Tue Oct 16 08:59:15 UTC 2018 in 2 milliseconds


The filesystem under path '/olgierdg' is HEALTHY
```