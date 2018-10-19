[root@ip-172-31-40-36 centos]# kinit raffles
...
[root@ip-172-31-40-36 centos]# time hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort /user/raffles/tgen512 /user/raffles/tsort512
18/10/19 09:54:43 INFO terasort.TeraSort: starting
18/10/19 09:54:45 INFO hdfs.DFSClient: Created token for raffles: HDFS_DELEGATION_TOKEN owner=raffles@SKALOLAZKA.SG, renewer=yarn, realUser=, issueDate=1539942885278, maxDate=1540547685278, sequenceNumber=2, masterKeyId=4 on 172.31.38.212:8020
18/10/19 09:54:45 INFO security.TokenCache: Got dt for hdfs://ip-172-31-38-212.eu-central-1.compute.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.38.212:8020, Ident: (token for raffles: HDFS_DELEGATION_TOKEN owner=raffles@SKALOLAZKA.SG, renewer=yarn, realUser=, issueDate=1539942885278, maxDate=1540547685278, sequenceNumber=2, masterKeyId=4)
18/10/19 09:54:45 INFO input.FileInputFormat: Total input paths to process : 6
Spent 331ms computing base-splits.
Spent 3ms computing TeraScheduler splits.
Computing input splits took 335ms
Sampling 10 splits of 156
Making 8 from 100000 sampled records
Computing parititions took 823ms
Spent 1161ms computing partitions.
18/10/19 09:54:46 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-38-212.eu-central-1.compute.internal/172.31.38.212:8032
18/10/19 09:54:46 INFO mapreduce.JobSubmitter: number of splits:156
18/10/19 09:54:46 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1539942753041_0001
18/10/19 09:54:46 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.38.212:8020, Ident: (token for raffles: HDFS_DELEGATION_TOKEN owner=raffles@SKALOLAZKA.SG, renewer=yarn, realUser=, issueDate=1539942885278, maxDate=1540547685278, sequenceNumber=2, masterKeyId=4)
18/10/19 09:54:47 INFO impl.YarnClientImpl: Submitted application application_1539942753041_0001
18/10/19 09:54:47 INFO mapreduce.Job: The url to track the job: http://ip-172-31-38-212.eu-central-1.compute.internal:8088/proxy/application_1539942753041_0001/
18/10/19 09:54:47 INFO mapreduce.Job: Running job: job_1539942753041_0001
18/10/19 09:54:56 INFO mapreduce.Job: Job job_1539942753041_0001 running in uber mode : false
18/10/19 09:54:56 INFO mapreduce.Job:  map 0% reduce 0%
18/10/19 09:55:07 INFO mapreduce.Job:  map 1% reduce 0%
18/10/19 09:55:08 INFO mapreduce.Job:  map 2% reduce 0%
18/10/19 09:55:09 INFO mapreduce.Job:  map 3% reduce 0%
18/10/19 09:55:16 INFO mapreduce.Job:  map 4% reduce 0%
18/10/19 09:55:17 INFO mapreduce.Job:  map 9% reduce 0%
18/10/19 09:55:18 INFO mapreduce.Job:  map 10% reduce 0%
18/10/19 09:55:19 INFO mapreduce.Job:  map 11% reduce 0%
18/10/19 09:55:25 INFO mapreduce.Job:  map 12% reduce 0%
18/10/19 09:55:27 INFO mapreduce.Job:  map 13% reduce 0%
18/10/19 09:55:28 INFO mapreduce.Job:  map 15% reduce 0%
18/10/19 09:55:29 INFO mapreduce.Job:  map 17% reduce 0%
18/10/19 09:55:30 INFO mapreduce.Job:  map 19% reduce 0%
18/10/19 09:55:35 INFO mapreduce.Job:  map 20% reduce 0%
18/10/19 09:55:36 INFO mapreduce.Job:  map 21% reduce 0%
18/10/19 09:55:37 INFO mapreduce.Job:  map 22% reduce 0%
18/10/19 09:55:40 INFO mapreduce.Job:  map 23% reduce 0%
18/10/19 09:55:41 INFO mapreduce.Job:  map 26% reduce 0%
18/10/19 09:55:42 INFO mapreduce.Job:  map 27% reduce 0%
18/10/19 09:55:43 INFO mapreduce.Job:  map 28% reduce 0%
18/10/19 09:55:45 INFO mapreduce.Job:  map 29% reduce 0%
18/10/19 09:55:49 INFO mapreduce.Job:  map 30% reduce 0%
18/10/19 09:55:51 INFO mapreduce.Job:  map 31% reduce 0%
18/10/19 09:55:52 INFO mapreduce.Job:  map 32% reduce 0%
18/10/19 09:55:53 INFO mapreduce.Job:  map 35% reduce 0%
18/10/19 09:55:54 INFO mapreduce.Job:  map 37% reduce 0%
18/10/19 09:55:55 INFO mapreduce.Job:  map 38% reduce 0%
18/10/19 09:56:02 INFO mapreduce.Job:  map 39% reduce 0%
18/10/19 09:56:03 INFO mapreduce.Job:  map 41% reduce 0%
18/10/19 09:56:04 INFO mapreduce.Job:  map 43% reduce 0%
18/10/19 09:56:05 INFO mapreduce.Job:  map 44% reduce 0%
18/10/19 09:56:06 INFO mapreduce.Job:  map 46% reduce 0%
18/10/19 09:56:12 INFO mapreduce.Job:  map 47% reduce 0%
18/10/19 09:56:13 INFO mapreduce.Job:  map 49% reduce 0%
18/10/19 09:56:14 INFO mapreduce.Job:  map 50% reduce 0%
18/10/19 09:56:15 INFO mapreduce.Job:  map 51% reduce 0%
18/10/19 09:56:17 INFO mapreduce.Job:  map 53% reduce 0%
18/10/19 09:56:18 INFO mapreduce.Job:  map 54% reduce 0%
18/10/19 09:56:21 INFO mapreduce.Job:  map 56% reduce 0%
18/10/19 09:56:24 INFO mapreduce.Job:  map 58% reduce 0%
18/10/19 09:56:26 INFO mapreduce.Job:  map 59% reduce 0%
18/10/19 09:56:27 INFO mapreduce.Job:  map 60% reduce 0%
18/10/19 09:56:29 INFO mapreduce.Job:  map 62% reduce 0%
18/10/19 09:56:30 INFO mapreduce.Job:  map 63% reduce 0%
18/10/19 09:56:31 INFO mapreduce.Job:  map 65% reduce 0%
18/10/19 09:56:37 INFO mapreduce.Job:  map 67% reduce 0%
18/10/19 09:56:38 INFO mapreduce.Job:  map 68% reduce 0%
18/10/19 09:56:39 INFO mapreduce.Job:  map 69% reduce 0%
18/10/19 09:56:40 INFO mapreduce.Job:  map 71% reduce 0%
18/10/19 09:56:41 INFO mapreduce.Job:  map 72% reduce 0%
18/10/19 09:56:43 INFO mapreduce.Job:  map 73% reduce 0%
18/10/19 09:56:47 INFO mapreduce.Job:  map 74% reduce 0%
18/10/19 09:56:48 INFO mapreduce.Job:  map 76% reduce 0%
18/10/19 09:56:49 INFO mapreduce.Job:  map 78% reduce 0%
18/10/19 09:56:51 INFO mapreduce.Job:  map 79% reduce 0%
18/10/19 09:56:53 INFO mapreduce.Job:  map 81% reduce 0%
18/10/19 09:56:57 INFO mapreduce.Job:  map 82% reduce 0%
18/10/19 09:56:58 INFO mapreduce.Job:  map 83% reduce 0%
18/10/19 09:56:59 INFO mapreduce.Job:  map 85% reduce 0%
18/10/19 09:57:01 INFO mapreduce.Job:  map 87% reduce 0%
18/10/19 09:57:04 INFO mapreduce.Job:  map 88% reduce 0%
18/10/19 09:57:06 INFO mapreduce.Job:  map 89% reduce 0%
18/10/19 09:57:10 INFO mapreduce.Job:  map 90% reduce 0%
18/10/19 09:57:14 INFO mapreduce.Job:  map 90% reduce 4%
18/10/19 09:57:15 INFO mapreduce.Job:  map 92% reduce 4%
18/10/19 09:57:16 INFO mapreduce.Job:  map 92% reduce 8%
18/10/19 09:57:17 INFO mapreduce.Job:  map 92% reduce 15%
18/10/19 09:57:19 INFO mapreduce.Job:  map 93% reduce 19%
18/10/19 09:57:20 INFO mapreduce.Job:  map 94% reduce 23%
18/10/19 09:57:21 INFO mapreduce.Job:  map 94% reduce 27%
18/10/19 09:57:24 INFO mapreduce.Job:  map 95% reduce 27%
18/10/19 09:57:25 INFO mapreduce.Job:  map 97% reduce 27%
18/10/19 09:57:26 INFO mapreduce.Job:  map 97% reduce 28%
18/10/19 09:57:30 INFO mapreduce.Job:  map 98% reduce 28%
18/10/19 09:57:32 INFO mapreduce.Job:  map 99% reduce 28%
18/10/19 09:57:34 INFO mapreduce.Job:  map 100% reduce 29%
18/10/19 09:57:35 INFO mapreduce.Job:  map 100% reduce 32%
18/10/19 09:57:37 INFO mapreduce.Job:  map 100% reduce 35%
18/10/19 09:57:38 INFO mapreduce.Job:  map 100% reduce 39%
18/10/19 09:57:39 INFO mapreduce.Job:  map 100% reduce 48%
18/10/19 09:57:40 INFO mapreduce.Job:  map 100% reduce 52%
18/10/19 09:57:41 INFO mapreduce.Job:  map 100% reduce 62%
18/10/19 09:57:43 INFO mapreduce.Job:  map 100% reduce 66%
18/10/19 09:57:44 INFO mapreduce.Job:  map 100% reduce 70%
18/10/19 09:57:45 INFO mapreduce.Job:  map 100% reduce 72%
18/10/19 09:57:46 INFO mapreduce.Job:  map 100% reduce 85%
18/10/19 09:57:49 INFO mapreduce.Job:  map 100% reduce 87%
18/10/19 09:57:51 INFO mapreduce.Job:  map 100% reduce 90%
18/10/19 09:57:52 INFO mapreduce.Job:  map 100% reduce 91%
18/10/19 09:57:55 INFO mapreduce.Job:  map 100% reduce 93%
18/10/19 09:57:56 INFO mapreduce.Job:  map 100% reduce 96%
18/10/19 09:57:58 INFO mapreduce.Job:  map 100% reduce 99%
18/10/19 09:58:00 INFO mapreduce.Job:  map 100% reduce 100%
18/10/19 09:58:00 INFO mapreduce.Job: Job job_1539942753041_0001 completed successfully
18/10/19 09:58:01 INFO mapreduce.Job: Counters: 49
        File System Counters
                FILE: Number of bytes read=2286565455
                FILE: Number of bytes written=4551612035
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=5120024492
                HDFS: Number of bytes written=5120000000
                HDFS: Number of read operations=492
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=16
        Job Counters
                Launched map tasks=156
                Launched reduce tasks=8
                Data-local map tasks=156
                Total time spent by all maps in occupied slots (ms)=1439041
                Total time spent by all reduces in occupied slots (ms)=380984
                Total time spent by all map tasks (ms)=1439041
                Total time spent by all reduce tasks (ms)=380984
                Total vcore-milliseconds taken by all map tasks=1439041
                Total vcore-milliseconds taken by all reduce tasks=380984
                Total megabyte-milliseconds taken by all map tasks=1473577984
                Total megabyte-milliseconds taken by all reduce tasks=390127616
        Map-Reduce Framework
                Map input records=51200000
                Map output records=51200000
                Map output bytes=5222400000
                Map output materialized bytes=2240103638
                Input split bytes=24492
                Combine input records=0
                Combine output records=0
                Reduce input groups=51200000
                Reduce shuffle bytes=2240103638
                Reduce input records=51200000
                Reduce output records=51200000
                Spilled Records=102400000
                Shuffled Maps =1248
                Failed Shuffles=0
                Merged Map outputs=1248
                GC time elapsed (ms)=20023
                CPU time spent (ms)=732790
                Physical memory (bytes) snapshot=84136300544
                Virtual memory (bytes) snapshot=257358958592
                Total committed heap usage (bytes)=97196179456
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters
                Bytes Read=5120000000
        File Output Format Counters
                Bytes Written=5120000000
18/10/19 09:58:01 INFO terasort.TeraSort: done

real    3m18.413s
user    0m7.964s
sys     0m0.478s
