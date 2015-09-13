# My first Assembly Language Program

# This program will need a data section
.data

# Create an ASCII string that is our string variable. This is our second argument to write() sys call so it should be moved to EDX

HelloWorldString:

        .ascii "Hello World\n"

# Reuires .text section

.text


# main() routine

.globl _start


_start:

        # Load all the arguments for write() system call
        # write() system call takes follwing arguments:

                # ssize_t write(int fd, const void *buf, size_t count);

        # Load Sys call number into EAX. it's 4. Refer to 'unistd.h' for sys call numbers

                movl  $4, %eax

        # Pass first argument 'file descriptor',  Fd to EBX

                movl $1, %ebx

        # Pass pointer to our string to ECX

                movl $HelloWorldString, %ecx

        # Pass string length to EDX
                 movl $12 , %edx

        # Call interrupt
                int $0x80

        # Need to exit the program using exit() sys call


                movl $1, %eax
                movl $0, %ebx
                int $0x80

