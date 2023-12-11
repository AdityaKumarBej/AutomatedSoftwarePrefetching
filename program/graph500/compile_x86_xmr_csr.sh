clang -O3 xmt-csr/xmt-csr.c -Xclang -load -Xclang ../../package/plugin-llvm-sw-prefetch-pass/SwPrefetchPass.so -c -S -emit-llvm 
clang -O3 xmt-csr.ll -c 
gcc -flto -g -std=c99 -Wall -O3 -I./generator   xmt-csr.o graph500.c options.c rmat.c kronecker.c verify.c prng.c xalloc.c timer.c generator/splittable_mrg.c generator/graph_generator.c generator/make_graph.c generator/utils.c  -lm -lrt -o bin/x86/g500-xmt-csr-auto
clang -O3 xmt-csr/xmt-csr.c -c

# gcc -flto -g -std=c99 -Wall -O3 -I./generator   xmt-csr.o graph500.c options.c rmat.c kronecker.c verify.c prng.c xalloc.c timer.c generator/splittable_mrg.c generator/graph_generator.c generator/make_graph.c generator/utils.c  -lm -lrt -o bin/x86/g500-xmt-csr-no
# clang -O3 xmt-csr/xmt-csr-manual-inorder.c -DSTRIDE -c 
# gcc -O3 -flto -g -std=c99 -Wall -O3 -I./generator   xmt-csr-manual-inorder.o graph500.c options.c rmat.c kronecker.c verify.c prng.c xalloc.c timer.c generator/splittable_mrg.c generator/graph_generator.c generator/make_graph.c generator/utils.c  -lm -lrt -o bin/x86/g500-xmt-csr-man-inorder
# clang -O3 xmt-csr/xmt-csr-manual-outorder.c -DSTRIDE -c 
# gcc -O3 -flto -g -std=c99 -Wall -O3 -I./generator   xmt-csr-manual-outorder.o graph500.c options.c rmat.c kronecker.c verify.c prng.c xalloc.c timer.c generator/splittable_mrg.c generator/graph_generator.c generator/make_graph.c generator/utils.c  -lm -lrt -o bin/x86/g500-xmt-csr-man-outoforder
