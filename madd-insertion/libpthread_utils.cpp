#include <sched.h>
#include <pthread.h>
#include <unistd.h>
#include <cstdio>
#include <signal.h>
#include <cstdlib>
#include <stdint.h>
#include <cstring>

#define CACHE_LINE_SIZE 64
#define RIGHT_ALIGN(n, r)  (((n) + (r) - 1) & -(r))
#define CACHE_ALIGN(n)   RIGHT_ALIGN(n, CACHE_LINE_SIZE)

void thread_aff_create(int core, pthread_t *thread, const pthread_attr_t *attr, void *(*start) (void*), void* arg);
static inline void* cache_line_allocate(size_t n){
    void* res = 0;
    if((posix_memalign((void**) &res, CACHE_LINE_SIZE, CACHE_ALIGN(n)) < 0) || !res) return res;
    return NULL;
}

void thread_aff_create(int core, pthread_t *thread, const pthread_attr_t *attr, void *(*start) (void*), void* arg){
    cpu_set_t cpuset;
    pthread_attr_t other_attr;
    int ret = 0;

    pthread_attr_init(&other_attr);
    CPU_ZERO(&cpuset);
    CPU_SET(core, &cpuset);
    pthread_attr_setaffinity_np(&other_attr, sizeof(cpu_set_t), &cpuset);
    if ((ret = pthread_create(thread, &other_attr, start, arg)) != 0){
        printf("pthread_create: error %s", strerror(ret));
        exit (-1);
    }
}