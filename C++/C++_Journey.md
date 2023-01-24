# C++ Journey

### Running a C++ program from the command line
* be sure to save file with a **.cpp** file extension so that the file will compile
* will need to use the **g++** compiler, gnu C++ compiler
* **-Wall** // turns on all warnings if any should arise
* **-std=c++14** // tells the compiler to utilize the C++14 standard
* **-o [FILE NAME]** // allows you to specify the name of the compiled file

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
 is a mechanism that allows you to utilize a specific library/project without conflicting operator names from one library/project to another
 syntax for envoking an entire namespace, this must be placed at the beginning of the program before the main() call:
 **using namespace [NAME OF NAME SPACE]**
```c++
using namespace std;
```
* alternative syntax that be used when calling a specific command:
**[NAME OF NAMESPACE]::[COMMAND]**
```c++
std::cin >> variable1;
```
* third option to envoke only needed commands from a namespace which must also be placed before the main() call:
**using [NAME OF NAMESPACE]::[COMMAND]**
```c++
using std::cin;
using std::cout;
using std::endl;
```
### Basic Input and Output (I/O) with cin and cout 
* must declare **#include \<iostream\>** at the beginning of a program to utilize **cout, cin, cerr, clog**
    * **cout** standard output stream that will send its output to the console by default
    * **cin** standard input stream that reads input from the keyboard by default
    * **\<\<** insertion operator that is used with **cout**
    ```c++
    cout << data;
    ```
    * **\>\>** extraction operator that is used with **cin**
    ```c++
    cin >> number;
    ```
    * insertion operators do not automatically add line breaks, they will need to be explicitly written in the code
    ```c++
    cout << "data 1 is" << data1 << endl; // end line command from std library
    cout << "data 1 is" << data1 << "\n"; // "\n" is a new line character escape sequence
    ```
    * can chain extraction and insertion operators
    ```c++
    cin >> num1 >> num2;
    cout << name1 >> name2;
    ```
    * cin extraction uses white space as the terminating point for reading in data, ie. spaces/tabs/new lines and will only be processed once the enter key is entered



# Variables and Constants

### What is a variable?
* **variable:** is an abstraction for a memory location/ allows us to store information using meaningful names
* must be declared before they are used
* can change value through a program, however, will always retain the same memory location
* must have a **type (interger,real number,string,etc)** and a **value( 10, 3.14, Mike)**
```c++
int age;
ag = 21;
```
#### Declaring Variables
* **VariableType VariableName;
```c++
string name;
int age; // this is a declaration statement
age = 21;

Account franks_account; // C++ allows you to declare non C++ builtin types as our own tpyes
Person james;
```

#### Naming Variable Rules
1. Can contain letters, numbers, and underscores

2. Must begin with a letter or underscore **(_)**
 * cannot begin with a number
3. Cannot use C++ **reserved keywords**

4. Cannot redeclare a name in the same scope
 * C++ is case sensitive

#### Naming Variable - Style and Best Practices
1. Be consistent with your naming conventions
 * **myVariableName** vs. **my_variable_name**
 * avoid beginning name with **(_)**

2. Use meaningful names
 * not too long or short

3. Never use variables before initalizing them

4. Declare variables close to when you need them in your code.

#### Initialzing Variables
```c++
int agel //uninitialized
int age = 21; // C-like initialization
int age (21); // Constructor initialization
int age {21}; // C++11 list initialization syntax, will catch compile errors and fix
```

#### Global Variables
* are declared outside of any function
    * any variable in a function is considered a **local variable**
```c++
#include <iostream>
using namespace std;

int age {20}; //Global variable

int main(){

 string name {Mike}; //Local Variable

 cout << age << endl;
 return 0;
}
```
* are automatically initialized to 0
* are available by any part of the program, which means at any point, they could be changed

#### C++ Primitive Data Types
Fundamental data types implented directly by the C++ language

* **Character** types
 **char**     can store exactly 1 byte with a minimum of 8 bits
 
 **char16_t** at least 16 bits
 
 **char32_t** at least 32 bits
 
 **wchar_t**  can represent the largest available character set
 
* **Interger** types
      * signed and unsigned

