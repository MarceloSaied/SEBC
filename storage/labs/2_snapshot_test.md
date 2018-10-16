Create a precious directory in HDFS; copy the ZIP course file into it.
```
HADOOP_USER_NAME=hdfs hadoop fs -mkdir /precious
HADOOP_USER_NAME=hdfs hadoop fs -put SEBC-master.zip /precious
```
Enable snapshots for precious - did in Cloudera Manager

Create a snapshot called sebc-hdfs-test - in Cloudera Manager

Delete the directory - not supposed to
```
[root@ip-172-31-38-97 centos]# HADOOP_USER_NAME=hdfs hadoop fs -rm -r -skipTrash /precious
rm: The directory /precious cannot be deleted since /precious is snapshottable and already has snapshots
```
Delete the ZIP file
```
[root@ip-172-31-38-97 centos]# HADOOP_USER_NAME=hdfs hadoop fs -rm -r -skipTrash /precious/SEBC-master.zip
```
Restore the deleted file - in Cloudera Manager