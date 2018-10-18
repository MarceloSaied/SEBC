## <center> <a name="cm_cdh_installation_section"/>Cloudera Manager & CDH Installation

---
<div style="page-break-after: always;"></div>

## <center> <a name="cm_install_milestones"/> Installation Checkpoints with Path B []()

* Careful review of hardware, OS, disk, and network/kernel settings
* Install supported Oracle JDK
* Install/configure [database server](http://www.cloudera.com/content/cloudera/en/documentation/core/latest/topics/cm_ig_installing_configuring_dbs.html?scroll=cmig_topic_5_2_unique_1#cmig_topic_5_1_unique_1)
  * Configure server to customer requirements
* Create databases, connect the CM server to them
    * Accessing MySQL requires a JDBC connector
* CM will then
  * Distribute agent software
  * Distribute CDH software
  * Deploy and activate CDH services<p>

---
<div style="page-break-after: always;"></div>

## <center> CM Install Lab - Prepare EC2 or other instances

* 5 instances
* Data center - default, Frankfurt
* AMI CentOS Linux 6 x86_64 HVM EBS ENA
* Type m4.xlarge, NOT spot
* Volume 30 Gb
* Security group - mine (all access from everywhere)
* After creation fix volume: https://github.com/chef-partners/omnibus-marketplace/issues/34
* Upload key to "/tmp/Natalia.pem", do:
```
ssh-agent bash
ssh-add /tmp/Natalia.pem
```
* If you want, install ansible (for further reference: https://docs.ansible.com/ansible/2.5/user_guide/intro_getting_started.html ):
```
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
yum -y update
yum -y install ansible
 Create file all_hosts and put IPs of cluster hosts, one on every line
ansible -i all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'sysctl -w vm.swappiness=1'
(ANSIBLE_DEBUG=1 ansible ...)
```
* Run installation/tools/checks.sh on every host
* Check date on every host, maybe check ntpd:
```
chkconfig --list ntp
ntpq -p
ntpdate pool.ntp.org
```
* Upload repos from challenges/mine/repos to every host
* yum -y update on every host

---
<div style="page-break-after: always;"></div>
## <center> Troubleshooting

* If port not accessible:
```
service iptables stop
chkconfig iptables off
```
* If cloudera Error accessing DB: (1251, 'Client does not support authentication protocol requested by server; consider upgrading MySQL client'):
   * https://github.com/mysqljs/mysql/pull/1962#issuecomment-390900841 - the most weird fucking shit ever

---
<div style="page-break-after: always;"></div>

## <center> MySQL/MariaDB Installation

* https://www.cloudera.com/documentation/enterprise/5-8-x/topics/cm_ig_mysql.html
* Everywhere: yum -y install mysql
* On first two servers: yum -y install mysql-server
* Download and copy the JDBC connector everywhere: https://dev.mysql.com/doc/connector-j/5.1/en/connector-j-binary-installation.html
* Change /etc/my.cnf:
```
datadir=/var/lib/mysql
socket=/var/lib/mysql/mysql.sock
log-error=/var/log/mysqld.log
pid-file=/var/run/mysqld/mysqld.pid
transaction_isolation = READ-COMMITTED
default-storage-engine=InnoDB
innodb_flush_method=O_DIRECT
max_connections=650
log-bin=mysql-bin
server-id=1

 do not forget unique server-id (master and replica) and log-bin
```
* service mysqld start
* Do "cat head /var/log/mysqld.log", find password for root
* Do "/usr/bin/mysql_secure_installation", change pass for root, revoke anon. users, permit remote, remove test db, refresh
* In mysql execute challenges/mine/mysql_create_db.txt in mysql (only on master)
* Replication ( http://dev.mysql.com/doc/refman/5.5/en/replication-howto.html ):
```
 on master (put replica priv. DNS there):
create user 'replica'@'private DNS' identified by 'replica';
GRANT REPLICATION SLAVE ON *.* TO 'replica'@'private DNS';
SET GLOBAL binlog_format = 'ROW';
FLUSH TABLES WITH READ LOCK;
SHOW MASTER STATUS;
UNLOCK TABLES;
 on replica (put values from "show master status"):
CHANGE MASTER TO MASTER_HOST='master private DNS', MASTER_USER='replica', MASTER_PASSWORD='replica', MASTER_LOG_FILE='from show master status', MASTER_LOG_POS=from show master status;
START SLAVE;
SHOW SLAVE STATUS\G
```
* https://www.cloudera.com/documentation/enterprise/5-8-x/topics/cm_ig_installing_configuring_dbs.html#concept_mff_xjm_hn
```
in there:
 /usr/share/cmf/schema/scm_prepare_database.sh database-type [options] database-name username password
 for me:
 /usr/share/cmf/schema/scm_prepare_database.sh mysql scm scm scm
 ```
* Install Oracle JDK - JDBC driver: https://www.cloudera.com/documentation/enterprise/5-8-x/topics/cdh_ig_jdk_installation.html#topic_29_1
   * https://www.cloudera.com/documentation/enterprise/5-8-x/topics/cm_ig_install_path_b.html#id_qpq_lnm_25

---
<div style="page-break-after: always;"></div>

## <center> CM/CDH Installation Path B install using Cloudera 5.8.3

* http://www.cloudera.com/documentation/enterprise/5-8-x/topics/cm_ig_install_path_b.html#concept_qyv_bt1_v5

Requirements:

* Do not use Single User Mode. Do not. Don't do it.
* Use only Cloudera's standard repositories
* Ignore all steps in the CM that are marked `(Optional)`
* Install the Data Hub Edition
* Install CDH using parcels
* Deploy **only** the `Coreset` of CDH services.
* Deploy three ZooKeeper instances (CM does not prompts you to do this)
