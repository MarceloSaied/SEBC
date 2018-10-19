* The hostname of your DB node
```
# hostname -f
ip-172-31-38-212.eu-central-1.compute.internal
```
* The command screenshot to display the DB version
```
# mysql --version
mysql  Ver 8.0.12 for Linux on x86_64 (MySQL Community Server - GPL)
```
* The command and output for listing databases
```
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| amon               |
| hue                |
| information_schema |
| metastore          |
| mysql              |
| nav                |
| navms              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
| sys                |
+--------------------+
13 rows in set (0.00 sec)
```
* Remark: yes, I created more databases, no one said I shouldn't=)
