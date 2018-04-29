# Recreate Gov2 and Experiment

## Analysis the running time of Gov2 Experiment

### Original Experiment
output of time commmand:
```
11287.98user 961.91system 3:28:50 elapsed 97%CPU
```
For 10000 docs/ query, it takes 3 hours for 1 query

### With every query-independent features pre-computed
output of time command:
```
2559.26user 7118.11system 2:46:06elapsed 97%CPU
```
150 query 166 minutes
1.1 minutes per query.

### Using concurrent script to run fgtrain
[Concurrent script](https://github.com/JerryMXB/LTR_Cascade/blob/master/experiments/Gov2/data/mksvm/fgtrain_parallel.sh)


83 minutes for 150 query
33 seconds for one query


## Detail running time of fgtrain
Average 100ms to extract from one doc.

A bunch of BM25s takes 50ms.

Prox takes 16ms

load_f_tpscore takes31 ms

Other takes less than 1ms
