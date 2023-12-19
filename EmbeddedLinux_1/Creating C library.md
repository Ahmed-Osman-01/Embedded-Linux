# Creating C library

C Libraries are a collection of functions in one place that can be used by other programs which makes the life of programmers alot easier!

There are two types of C libraries, static libraries and dynamic libraries.

Static libraries are statically linked at link time when the executable is being created so that means two things, first, more memory consumption because if more than one program needs to use the same library, each of these programs statically link the library when creating the executable so the library is loaded x times the number of programs in the memory plus the executable file size is also larger. As a positive point though, the execution speed at run time is faster than the other type.

The other type is dynamic libraries. Dynamic libraries can be linked to more than one program at a time as they are loaded into memory when they're requested so at run time the dynamic library is loaded one time and it can be used by all running programs that needs to use it. Another advantage is that when the library is updated, no need to recompile and re-build all the other programs as this is the case with static libraries where each and every program depending on that library needs to be re-built. But as mentioned earlier, dynamic libraries execution speed at run time are slower than static libraries (when i mentioned the speed of the libraries i meant the execution speed of the **programs** relaying on these libraries).

##  - Creating static library

We will create an **operation** library that has the following functions:

- addition
- subtraction
- multiplication
- division
- modulus

Each of these functions will be implemented in its own file so we have a **source** directory that contains the 5 source code files.

`mkdir source`

`cd source`

`touch addition.c subtraction.c multiplication.c division.c modulus.c`

Then implement the logic for each operation inside its respective source file.

After that we need to compile all the source files to create the object files.

`gcc -c *.c 

Move the object file to separate **object** directory just to be more organized

`mkdir ../object`

`mv *.o ../object`

Create a **header** directory for our header files.

`cd ..`

`mkdir header`

`cd header`

`touch addition.h subtraction.h multiplication.h division.h modulus.h`

Add the header of each function to its respective header file then go back to the main directory.

`cd ..`

Create a **main.c** file that uses all the functions to test them then compile it to create the **main.o** object file.

`touch main.c`

`gcc -c main.c -I./header`

The **-I** flag is to add the include directory instead of having to type the path of all the headers in the **main.c** .

Now we need to create the library itself, to do that we use the **ar** command to archive all the object files and name the output file as follow: lib(name_of_library).a

`ar -rcs liboperation.a object/*.o`

finally to link the program with the created static library:

`gcc -static main.c -loperation -L. -o main_s.elf`

and there should be a **main_s.elf** file which is the statically linked executable file



## Creating dynamic library

we need to recompile the source files again but with an additional flag

`gcc -c -fPIC *.c`

then move the created object files to the object directory as done before

now for creating the dynamic library

`gcc -shared -fPIC ./object/*.o -o liboperation.so`

now there should be a **liboperation.so** file

To link our program with this dynamic library:

`gcc main.o -loperation -L. -o main_d.elf`

now we should have a dynamically linked executable file **main_d.elf**

Now we need to do one more step to tell the linker where to find this library in run time

Create an environment variable **LD_LIBRARY_PATH=${PWD}** where PWD is the path to the current directory which contains the dynamic library.



## Comparison

Using the **ldd** command with both files:

`ldd main_s.elf`

**not a dynamic execuatble**

`ldd main_d.elf`

**linux-vdso.so.1 (0x00007ffe809f3000)
	liboperation.so => /home/ahmed/ITI/Embedded_Linux/Tasks/Embedded-Linux/EmbeddedLinux_1/liboperation.so (0x00007fca638a8000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fca63600000)
	/lib64/ld-linux-x86-64.so.2 (0x00007fca638b4000)**



Using **file** command:

`file main_s.elf`

it says it is **statically linked** among other information

`file main_d.elf`

it says it is **dynamically linked** among other information

Finally, using the **objdump** binary utility

`objdump -x main_s.elf`   vs   `objdump -x main_d.elf`

In the statically linked file there is no dynamic section while there is one in the dynamically linked file

In the statically linked file in the symbol table all the functions and variables are defined where in the dynamically linked file symbol table there are some functions and variables that are undefined.

