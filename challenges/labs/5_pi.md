[root@ip-172-31-40-36 centos]# kinit fullerton
...
[root@ip-172-31-40-36 centos]# hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar pi 10 100
Number of Maps  = 10
Samples per Map = 100
Wrote input for Map #0
Wrote input for Map #1
Wrote input for Map #2
Wrote input for Map #3
Wrote input for Map #4
Wrote input for Map #5
Wrote input for Map #6
Wrote input for Map #7
Wrote input for Map #8
Wrote input for Map #9
Starting Job
18/10/19 09:59:28 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-38-212.eu-central-1.compute.internal/172.31.38.212:8032
18/10/19 09:59:28 INFO hdfs.DFSClient: Created token for fullerton: HDFS_DELEGATION_TOKEN owner=fullerton@SKALOLAZKA.SG, renewer=yarn, realUser=, issueDate=1539943168183, maxDate=1540547968183, sequenceNumber=3, masterKeyId=4 on 172.31.38.212:8020
18/10/19 09:59:28 INFO security.TokenCache: Got dt for hdfs://ip-172-31-38-212.eu-central-1.compute.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.38.212:8020, Ident: (token for fullerton: HDFS_DELEGATION_TOKEN owner=fullerton@SKALOLAZKA.SG, renewer=yarn, realUser=, issueDate=1539943168183, maxDate=1540547968183, sequenceNumber=3, masterKeyId=4)
18/10/19 09:59:28 INFO input.FileInputFormat: Total input paths to process : 10
18/10/19 09:59:28 INFO mapreduce.JobSubmitter: number of splits:10
18/10/19 09:59:28 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1539942753041_0002
18/10/19 09:59:28 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.38.212:8020, Ident: (token for fullerton: HDFS_DELEGATION_TOKEN owner=fullerton@SKALOLAZKA.SG, renewer=yarn, realUser=, issueDate=1539943168183, maxDate=1540547968183, sequenceNumber=3, masterKeyId=4)
18/10/19 09:59:28 INFO impl.YarnClientImpl: Submitted application application_1539942753041_0002
18/10/19 09:59:29 INFO mapreduce.Job: The url to track the job: http://ip-172-31-38-212.eu-central-1.compute.internal:8088/proxy/application_1539942753041_0002/
18/10/19 09:59:29 INFO mapreduce.Job: Running job: job_1539942753041_0002
18/10/19 09:59:38 INFO mapreduce.Job: Job job_1539942753041_0002 running in uber mode : false
18/10/19 09:59:38 INFO mapreduce.Job:  map 0% reduce 0%
18/10/19 09:59:44 INFO mapreduce.Job:  map 20% reduce 0%
18/10/19 09:59:46 INFO mapreduce.Job:  map 30% reduce 0%
18/10/19 09:59:51 INFO mapreduce.Job:  map 60% reduce 0%
18/10/19 09:59:53 INFO mapreduce.Job:  map 100% reduce 0%
18/10/19 09:59:59 INFO mapreduce.Job:  map 100% reduce 100%
18/10/19 09:59:59 INFO mapreduce.Job: Job job_1539942753041_0002 completed successfully
18/10/19 09:59:59 INFO mapreduce.Job: Counters: 49
        File System Counters
                FILE: Number of bytes read=97
                FILE: Number of bytes written=1663505
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=3060
                HDFS: Number of bytes written=215
                HDFS: Number of read operations=43
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=3
        Job Counters
                Launched map tasks=10
                Launched reduce tasks=1
                Data-local map tasks=10
                Total time spent by all maps in occupied slots (ms)=97941
                Total time spent by all reduces in occupied slots (ms)=3420
                Total time spent by all map tasks (ms)=97941
                Total time spent by all reduce tasks (ms)=3420
                Total vcore-milliseconds taken by all map tasks=97941
                Total vcore-milliseconds taken by all reduce tasks=3420
                Total megabyte-milliseconds taken by all map tasks=100291584
                Total megabyte-milliseconds taken by all reduce tasks=3502080
        Map-Reduce Framework
                Map input records=10
                Map output records=20
                Map output bytes=180
                Map output materialized bytes=340
                Input split bytes=1880
                Combine input records=0
                Combine output records=0
                Reduce input groups=2
                Reduce shuffle bytes=340
                Reduce input records=20
                Reduce output records=0
                Spilled Records=40
                Shuffled Maps =10
                Failed Shuffles=0
                Merged Map outputs=10
                GC time elapsed (ms)=420
                CPU time spent (ms)=7440
                Physical memory (bytes) snapshot=4958130176
                Virtual memory (bytes) snapshot=17295962112
                Total committed heap usage (bytes)=5851578368
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters
                Bytes Read=1180
        File Output Format Counters
                Bytes Written=97
Job Finished in 31.489 seconds
Estimated value of Pi is 3.14800000000000000000
