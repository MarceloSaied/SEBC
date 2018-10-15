See output below, but I would like to desccribe here the problems I faced.
I've wasted like 3 hours on this!!!
1. The command given for "grant privileges" is wrong at least for MySQL, "identified by" can't be included there, you create a user first and then grant.
2. There are no instructions about unique server-ids that one needs to set in /etc/my.cnf
3. It is not at all easy to understand what is FQDN in case of AWS EC2 instances, and googling led me to the wrong assumption.
4. Only "flush privileges" saved me in the end.
Those are a small fraction of the issues I had.

Output:
```
mysql> show slave status\G
*************************** 1. row ***************************
               Slave_IO_State: Waiting for master to send event
                  Master_Host: ip-172-31-35-4.eu-central-1.compute.internal
                  Master_User: uuuu
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: mysql-bin.000001
          Read_Master_Log_Pos: 318
               Relay_Log_File: ip-172-31-38-97-relay-bin.000006
                Relay_Log_Pos: 485
        Relay_Master_Log_File: mysql-bin.000001
             Slave_IO_Running: Yes
            Slave_SQL_Running: Yes
              Replicate_Do_DB:
          Replicate_Ignore_DB:
           Replicate_Do_Table:
       Replicate_Ignore_Table:
      Replicate_Wild_Do_Table:
  Replicate_Wild_Ignore_Table:
                   Last_Errno: 0
                   Last_Error:
                 Skip_Counter: 0
          Exec_Master_Log_Pos: 318
              Relay_Log_Space: 1526
              Until_Condition: None
               Until_Log_File:
                Until_Log_Pos: 0
           Master_SSL_Allowed: No
           Master_SSL_CA_File:
           Master_SSL_CA_Path:
              Master_SSL_Cert:
            Master_SSL_Cipher:
               Master_SSL_Key:
        Seconds_Behind_Master: 0
Master_SSL_Verify_Server_Cert: No
                Last_IO_Errno: 0
                Last_IO_Error:
               Last_SQL_Errno: 0
               Last_SQL_Error:
  Replicate_Ignore_Server_Ids:
             Master_Server_Id: 1
                  Master_UUID: 2100fbb7-d08a-11e8-ae91-0653b429b6b2
             Master_Info_File: mysql.slave_master_info
                    SQL_Delay: 0
          SQL_Remaining_Delay: NULL
      Slave_SQL_Running_State: Slave has read all relay log; waiting for more updates
           Master_Retry_Count: 86400
                  Master_Bind:
      Last_IO_Error_Timestamp:
     Last_SQL_Error_Timestamp:
               Master_SSL_Crl:
           Master_SSL_Crlpath:
           Retrieved_Gtid_Set:
            Executed_Gtid_Set:
                Auto_Position: 0
         Replicate_Rewrite_DB:
                 Channel_Name:
           Master_TLS_Version:
       Master_public_key_path: /var/lib/mysql/public_key.pem
        Get_master_public_key: 0
1 row in set (0.00 sec)
```