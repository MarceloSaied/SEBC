#!/bin/sh
# Confirm the path values given below correspond to your installation

MR=/opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce
HADOOP=/opt/cloudera/parcels/CDH/bin
export HADOOP_USER_NAME=hdfs

# Mark start of the loop
echo Testing loop started on `date`

# Mapper containers
for i in 4 8 20
do
   # Reducer containers
   for j in 1 2 4 10
   do
      # Container memory
      for k in 512 1024 2048 4096
      do
         # Set mapper JVM heap
         MAP_MB=`echo "($k*0.8)/1" | bc`
         # Set reducer JVM heap
         RED_MB=`echo "($k*0.8)/1" | bc`
         echo "Mappers $i, reducers $j, map memory $k, heap $MAP_MB"
         SIZE="5GB"

         time ${HADOOP}/hadoop jar ${MR}/hadoop-examples.jar teragen \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     51200000 /results/tg-${SIZE}-${i}-${j}-${k} 1>tera/tera_${i}_${j}_${k}.out 2>tera/tera_${i}_${j}_${k}.err
         time ${HADOOP}/hadoop jar $MR/hadoop-examples.jar terasort \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.job.reduces=$j \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     -Dmapreduce.reduce.memory.mb=$k \
                     -Dmapreduce.reduce.java.opts.max.heap=$RED_MB \
                     /results/tg-${SIZE}-${i}-${j}-${k}  \
                     /results/ts-${SIZE}-${i}-${j}-${k} 1>>tera/tera_${i}_${j}_${k}.out 2>>tera/tera_${i}_${j}_${k}.err    

        $HADOOP/hadoop fs -rm -r -skipTrash /results/tg-${SIZE}-${i}-${j}-${k}
        $HADOOP/hadoop fs -rm -r -skipTrash /results/ts-${SIZE}-${i}-${j}-${k}
      done
   done
done

echo Testing loop ended on `date`
