- Memory for the OS is supposed to be around 20%
- What criteria affects workload factor? What does a value of 1, 2, or 4 signify?
From http://www.cloudera.com/documentation/other/reference-architecture/PDF/cloudera_ref_arch_stg_dev_accept_criteria.pdf
```
CDH workloads are often seen as a worst-case scenario for architectures where IO operations must all
traverse a shared network. A theoretical benefit of shared backend solutions is that many storage
workloads have uneven load profiles over time, and when one server is busy, others may not be.
Hadoop workloads will often cause all nodes in the cluster to simultaneously read or write data across
all disks at the exact same time.
```
Also http://blog.cloudera.com/blog/2013/08/how-to-select-the-right-hardware-for-your-new-hadoop-cluster/
