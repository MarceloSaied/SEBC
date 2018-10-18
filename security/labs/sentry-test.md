```
[root@ip-172-31-32-101 centos]# beeline
Beeline version 1.1.0-cdh5.8.5 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-32-101.eu-central-1.compute.internal@EU-CENTRAL-1.COMPUTE.INTERNAL
scan complete in 3ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-32-101.eu-central-1.compute.internal@EU-CENTRAL-1.COMPUTE.INTERNAL
Enter username for jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-32-101.eu-central-1.compute.internal@EU-CENTRAL-1.COMPUTE.INTERNAL: skalolazka
Enter password for jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-32-101.eu-central-1.compute.internal@EU-CENTRAL-1.COMPUTE.INTERNAL: ********
Connected to: Apache Hive (version 1.1.0-cdh5.8.5)
Driver: Hive JDBC (version 1.1.0-cdh5.8.5)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20181018074848_b595cba6-13c3-4911-a40b-07c1057256d1): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20181018074848_b595cba6-13c3-4911-a40b-07c1057256d1); Time taken: 0.714 seconds
INFO  : Executing command(queryId=hive_20181018074848_b595cba6-13c3-4911-a40b-07c1057256d1): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20181018074848_b595cba6-13c3-4911-a40b-07c1057256d1); Time taken: 0.449 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
+-----------+--+
No rows selected (2.444 seconds)
```
