for n in 1 2 3; do
  for t in 1 2 4 8; do
    echo $n $t
    sysbench cpu --threads=$t --cpu-max-prime=10000 run > sysbench_cpu_${t}_${n}.out
  done
done
