* Command and output for hdfs dfs -ls /user
```
[root@ip-172-31-40-36 centos]# HADOOP_USER_NAME=hdfs hdfs dfs -ls /user
Found 6 items
drwxr-xr-x   - fullerton fullerton          0 2018-10-19 08:19 /user/fullerton
drwxrwxrwx   - mapred    hadoop             0 2018-10-19 08:15 /user/history
drwxrwxr-t   - hive      hive               0 2018-10-19 08:16 /user/hive
drwxrwxr-x   - hue       hue                0 2018-10-19 08:17 /user/hue
drwxrwxr-x   - oozie     oozie              0 2018-10-19 08:17 /user/oozie
drwxr-xr-x   - raffles   raffles            0 2018-10-19 08:19 /user/raffles
```
* The output from the CM API call ../api/v14/hosts
```
{
  "items" : [ {
    "hostId" : "e6c4f713-e3db-4266-8f78-8ddb026970a4",
    "ipAddress" : "172.31.38.212",
    "hostname" : "ip-172-31-38-212.eu-central-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-40-36.eu-central-1.compute.internal:7180/cmf/hostRedirect/e6c4f713-e3db-4266-8f78-8ddb026970a4",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 16722391040
  }, {
    "hostId" : "4f41e845-c564-4511-8ddf-1b305c5060d0",
    "ipAddress" : "172.31.40.36",
    "hostname" : "ip-172-31-40-36.eu-central-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-40-36.eu-central-1.compute.internal:7180/cmf/hostRedirect/4f41e845-c564-4511-8ddf-1b305c5060d0",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 16722391040
  }, {
    "hostId" : "1f8211ed-b9e0-428e-ad04-cbba5b9fb985",
    "ipAddress" : "172.31.41.184",
    "hostname" : "ip-172-31-41-184.eu-central-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-40-36.eu-central-1.compute.internal:7180/cmf/hostRedirect/1f8211ed-b9e0-428e-ad04-cbba5b9fb985",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 16722071552
  }, {
    "hostId" : "17ea99e4-d478-455f-9509-da72054675c0",
    "ipAddress" : "172.31.45.243",
    "hostname" : "ip-172-31-45-243.eu-central-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-40-36.eu-central-1.compute.internal:7180/cmf/hostRedirect/17ea99e4-d478-455f-9509-da72054675c0",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 16722391040
  }, {
    "hostId" : "7b968d23-7b59-4a81-811e-b613504ca63d",
    "ipAddress" : "172.31.45.88",
    "hostname" : "ip-172-31-45-88.eu-central-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-40-36.eu-central-1.compute.internal:7180/cmf/hostRedirect/7b968d23-7b59-4a81-811e-b613504ca63d",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 16722391040
  } ]
}
```
