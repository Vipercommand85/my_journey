## Functions
* Basic code to create a function
* no variables outside or inside the function are accessible to the opposite

```php
<?php
function showMessage($name = 'Bob') {
	echo "Hello $name!";
}
	showMessage();

```

## Return Values
* allows variable's values to be accessible outside of the function

```php
<?php

function showMessage($name = 'Bob') {

	return "Hello $name!";

}

$message = showMessage();
echo $message;
```

## Reserved Characters
	
* &	==>	&amp;	interpreted as the beginning of an entity or character reference
* <	==>	&lt;	interpreted as the beginning of a tag
* >	==>	&gt;	interpreted as the ending of a tag
* "	==>	&quot;	interpreted as the beginning an end of an attibute's value

htmlspecialchars() = PHP function that will automatically change any characters to their reserved character format if a variable could potentially contain any of these characters
* can be used to help thwart SQL injection
* very wise to use this fuction on any data that will be supplied by a user/or that is untrusted


## Redirection

* basic syntax for redirecting to another page:

header("Location: https://example.com/index.php");


## Classes and Objects:

* classes are like a blue print that contains objects of a class, can have as many objects as you like
* can have public or private objects and methods, default is public
 a) private objects/methods are not accessible outside of the class
 b) public object/methods are accessible to any code that will utilize the class file

```php
<?php

class Item
{


}

$my_item = new Item();

```


* better practice to have the objects in a different file than the class file

object file:

```php
<?php

require 'Item.php'

$my_item = new Item();
$item2 = new Item();

var_dump($my_item, $item2);
```

Class File ( Item.php):

* file name and class name are the same so that we can auto load this file
* PSR coding standard suggests using StudlyCaps

```php
<?php 

class Item
{


}
```

* Properties are attibutes of objects of a class ie. username, email, etc
* can optional declare a value in the class file for properties
* can overwrite a declared value in the class file

```php
<?php

class Item
{
	
	public $name;
	public $description = 'This is the default';

}
```

* can set and access a property by the following syntax

```php
<?php

require 'Item.php'

$my_item = new Item();
	
$my_item->name = 'Example';

var_dump($my_item->name);
```

* can add functions as properties to a class called methods
* **Methods** are functions that an individual object can perform
* per the PSR standard methods utilize camel case naming convention


```php
<?php

class Item
{
	
	public $name;
		
	public $description = 'This is the default';

	function sayHello()
	{
		echo "Hello";

	}
}
```

* can access the object variable of a method in the same manner as a property

```php
<?php

require 'Item.php'

$my_item = new Item();

$my_item->sayHello();

```

* can use an object of a class inside of a method with a special varibale **$this**

```php
<?php

class Item
{
	
	public $name;
		
	public $description = 'This is the default';

	function sayHello()
	{
		echo "Hello";

	}

	function getName()
	{
		return $this->name;

	}
}
```

* utlizing this new method in a script by setting its name property and then calling this method to print out the name property of the newly created object
* can concatenate these properties like any other variable

```php
<?php

require "Item.php";

$my_item = new Item();
$item2 = new Item();

$my_item->name = 'An example';
$item2->name = 'Another Example';

echo $my_item->getName(), " ", $item2->getName();
```

* special method called the contructor method which is commonly used to intialize properties of a newly created method
* this method will be called when ever a new object is created

```php
<?php

class Item
{

	public $name;
	public $description;

	function __contruct($name, $description)
	{

		$this->name = $name;
		$this->description = $decription;
	}


}
```

## Getter and Setter Methods

* properties/objects are set as private
* a public method/function is created to set and get the properties
* useful to help lessen the likelyhood that a property/object(s) is inadvertantly changed
* some IDE's will auto create setter/getter functions when defining a class
* can create a read only object by removing the setter function/method
* can create a write only object by removing the getter function/method


```php
<?php

class Item
{

	private $name;

	private $desrciption;


	public function getName()
	{

		return $this->name;

	}

	public function setName($name)
	{

		return $this->name = $name;

	}

	public function getName()
	{

		return $this->description;

	}

	public function setName($description)
	{

		return $this->name = $description;

	}
}
```

