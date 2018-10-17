* What is ubertask optimization?
 * This is a Yarn configuration property mapreduce.job.ubertask.enable, which enables or disables ubertask optimization, which runs "sufficiently small" jobs sequentially within a single JVM. "Small" is defined by the mapreduce.job.ubertask.maxmaps, mapreduce.job.ubertask.maxreduces, and mapreduce.job.ubertask.maxbytes settings.
* Where in CM is the Kerberos Security Realm value displayed?
 * Since Security is enabled in Administration, it should be in Settings in Administration in "Kerberos Security Realm".
* Which CDH service(s) host a property for enabling Kerberos authentication?
 * HDFS, Hive, Hue, Oozie, YARN, ZooKeeper, Cloudera Management Service, Impala, Kudu, Spark - maybe others, but they're not core.
* How do you upgrade the CM agents?
 * https://www.cloudera.com/documentation/enterprise/upgrade/topics/ug_cm_upgrade_agent.html
* Give the tsquery statement used to chart Hue's CPU utilization?
 * select cpu_system_rate + cpu_user_rate where category=ROLE and serviceName=$SERVICENAME
 * In Hue case $SERVICENAME = hue, in my case $CLUSTERID = 1
* Name all the roles that make up the Hive service
 * At least as of 5.8.3 that we installed:
 * HiveServer2
 * Hive Metastore Server
 * WebHCat
 * Gateway
 * One can also use a load balancer, but that's not really a role, I guess
* What steps must be completed before integrating Cloudera Manager with Kerberos?
 * When one goes to Administration - Security and clicks on "Enable Kerberos", the list appears:
- Set up a working KDC. Cloudera Manager supports MIT KDC and Active Directory.
- The KDC should be configured to have non-zero ticket lifetime and renewal lifetime. CDH will not work properly if tickets are not renewable.
- OpenLdap client libraries should be installed on the Cloudera Manager Server host if you want to use Active Directory
- Also, Kerberos client libraries should be installed on ALL hosts.
- Cloudera Manager needs an account that has permissions to create other accounts in the KDC.
 * Also, one should create all needed principals beforehand