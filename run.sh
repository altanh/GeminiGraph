make -j 40

./toolkits/cc ./data/rand_cc_5.mtx.bin64 0 0
./toolkits/bc ./data/rand_cc_5.mtx.bin64 0 0 0
./toolkits/bfs ./data/rand_cc_5.mtx.bin64 0 0 0
./toolkits/pagerank ./data/rand_cc_5.mtx.bin64 0 0 0
./toolkits/sssp ./data/rand_cc_5.mtx.bin64 0 0 0