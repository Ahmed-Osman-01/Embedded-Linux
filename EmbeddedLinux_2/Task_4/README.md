## static library for avr

Why use static libraries only avr? why never use dynamic libraries? Aren't dynamic libraries better for space and we all know avr could use that extra space. Well, the thing is, we just can't.

Applications that are linked with dynamic libraries depend on the OS, or more specifically, the dynamic linker, to load the required dynamic libraries in runtime. And in the avr an OS like this doesn't exist (I mean here a full OS that has a dynamic linker, file system,..etc) due to the limited resources of the avr. That's why we only use static libraries with avr.

I uploaded here the source code and header files needed for the **DIO** and **PORT** drivers in avr. A static library can be created by using the included **Makefile**. This is intended to be a **MCAL** static library but as for now the only drivers implemented are DIO and PORT drivers.

To link this **mcal** library to your applicatoin, just type **make** inside the directory which contains the Sources directory, Headers directory and Makefile and the **libmcal.a** static library will be created inside a new **Lib** directory, then just link this library to your application :). 