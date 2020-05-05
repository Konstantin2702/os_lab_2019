#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main() {
    
    pid_t childPid = fork();
    if (childPid > 0) 
    {      
        sleep(60);
    }
    else {
        //Завершаем работу дочернего процесса
        exit(0);
    }
    return 0;
}