* Memory for the OS is supposed to be around 20%, so I fixed that in the formula
* What criteria affects workload factor? What does a value of 1, 2, or 4 signify?
   * Workload factor = max. number of map and reduce jobs for a node.
If 1 - 1 map and 1 reduce per node. If 2 - 2 maps, 2 reduces per node.
We have 20 vcores, so factor 2 is the same (10 machines).
