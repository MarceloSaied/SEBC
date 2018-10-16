Commands:
```
HADOOP_USER_NAME=skalolazka time hadoop jar /opt/cloudera/parcels/CDH-5.8.5-1.cdh5.8.5.p0.5/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -Dmapred.map.tasks=4 -Ddfs.block.size=33554432 100000000 /user/skalolazka/teragen
```
```
HADOOP_USER_NAME=skalolazka time hadoop jar /opt/cloudera/parcels/CDH-5.8.5-1.cdh5.8.5.p0.5/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort  -Dmapred.map.tasks=4 -Ddfs.block.size=33554432 /user/skalolazka/teragen
```
"time" outputs:
```
real 3m18.71s
user 0m7.78s
system 0m0.70s
```
```
real    11m20.741s
user    0m13.076s
sys     0m0.888s
```
