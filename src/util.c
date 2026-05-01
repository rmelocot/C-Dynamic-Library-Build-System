#include <stdio.h>

// A function that prints a statement with a message(const char *msg) sent from main.c
void print_message(const char *msg)
{
    printf("Hello from the library: %s\n", msg); // print message
}
