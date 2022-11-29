# C++ Journey

### Running a C++ program from the command line
* be sure to save file with a **.cpp** file extension so that the file will compile
* will need to use the **g++** compiler, gnu C++ compiler
* **-Wall** ==> turns on all warnings if any should arise
* **-std=c++14** ==> tells the compiler to utilize the C++14 standard
* **-o [FILE NAME]** ==> allows you to specify the name of the compiled file

```bash
g++ -Wall -std=c++14 main.cpp
```

* will get a **a.out** file once the file has compiled

```zsh
g++ -Wall -std=c++14 main.cpp -o main
```
* will give an executable named **main**

## Getting started
 * all C++ programs have only 1 **main()** that is of type **int** which will always **return 0**

 ### Building a Program
 * will need to first compile the source code which will create a **.o or .obj** file
 * **clean** (in codeLite) will remove all **.o/.obj** files
 * **build** (in codeLite) will build all C++ files needed
 * **rebuild** (in codeLite) is the combination of clean + build

 ### Compile Errors
 * **Syntax Errors** something wrong with the structure, ie. missing ";"
 * **Semantic Errors** something wrong with the meaning, ie. **int a + char b;**

 ### Compiler Warnings
 * compiler has recognized an issue with your code that could lead to a potential problem
 * only a warning because the compiler is still able to generate correct machine code

 ### Linker Errors
 * linker is having trouble linking all the object files together to create an executable
 * usually there is a library or object file that is missing

 ### Runtime Errors
 * errors that occur when the program is executing
 * some typical runtime errors
  divide by zero  
  file not found   
  out of memory
 * **Exception Handling** can help deal with runtime errors
 
 ### Logic Errors
 * Errors or bugs in your code that cause your program to run incorrectly
 * logic errors are mistakes made by the programmer
 * **TEST YOUR CODE**
 
## Structure of a C++ Program
 
 ### #include Preprocessor Directive
 * preprocessor is a program that processes your program before being compiled
 * strips all comments and replaces with a single space
 * are started with a '**#**'
 * the key word in the "**<>**" specifies a file that is recursively processes this file and replaces the line in the program with this file data
 * C++ preprocessor does not understand C++, however, the compiler does
 
 ### Comments
 * **//** starts a single line comment
 * **/ "asterics" "asterics" /** will creat a multi line comment
 
 ### The **main()** function
 * every C++ program must have **exactly 1 main()** function
 * starting point of program execution
 * **return 0** idicates successfull program execution
 * 2 version that are both valid
 ```c++
 int main()
 {
 // code
 return 0;
 }
 ```
 * program.exe
 ```c++
 int main (int argc, char *argv[])
 {
 // code
 return 0;
 }
 ```
 * **argc** specifies argument count that were passed to the program
 * **argv[]** sepcifies the stings that were passed into the program, this is a vector
 * program.exe argument1 argument2

 ### Namespaces
 * 
