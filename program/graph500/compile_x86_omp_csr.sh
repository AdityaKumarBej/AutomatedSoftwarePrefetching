clang -O3 omp-csr/omp-csr.c -Xclang -load -Xclang ../../package/plugin-llvm-sw-prefetch-pass/SwPrefetchPass.so -c -S -emit-llvm 
clang -O3 omp-csr.ll -c 
gcc -flto -g -std=c99 -Wall -O3 -I./generator   omp-csr.o graph500.c options.c rmat.c kronecker.c verify.c prng.c xalloc.c timer.c generator/splittable_mrg.c generator/graph_generator.c generator/make_graph.c generator/utils.c  -lm -lrt -o bin/x86/g500-omp-csr-auto

#clang -O3 omp-csr/omp-csr.c -Xclang -load -Xclang ../../package/plugin-llvm-sw-prefetch-no-strides-pass/lib/SwPrefetchPass_noStrides.so -c -S -emit-llvm 
clang -O3 omp-csr.ll -c 
#gcc -flto -g -std=c99 -Wall -O3 -I./generator   omp-csr.o graph500.c options.c rmat.c kronecker.c verify.c prng.c xalloc.c timer.c generator/splittable_mrg.c generator/graph_generator.c generator/make_graph.c generator/utils.c  -lm -lrt -o bin/x86/g500-omp-csr-auto-nostride
clang -O3 omp-csr/omp-csr.c -c 
gcc -flto -g -std=c99 -Wall -O3 -I./generator   omp-csr.o graph500.c options.c rmat.c kronecker.c verify.c prng.c xalloc.c timer.c generator/splittable_mrg.c generator/graph_generator.c generator/make_graph.c generator/utils.c  -lm -lrt -o bin/x86/g500-omp-csr-no
clang -O3 omp-csr/omp-csr-inorder-manual.c -DSTRIDE -c 
gcc -O3 -flto -g -std=c99 -Wall -O3 -I./generator   omp-csr-inorder-manual.o graph500.c options.c rmat.c kronecker.c verify.c prng.c xalloc.c timer.c generator/splittable_mrg.c generator/graph_generator.c generator/make_graph.c generator/utils.c  -lm -lrt -o bin/x86/g500-omp-csr-man-inorder
clang -O3 omp-csr/omp-csr-outorder-manual.c -DSTRIDE -c 
gcc -O3 -flto -g -std=c99 -Wall -O3 -I./generator   omp-csr-outorder-manual.o graph500.c options.c rmat.c kronecker.c verify.c prng.c xalloc.c timer.c generator/splittable_mrg.c generator/graph_generator.c generator/make_graph.c generator/utils.c  -lm -lrt -o bin/x86/g500-omp-csr-man-outoforder
# clang -O3 omp-csr/omp-csrswpfio.c -c 
# gcc -O3 -flto -g -std=c99 -Wall -O3 -I./generator   omp-csrswpfio.o graph500.c options.c rmat.c kronecker.c verify.c prng.c xalloc.c timer.c generator/splittable_mrg.c generator/graph_generator.c generator/make_graph.c generator/utils.c  -lm -lrt -o bin/x86/g500-omp-csr-man-inorder-nostride
# clang -O3 omp-csr/omp-csrswpfooo.c -c 
# gcc -O3 -flto -g -std=c99 -Wall -O3 -I./generator   omp-csrswpfooo.o graph500.c options.c rmat.c kronecker.c verify.c prng.c xalloc.c timer.c generator/splittable_mrg.c generator/graph_generator.c generator/make_graph.c generator/utils.c  -lm -lrt -o bin/x86/g500-omp-csr-man-outoforder-nostride