* **Floating-point** types
 **float**    can store up to 7 decimal digits, positive or negative
 
 **double** can store up to 15 decimal digits, positive or negative 
 
 **long double** can store up to 19 decimal digits, positive or negative
      * can use **backticks** anywhere in a program, especially useful with large numbers ie. 7`600`000`000

* **Boolean** type

* Size and precision is often complier-dependent
 * **#include \<climits\>**

#### What is the Size of a Variable(sizeof)
* **sizeof()** returns the number bytes of a type or variable
```c++
sizeof(int);
sizeof(short);
sizeof(long);
sizeof(some_variable);
```
* when using **_sizeof()_** function on a variable you will get the size of the variable and not the actual values stored in the variable
* gets its information from **\<climit\>** and **\<cfloat\>**
   * these files contain size and precision information about your implementation of C++
      
      INT_MAX
      
      INT_MIN
      
      LONG_MAX
      
      LONG_MIN
      
      ...


#### What is a Constant?

* are very much like variables, however, their value **cannot change once declared**

* allows you to elimiate hard coding the same value in multiple locations

**Types of Constants:**
 * **Literal Constants**
 ```c++
 x = 12; // can add a "U/u" to specify signed or unsigned / "L/l" for long
 y = 1.56; // can add a "F/f" to specify double
 name = "Frank";
 ```
 * escape characters are examples of literal constants
 * "\n, \t, \r, etc."
 
 * **Declared Constants**
 ```c++
 const double pi {3.1415926};
 const int monthe_in_year {12};
 ```
 * **Constant Expressions**
 ```c++
 constexpr keyword
 ```
 * **Enumerated Constants**
 ```c++
 enum keyword
 ```
 * **Defined Constants**
 * not recommended in modern C++ code
 ```c++
 #define
 #define pi 3.1415926
 ```

# Arrays and Vectors

#### What is an Array?
* arrays are compound data type or structure that collects elements
* all elements must be of the same type, ie _int_, _float_, _char_, etc.
* each element can be accessed directly

##### Characteristics:
* fixed in size
* stored contiguously in memory
* first element is at index **0**
* last element is at index **size-1**
* **C++ will not check if you are out of bounds**
* Always initialize arrays
* Iteration is often used to process

#### Declaring and Initializing Arrays
* Element_Type array_name **[ constant number of elements]** **{init list}\**;
```c++
int test_scores [5] {0}; // {0} initializes the array elements to 0

int high_score_per_level [10] {3,5}; // initialized fist 2 indexes and the remaining to 0

const int days_in_year {365}; 
double hi_temp [days_in_year] {0};

int another_array [] {1,2,3,4,5}; // size automatically calculated
```

#### Accessing and Modifying Array Elements
* array_name **[element_index]**
```c++
int test_scores [5] {100,95,99,97,88};

cout << "First score at index 0: " << test_scroes[0] << endl;
cout << "Second score at index 1: " << test_scroes[1] << endl;
cout << "Third score at index 2: " << test_scroes[2] << endl;
cout << "Fourth score at index 3: " << test_scroes[3] << endl;
cout << "Fifth score at index 4: " << test_scroes[4] << endl;
```
* you can read in values for specific array indexes
```c++
int test_scores [5] {0};

cin >> test_scores[0];
cin >> test_scores[1];
cin >> test_scores[2];
cin >> test_scores[3];
cin >> test_scores[4];

test_scores[0] = 99; // assignment statement for a specific index
```

**Hows does it work?**
* the name of the array represents the location of the first element in the array (index 0)
* the \[index\] represents the offset from the beginning of the array
* C++ simply performs a calculatio to find the correct element
```c++
cout << test_scores endl; // this will print out the address location of the array
```

#### Multidimensional Arrays
* no real limit on the amount of dimesions you can have in an array
* Delcaring multi-dimensional arrays:
**_Element_Type array_name \[dim1_size] \[dim2_size]_**
```c++
int movie_rating [3] [4];
```
```c++
const int rows{3};
const int cols {4};
int movie_rating [rows] [cols];

cin >> movie_rating [1] [2];
cout << movie_rating [3] [1];
```
* Initializing multi-dimensional arrays
```c++
int movie_rating [3] [4]
{
  { 0, 4, 3, 5},
  { 2, 3, 3, 5},
  { 1, 4, 4, 5}
};
```

#### Declaring and Initializing Vectors
* container in the C++ Standard Template Library
* an array that can dynamically grow and shrink at execution time
* similar semantics and syntax as arrays
* very efficient
* can provide bounds checking
* can use functions like sort, reverse, find, and more

**Declaring Vectors:**
```c++
#include <vector>
using namespace std;

vector <char> vowels (5); // (5): tells the compiler you want 5 characters to be stored in this vector
vector <int> test_scores (10); // in both of these examples, all indexes are automatically initialized to zero, does not need to be manually done

