# C++ Journey

	##Running a C++ program from the command line

		* be sure to save file with a **.cpp** file extension so that the file will compile
		* will need to use the **g++** compiler, gnu C++ compiler
		* **-Wall** ==> turns on all warnings if any should arise
		* **-std=c++14** ==> tells the compiler to utilize the C++14 standard
		* **-o [FILE NAME]** ==> allows you to specify the name of the compiled file

```
g++ -Wall -std=c++14 main.cpp

```

		* will get a **a.out** file once the file has compiled

```
g++ -Wall -std=c++14 main.cpp -o main

```
		* will give an executable named **main**