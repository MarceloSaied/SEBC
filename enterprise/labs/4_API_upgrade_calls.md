* Report the latest available version of the API
```
# curl -X GET -u skalolazka:cloudera http://ec2-18-184-40-204.eu-central-1.compute.amazonaws.com:7180/api/version
v14
```
* Report the CM version
```
# curl -X GET -u skalolazka:cloudera http://ec2-18-184-40-204.eu-central-1.compute.amazonawsm:7180/api/v1/cm/version
{
  "version" : "5.9.3",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20170627-1506",
  "gitHash" : "23506bb4e114dd460bdac64c57a672e6be631907",
  "snapshot" : false
}
```
* List all CM users
```
# curl -X GET -u skalolazka:cloudera http://ec2-18-184-40-204.eu-central-1.compute.amazonaws.cm:7180/api/v1/users
{
  "items" : [ {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ]
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ]
  }, {
    "name" : "skalolazka",
    "roles" : [ "ROLE_ADMIN" ]
  } ]
}
```
* Report the database server in use by CM
```
# curl -X GET -u skalolazka:cloudera http://ec2-18-184-40-204.eu-central-1.compute.amazonaws.cm:7180/api/v14/cm/scmDbInfo
{
  "scmDbType" : "MYSQL",
  "embeddedDbUsed" : false
}
```