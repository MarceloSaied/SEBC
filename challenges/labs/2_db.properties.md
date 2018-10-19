* Add the first line from your server log
```
[root@ip-172-31-40-36 centos]# head -n1 /var/log/cloudera-scm-server/cloudera-scm-server.log
2018-10-19 07:55:43,647 INFO main:com.cloudera.server.cmf.Main: ================================================================================
```
* Add the log line that contains the phrase "Started Jetty server"
```
[root@ip-172-31-40-36 centos]# grep 'Started Jetty server' /var/log/cloudera-scm-server/cloudera-scm-server.log
2018-10-19 07:57:14,299 INFO WebServerImpl:com.cloudera.server.cmf.WebServerImpl: Started Jetty server.
```
* Copy your db.properties file to challenges/labs/2_db.properties.md
```
[root@ip-172-31-40-36 centos]# cat /etc/cloudera-scm-server/db.properties
# Auto-generated by scm_prepare_database.sh on Fri Oct 19 07:55:14 UTC 2018
#
# For information describing how to configure the Cloudera Manager Server
# to connect to databases, see the "Cloudera Manager Installation Guide."
#
com.cloudera.cmf.db.type=mysql
com.cloudera.cmf.db.host=ip-172-31-38-212.eu-central-1.compute.internal
com.cloudera.cmf.db.name=scm
com.cloudera.cmf.db.user=scm
com.cloudera.cmf.db.setupType=EXTERNAL
com.cloudera.cmf.db.password=scm
```