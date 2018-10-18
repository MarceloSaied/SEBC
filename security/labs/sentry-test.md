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
(I will cut INFO messages out here: )
```
0: jdbc:hive2://localhost:10000/default> CREATE ROLE sentry_admin;
...
0: jdbc:hive2://localhost:10000/default> GRANT ALL ON SERVER server1 TO ROLE sentry_admin;
...
0: jdbc:hive2://localhost:10000/default> GRANT ROLE sentry_admin TO GROUP skalolazka;
...
0: jdbc:hive2://localhost:10000/default> SHOW TABLES;
...
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.238 seconds)
```
```
[root@ip-172-31-35-4 centos]# groupadd selector
[root@ip-172-31-35-4 centos]# ansible -i a_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'groupadd selector'
...
[root@ip-172-31-35-4 centos]# groupadd inserters
[root@ip-172-31-35-4 centos]# ansible -i a_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'groupadd inserters'
...
[root@ip-172-31-35-4 centos]# useradd -u 1100 -g selector george
[root@ip-172-31-35-4 centos]# ansible -i a_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'useradd -u 1100 -g selector george'
...
[root@ip-172-31-35-4 centos]#
[root@ip-172-31-35-4 centos]# useradd -u 1200 -g inserters ferdinand
[root@ip-172-31-35-4 centos]# ansible -i a_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'useradd -u 1200 -g inserters ferdinand'
...
[root@ip-172-31-35-4 centos]# kadmin.local
Authenticating as principal skalolazka/admin@EU-CENTRAL-1.COMPUTE.INTERNAL with password.
kadmin.local:  add_principal george
WARNING: no policy specified for george@EU-CENTRAL-1.COMPUTE.INTERNAL; defaulting to no policy
Enter password for principal "george@EU-CENTRAL-1.COMPUTE.INTERNAL":
Re-enter password for principal "george@EU-CENTRAL-1.COMPUTE.INTERNAL":
Principal "george@EU-CENTRAL-1.COMPUTE.INTERNAL" created.
kadmin.local:  add_principal ferdinand
WARNING: no policy specified for ferdinand@EU-CENTRAL-1.COMPUTE.INTERNAL; defaulting to no policy
Enter password for principal "ferdinand@EU-CENTRAL-1.COMPUTE.INTERNAL":
Re-enter password for principal "ferdinand@EU-CENTRAL-1.COMPUTE.INTERNAL":
Principal "ferdinand@EU-CENTRAL-1.COMPUTE.INTERNAL" created.

...

[root@ip-172-31-32-101 centos]# kinit george
Password for george@EU-CENTRAL-1.COMPUTE.INTERNAL:
[root@ip-172-31-32-101 centos]# beeline
Beeline version 1.1.0-cdh5.8.5 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-32-101.eu-central-1.compute.internal@EU-CENTRAL-1.COMPUTE.INTERNAL
scan complete in 3ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-32-101.eu-central-1.compute.internal@EU-CENTRAL-1.COMPUTE.INTERNAL
Enter username for jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-32-101.eu-central-1.compute.internal@EU-CENTRAL-1.COMPUTE.INTERNAL: george
Enter password for jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-32-101.eu-central-1.compute.internal@EU-CENTRAL-1.COMPUTE.INTERNAL: ********
Connected to: Apache Hive (version 1.1.0-cdh5.8.5)
Driver: Hive JDBC (version 1.1.0-cdh5.8.5)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20181018075656_5b8bb144-a69d-4f66-b41b-6293edbef75d): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20181018075656_5b8bb144-a69d-4f66-b41b-6293edbef75d); Time taken: 0.062 seconds
INFO  : Executing command(queryId=hive_20181018075656_5b8bb144-a69d-4f66-b41b-6293edbef75d): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20181018075656_5b8bb144-a69d-4f66-b41b-6293edbef75d); Time taken: 0.163 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.312 seconds)
0: jdbc:hive2://localhost:10000/default> Closing: 0: jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-32-101.eu-central-1.compute.internal@EU-CENTRAL-1.COMPUTE.INTERNAL
[root@ip-172-31-32-101 centos]# kinit ferdinand
Password for ferdinand@EU-CENTRAL-1.COMPUTE.INTERNAL:
[root@ip-172-31-32-101 centos]# beeline
Beeline version 1.1.0-cdh5.8.5 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-32-101.eu-central-1.compute.internal@EU-CENTRAL-1.COMPUTE.INTERNAL
scan complete in 2ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-32-101.eu-central-1.compute.internal@EU-CENTRAL-1.COMPUTE.INTERNAL
Enter username for jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-32-101.eu-central-1.compute.internal@EU-CENTRAL-1.COMPUTE.INTERNAL: ferdinand
Enter password for jdbc:hive2://localhost:10000/default;principal=hive/ip-172-31-32-101.eu-central-1.compute.internal@EU-CENTRAL-1.COMPUTE.INTERNAL: ********
Connected to: Apache Hive (version 1.1.0-cdh5.8.5)
Driver: Hive JDBC (version 1.1.0-cdh5.8.5)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20181018075757_7ed2ae74-5945-49e4-aa05-568862c9a069): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20181018075757_7ed2ae74-5945-49e4-aa05-568862c9a069); Time taken: 0.075 seconds
INFO  : Executing command(queryId=hive_20181018075757_7ed2ae74-5945-49e4-aa05-568862c9a069): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20181018075757_7ed2ae74-5945-49e4-aa05-568862c9a069); Time taken: 0.184 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| sample_07  |
+------------+--+
1 row selected (0.347 seconds)
0: jdbc:hive2://localhost:10000/default>

```
