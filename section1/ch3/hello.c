#include <unistd.h>

char hello[] = "Hello World!\n";

int main()
{
    write(1, hello, 14);
    return 0;
}