vector <char> vowels {'a', 'e', 'i', 'o', 'u' }; // with vectors " ' " are used instead of double quotes with chars
vector <int> test_scores { 100, 98, 89, 85, 93};
vector <double> hi_temps (365, 80.0); // the 365 declares the initial size in this vector
                                      // the 80.0 initializes every double to this value
```
#### Accessing and Modifying Vector Elements
* can use array syntax **_vector_name \[element_index]_** however, there will be no bounds checking
* better to use vector syntax **_vector_name.at(index_element)_**
* **_at()_**: is a method that will give you the element at the given position in ()
```c++
vector <int> test_scores { 100, 98, 89, 85, 93};

cout << "First score at index 0: " << test_scores.at(0) << endl; // will output 100
cout << "Second score at index 1: " << test_scores.at(1) << endl; // will output 98
```
* **_push_back(element)_**: is a method that allows you to add an element to the end of the list of the same type to a vector
```c++
vector <int> test_scores { 100, 98, 89};

test_scores.push_back(80);  // 100, 98, 89, 80
test_scores.push_back(90);  // 100, 98, 89, 80, 90
```
* if you do use a method that requests an item that is not in bounds of the vector, an exception and error message is generated
```c++
cout << "\nEnter a test score to add to the vector: ";

int score_to_add {0};
cin >> score_to_add;

test_scores.push_back(score_to_add);    // this will add the newly entered test score from the command line to the test_scores vector
cout << "\nThere are now " << test_scores.sizeof() << " score in the vector" << endl;   // output: There are now 4 scores in the vector
```
* **Example of a 2D-vector**
```c++
vector <vector<int>> movie_ratings
{
    {1,2,3,4},
    {2,4,2,9},
    {3,5,2,8}
};

cout << "\nHere are the movie ratings for reviewer #1 using vector syntax :" << endl;
cout << movie_ratings.at(0).at(0) << endl;
cout << movie_ratings.at(0).at(1) << endl;
cout << movie_ratings.at(0).at(2) << endl;
cout << movie_ratings.at(0).at(3) << endl;

// using the .at().at() allows you to grab each item in a specific row and column

```

## Statments and Operators 

#### Expressions and Statments 
* **Expressions:**"a sequence of operators and operands that specifies a computation" 
* the most basic building block of a program 
* computes a value from a number of operands
**Expression Examples:**
```c++
34 // literal
favorite_number // variable 
1.5 + 2.8 // addition
2 * 5 // multiplcation
a > b // relational
a = b // assignment 
```
* **Statments:** a complete line of code that performs some action usually terminated with a semi-colon
* usually contains expressions:
    * null, compund, selection, iteration, declaration, jumo, try blocks, and others
**Statement Examples:**
```c++
int x;  // declaration 
favorite_number = 12; // assignment
x = 2 * 5;  // assignment
1.5 = 2.8; // expression 
if (a > b) cout << " a is greater than b";  // if statement
;
```

#### Using Operators 
* C++ has a rich set of operators 
    * **unary**: act on one operand such as " - "
    * **binary**: most operators are of this type acting on 2 operands
    * **ternary**: 




## Section 9: Controlling Program Flow

* **_if_statement_** executes the followed statement if the condition is true, otherwise the statement is skipped if false
 * that statement is typically indented underneather the conditional expression of the **_if_statement_**
 * this is for human readability
```c++
if (num > 10)
 ++num:
 ```
* this loop will loop until num becomes greater than 10, ei. when **num = 11**

* **_block statement_** are enclosed in **\{}** and include multiple lines of statements
```c++
if(num > 10) {
 ++num;
 cout << "this too";
 }
```
* blocks can constain variable declaration that are only visible within the block - **_local scope_**

**_if else statement_**
```c++
if(num > 0)
 cout << num << " is greater than zero";
else
 cout << num << " is less than zero.";
```
* if the experssion is **true** then execute **statement1**
* if the expression is **false** then execute **statement2**

**_if else statment_ with block statements**
```c++
if(num > 10){
 ++num;
 cout << "increment";
} else {
 num = 10;
 cout << "Reset";
}
```

**_if-else-if_ contruct**
```c++
if(score > 90)
 cout << "A";
else if (score > 80)
 cout << "B";
if(score > 70)
 cout << "C";
else if (score > 60)
 cout << "D";
else        // all others must be F
 cout << "F";

cout << "Done";
```
#### Nested _if_ Statement
* allows testing of multiple conditions
* **else** belongs to the closest **if**
* indentation becomes important for clarity of code







