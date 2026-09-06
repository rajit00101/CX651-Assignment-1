#include <unistd.h>
#include <sys/syscall.h>
#include <string.h>

int main() {
    syscall(SYS_write, STDOUT_FILENO, "hello STDOUT\n", 13);

    syscall(SYS_write, STDERR_FILENO, "ERROR: this is an error\n", 24);

    return 0;
}