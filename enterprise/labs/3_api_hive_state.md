Write curl statements for Hive:
* stop
```
# curl -X POST -u skalolazka:cloudera http://ec2-18-184-40-204.eu-central-1.compute.amazonaws.om:7180/api/v1/clusters/skalolazka/services/hive/commands/stop
{
  "id" : 740,
  "name" : "Stop",
  "startTime" : "2018-10-17T08:48:24.901Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```
* start
```
# curl -X POST -u skalolazka:cloudera http://ec2-18-184-40-204.eu-central-1.compute.amazonaws.com:7180/api/v1/clusters/skalolazka/services/hive/commands/start
{
  "id" : 735,
  "name" : "Start",
  "startTime" : "2018-10-17T08:46:56.084Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```
* check the current state
```
# curl 2>/dev/null -u skalolazka:cloudera http://ec2-18-184-40-204.eu-central-1.compute.amazonaws.com:7180/api/v1/clusters/skalolazka/services/hive | grep serviceState
  "serviceState" : "STARTING",
```