* how you would call a setter/getter function/method

```php
<?php

require 'Item.php'

$my_item = new Item();

$my_item->setName("Example");
$my_item->setDescription("The example description");

echo $my_item->getName();
```

## Static Objects and Methods

```php
<?php

class Item
{
	
	public $name;
		
	public $description = 'This is the default';

	public static $count = 0;

	function __contruct($name, $description)
	{

		$this->name = $name;
		$this->description = $decription;
		static::$count++; //will incriment this object each time a new object is created

	}

	public static function showCount()
	{

		echo static::$count;

	}
		
}
```
	
* calling the static method/function in a script

```php
<?php

require 'Item.php';

$my_item = new Item('Huge', 'A big item');
$item3 = new Item('Small', 'A tiny item');

Item::showCount();

```


## Constants
* once defined cannot be changed throughout a script, would need to hard code change its value
* when using the **define()** function, these variables are global
* **CONST** key word is used to define a constant inside of a class, defualt visibility of class constants is public
* naming convention is captilization with " _ " as the delimiter between words


```php
<?php

require 'Item.php';

$my_item = new Item('Huge', 'A big item');
$item3 = new Item('Small', 'A tiny item');

Item::showCount();

define('MAXIMUM', 100);

define('COLOR', 'red');

echo MAXIMUM;
```	


* utlizing the **CONST** key word in a class

```php
<?php

class Item
{
	public CONST MAX_LENGTH = 24;

	public $name;
		
	public $description = 'This is the default';

	public static $count = 0;

	function __contruct($name, $description)
	{

		$this->name = $name;
		$this->description = $decription;
		static::$count++; //will incriment this object each time a new object is created

	}

	public static function showCount()
	{

		echo static::$count;

	}
		
}
```
	
* calling the constant in a class in a script

```php
<?php

require 'Item.php';

$my_item = new Item('Huge', 'A big item');
$item3 = new Item('Small', 'A tiny item');

Item::showCount();

define('MAXIMUM', 100);

define('COLOR', 'red');

echo MAXIMUM;

echo Item::MAX_LENGTH;
```	


## Inheritance

* the file that is being extended (Item.php) is the parent class
* the file that is extending another file (Book.php) is the child class
* child class files inherit all the properties and methods as the parent class



* Item class file
```php
<?php
class Item
class Book extends Item
{
	public $name;																public $author;

	public function get ListingDescription()
	{
		return $this->name;
	}
}
```

* script that set properties and calls a function from the extended class

```php
<?php

require 'Item.php';
require 'Book.php';

$my_item = new Item();
$my_item-> = "TV";

echo "<br>";

$book = new Book();
$book->name = 'Hamlet';
$book->author = 'Shakespeare';

echo $book->getListingDescription();
```

* Overwriting a parent method in the child class file

```php
<?php

class Book extends Item
{
	public $author;

	public function getListingDescription()
	{
		return parent::getListingDescription() . " by " . $this->author;
	}
}
```

### Protected visibility of properties and methods

* are not able to be directly accessed outside of the class file
* can be accessed by child classes


### **PDO** = PHP Date Objects: allows you to interact with a databases with object orientented code
	
* to utlize this feature creat a new dir and create a class file with the details to connect to the databas(s) from any script

```php
//File name will be Database.php in this example which is also the name of the class

<?php

/**
* Datebase
*
* A connection to the database
*
* will protect this file by adding it to the .htaccess file in the new directory by "denying all"
*/

class Database
{

/**function that will get the datebase connection that can be used in any script
*
* @return PDO object Connection to the database server
*		
*/

	public function getConn()
	{
		$db_host = "localhost";
		$db_name = "cms";
		$db_user = "cms_wwww";
		$db_pass = "password";

		/* DSN STRING FOR CALL TO DATABASE WITH A NOTATION TO USE UTF8 CHARACTER SET*/

		$dsn = 'mysql:host=' . $db_host . ';dbname=' . $db_name . ';charset=utf8';

		/* PDO Object that is returned from this method */

		return new PDO($dsn, $db_user, $db_pass);
	}
}
```
