## <center> <a name="cm_cdh_installation_section"/>Cloudera Manager & CDH Installation

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
 Create file hosts and put IPs of cluster hosts, one on every line. Example usage:
ansible -i a_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m shell -a 'sysctl -w vm.swappiness=1'
(ANSIBLE_DEBUG=1 ansible ...)
ansible -i all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m copy -a 'src=test dest=/etc/test'
```
* Run installation/tools/checks.sh on every host
* Check date on every host, maybe check ntpd:
```
chkconfig --list ntp
ntpq -p
ntpdate pool.ntp.org
```
* Upload repos from challenges/mine/repos to every host
   * In the shitty case of another OS or what - other repos: https://www.cloudera.com/documentation/enterprise/release-notes/topics/cm_vd.html
* yum -y update on every host

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
* Install Oracle JDK - JDBC driver: 
   * yum install -y oracle-j2sdk1.7
   * Hopefully will not need manual: https://www.cloudera.com/documentation/enterprise/5-8-x/topics/cdh_ig_jdk_installation.html#topic_29_1

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
* IMPORTANT! Install the Cloudera Management Services on the host where Cloudera Manager is! That means the number 1, or the one in the url, not the first one in this list on the page!!!

---
<div style="page-break-after: always;"></div>

## <center> Teragen, terasort, distcp

* For reference: http://blobseer.gforge.inria.fr/doku.php?id=tutorial:terabenchmark
* Do not set the number of mappers for terasort  - it has no effect. It will create as many mappers as many blocks of the input files.

```
HADOOP_USER_NAME=hdfs hadoop distcp hdfs://ec2-18-196-102-174.eu-central-1.compute.amazonaws.com:8022/tmp/olgierdg /copy
HADOOP_USER_NAME=skalolazka time hadoop jar /opt/cloudera/parcels/CDH-5.8.5-1.cdh5.8.5.p0.5/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -Dmapred.map.tasks=4 -Ddfs.block.size=33554432 100000000 /user/skalolazka/teragen
HADOOP_USER_NAME=skalolazka time hadoop jar /opt/cloudera/parcels/CDH-5.8.5-1.cdh5.8.5.p0.5/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort /user/skalolazka/teragen
```

---
<div style="page-break-after: always;"></div>

## <center> Kerberos - set up KDC

* For reference: https://web.mit.edu/kerberos/krb5-latest/doc/admin/install_kdc.html
* On the KDC host: yum install -y krb5-server krb5-libs krb5-auth-dialog
* Everywhere: yum install -y krb5-workstation krb5-libs krb5-auth-dialog openldap-clients
* Take /etc/krb5.conf from repo
* Copy /etc/krb5.conf to every machine in cluster
* Take /var/kerberos/krb5kdc/kdc.conf from repo
* Take /var/kerberos/krb5kdc/kadm5.acl from repo
* kdb5_util create -r EU-CENTRAL-1.COMPUTE.INTERNAL -s
* kadmin.local, in there "addprinc cloudera-scm/admin@EU-CENTRAL-1.COMPUTE.INTERNAL" with password "cloudera"
* Run /usr/sbin/krb5kdc
* Run /usr/sbin/kadmind
* Check they started:
```
shell% tail /var/log/krb5kdc.log
Dec 02 12:35:47 beeblebrox krb5kdc[3187](info): commencing operation
shell% tail /var/log/kadmin.log
Dec 02 12:35:52 beeblebrox kadmind[3189](info): starting
```
* Check it works: "kinit cloudera-scm/admin@EU-CENTRAL-1.COMPUTE.INTERNAL" with password "cloudera" from any machine in cluster!

---
<div style="page-break-after: always;"></div>

## <center> Kerberos in Cloudera

* For reference https://www.cloudera.com/documentation/enterprise/5-9-x/topics/cm_sg_s4_kerb_wizard.html
* Realm EU-CENTRAL-1.COMPUTE.INTERNAL
* Internal address
* Leave rc4-hmac
* Kerberos Renewable Lifetime 7 days
* Do NOT Manage krb5.conf through Cloudera Manager
* KDC Account Manager Credentials - "cloudera-scm/admin@EU-CENTRAL-1.COMPUTE.INTERNAL" with password "cloudera"
* If not enctype rc4-hmac, and "aes"-types don't work, then download jars:
   * https://s3.eu-central-1.amazonaws.com/natalia-sebc/US_export_policy.jar
   * https://s3.eu-central-1.amazonaws.com/natalia-sebc/local_policy.jar
   * ...and put them to /usr/java/jdk1.7.0_67-cloudera/jre/lib/security/ on every host!

---
<div style="page-break-after: always;"></div>

## <center> TLS (goddamit!!!)

* For reference this guide https://www.cloudera.com/documentation/enterprise/5-9-x/topics/cm_sg_tls_browser.html , but step 1 entirely changed to...
* ... to self-signed: https://www.cloudera.com/documentation/enterprise/5-9-x/topics/sg_self_signed_tls.html
* On the cloudera manager host (don't forget to change value for genkeypair):
```
mkdir -p /opt/cloudera/security/x509/ /opt/cloudera/security/jks/
cd /opt/cloudera/security/jks
chown -R cloudera-scm:cloudera-scm /opt/cloudera/security/jks
export JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
$JAVA_HOME/bin/keytool -genkeypair -alias $(hostname -f) -keyalg RSA -keysize 2048 -dname "cn=ec2-18-184-40-204.eu-central-1.compute.amazonaws.com, ou=, o=, l=, st=, c=" -keypass cloudera -keystore with_external.jks -storepass cloudera -ext san=$(hostname -f)
cp $JAVA_HOME/jre/lib/security/cacerts $JAVA_HOME/jre/lib/security/jssecacerts
$JAVA_HOME/bin/keytool -export -alias $(hostname -f) -keystore with_external.jks -rfc -file selfsigned.cer
cp selfsigned.cer /opt/cloudera/security/x509/$(hostname -f).pem
$JAVA_HOME/bin/keytool -import -alias $(hostname -f) -file /opt/cloudera/security/jks/selfsigned.cer -keystore $JAVA_HOME/jre/lib/security/jssecacerts -storepass changeit
ansible -i /home/centos/all_hosts all --user centos --private-key /tmp/Natalia.pem -c paramiko --become -m copy -a 'src=/usr/java/jdk1.7.0_67-cloudera/jre/lib/security/jssecacerts dest=/usr/java/jdk1.7.0_67-cloudera/jre/lib/security/jssecacerts'
```
* Pay attention that the storepass is "changeit", my pass is "cloudera".
* Set values in Administration - Settings
   * Use TLS Encryption for Admin Console - checked
   * Cloudera Manager TLS/SSL Server JKS Keystore File Location - /opt/cloudera/security/jks/with_external.jks
   * Cloudera Manager TLS/SSL Server JKS Keystore File Password - cloudera
* Set values in Cloudera management services settings
   * TLS/SSL Client Truststore File Location - /usr/java/jdk1.7.0_67-cloudera/jre/lib/security/jssecacerts
   * TLS/SSL Client Truststore File Password - changeit
* Restart Cloudera management services
* IMPORTANT: Don't forget to "service cloudera-scm-server restart" - maybe even before restarting the management services in the web interface
























