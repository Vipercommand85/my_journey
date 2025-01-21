# Static Application Security Testing (SAST)
## Task 2: Code Review
* process of testing code for security bugs
* looks at the source code of an application to search for possible vulnerabilities using a white box approach
  * **White Box**: allows the reviewer access to the code allowing a greater guarantee of coverage of the application's functionality & lowers time required to find bugs


![image](https://github.com/user-attachments/assets/8252e6ff-f1e2-4450-993b-01bc04bdba80)



### Manual vs Automated Code Review
#### Manual Code Review
* uses a human to review the code statically allowing for a thorough analaysis & precise results
* while most applications consist of thousands of line of code, a human can become fatigued and miss vulnerable code

#### Automated Code Review
* excel at finding common vulnerabilities almost instantly
* will perform consistently despite the amount of code that needs to be reviewed, as long as there are predefined rules to match them
* needs to be configured to catch vulnerabilities

* cost is an important aspect as well, while a human maybe more costly, there will be a more though review.
* a coknination of both is the best approach to take


#### Are automated code reviews a substitute for manual reviewing?
```
nay
```

#### What type of code review will run faster?
```
Automated
```

#### What type of code review will be more thorough?
```
Manual
```



## Task 3: Manual Code Review
### Searching for Insecure Functions
| Database Engine | Fucntion |
|:---------------:|:--------:|
|MySQL | mysqli_query() mysql_query() mysqli_prepare() query() prepare() |

* a straightforward way to manually search instances of such functions is to use ```grep``` to check all of our project's files recursively
```bash
ubuntu@tryhackme:~/Desktop/simple-webapp/html$ grep -r -n 'mysqli_query('
db.php:18:	$result = mysqli_query($conn, $query);
```
  * ```-r``` tells ```grep``` to search recursively in the current directory
  * ```-n``` indicates that we want ```grep``` to indicate the line number this occurs on
  * this pattern was found on line ```18```

### Understanding the Context
```php
function db_query($conn, $query){
    $result = mysqli_query($conn, $query);
    return $result;
}
```

* ```mysli_query()``` is wrapped into the ```db_query()``` fucntion and the ```$query``` parameter is passed directly without modification
* since it is very common to nest functions in other functions, simply analysising the local context is not enough
* we will need to trace the uses of ```db_query()``` throughout the code base

### Tracing User Inputs to Potenially Vulnerable Functions
```
ubuntu@tryhackme:$ grep -rn 'db_query('
    hidden-panel.php:7:$result = db_query($conn, $sql);
    hidden-panel.php:20:$result2 = db_query($conn, $sql2);
    hidden-panel.php:23:$result3 = db_query($conn, $sql3);
    db.php:17:function db_query($conn, $query){
```

* line 7 of ```hidden-panel.php```
```
$sql = "SELECT id, firstname, lastname FROM MyGuests WHERE id=".$_GET['guest_id'];
$result = db_query($conn, $sql);
```
* here is an SQL injection, as whatever the user enters for ```".$_GET['guest_id'];``` will be concatenated to a raw SQL query without any input sanitization

```
$sql2 = "SELECT id, logtext FROM logs WHERE id='".preg_replace('/[^a-z0-9A-Z"]/', "", $_GET['log_id']). "'";
$result2 = db_query($conn, $sql2);

$sql3 = "SELECT id, name FROM asciiart WHERE id=".preg_replace("/[^0-9]/", "", $_GET['art_id'], 1);
$result3 = db_query($conn, $sql3);
```
* ```$sql2``` is passed through a filter that only allows aplanumeric or double quotes
* while double quotes seem like a possible **SQLi** vector, a threat actor would not be able to escape the single quotes in the variable ```$_GET['log_id']```
* ```sql3``` only allows numberic characters but has a third option, ```1```
* this will only replace one instance of a character that doesn't comply with the allowed characters
* this line will be vulnerable to **SQLi**


#### Local File Inclusion (LFI) attacks are made possible by the misuse of one of the following functions in PHP:
```require()	include()	require_once()	include_once()```

#### Which of the mentioned functions is used in the project?
```
include()
```

#### How many instances of the function found in question 2 exist in your project's code?
```
9
```

#### What file contains a reference to a GET or POST parameter or other manipulable inputs?
```
view.php
```

#### What line in the file found on the previous question is vulnerable to LFI?
```
22
```



## Task 4: Automated Code Review


























