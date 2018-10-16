REMARK:
1. I was running the yarntest.sh with different parameters separately, not just once. So the file I uploaded as 3_YARNtest.sh.md does not correspond to all of my tests.
2. Also the Yarn charts screenshot is confusing. Basically, there are several chart options, like the one in the "Applications" tab. And also the main charts on the main Cloudera Manager page.
Also, I was not sure when to actually screenshot, so again this does not correspond to maxing out the cluster.
3. When I ran with "Mappers 20, reducers 10, map memory 4096, heap 3276", 80% of CPU was used up, which is close to maxing out, but it's not in the screenshot.

Results:
1. Longest teragen
```
Mappers 4, reducers 4, map memory 4096, heap 3276
real    11m2.580s
user    0m8.161s
sys     0m0.584s
```
2. Longest terasort
```
Mappers 4, reducers 4, map memory 4096, heap 3276
real    7m54.310s
user    0m10.772s
sys     0m0.632s
```
3. Fastest teragen
```
Mappers 20, reducers 10, map memory 2048, heap 1638
real    0m33.067s
user    0m6.720s
sys     0m0.526s
```
4. Fastest terasort
```
Mappers 20, reducers 10, map memory 2048, heap 1638
real    0m5.233s
user    0m4.585s
sys     0m0.332s
```