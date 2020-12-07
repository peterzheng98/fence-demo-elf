#include "pthread.h"
#include "stdio.h"

int a = 0, b = 0, R1 = 0, R2 = 0;

void* thread1(void* args){
    a = 10;
    b = 11;
    return NULL;
}

void* thread2(void* args){
    R2 = b;
    R1 = a;
    return NULL;
}

int main(){
    pthread_t pid[2];
    pthread_create(&pid[0], NULL, thread1, NULL);
    pthread_create(&pid[1], NULL, thread2, NULL);
    pthread_join(pid[0], NULL);
    pthread_join(pid[1], NULL);
}

