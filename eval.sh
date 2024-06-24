# run module load perftools-base
# run module load perftools-lite
# use CC as the compiler

# run salloc -N 1 -C cpu -q interactive -t 01:00:00 before running this script

make -j40

logs_dir="logs"
mkdir $logs_dir

export PAT_RT_MPI_THREAD_REQUIRED=3

echo "CC with P = [1 2 4 8 16 32 64]"
for P in 1 2 4 8 16 32 64
do
    srun -N 1 --ntasks-per-node=$P ./toolkits/cc ./data/rand_cc_5.mtx.bin64 0 0 >> "$logs_dir/cc_$P.txt"
done

# echo "Betweenness Centrality"
# ./toolkits/bc ./data/rand_cc_5.mtx.bin64 0 0 0

# echo "Breadth First Search"
# ./toolkits/bfs ./data/rand_cc_5.mtx.bin64 0 0 0

# echo "PageRank"
# ./toolkits/pagerank ./data/rand_cc_5.mtx.bin64 0 0 0

# echo "Single Source Shortest Path"
# ./toolkits/sssp ./data/rand_cc_5.mtx.bin64 0 0 0
