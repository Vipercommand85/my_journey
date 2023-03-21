# SQL Notes from Hardvard's CS50 on YouTube

## Command Syntax
### Creating a Table
```sql
CREATE TABLE flights ( id INTEGER PRIMARY KEY AUTO_INCREMENT, origin TEXT NOT NULL, destination TEXT NOT NULL, duration INTEGER NOT NULL):
```
* **CREATE TABLE** key words used to specify the creation of a table
* Lower case words are column names
* **PRIMARY KEY** specifies that this id integer is what is used to uniquely identify each row of data
* **NOT NULL** will ensure that this field is never empty

### Constraints
* **CHECK** used to ensure that the data obeys a certain condition
* **DEFAULT** adds a default value to every column
* **NOT NULL** 
* **PRIMARY KEY** 
* **UNIQUE** gaurantees that each entry is uinque
* Even more available

### Adding data to a table
```sql
INSERT INTO flights (origin,destination,duration) VALUES ("new York", "London", "415);
```
* **INSERT INTO** specifies that we are going to add data to the given table name
* csv list of columns to be changed and then a csv list of the data we wish to enter into each column
* **ORDER IS IMPORTANT FOR BOTH**

### Retreiving data from a table
```sql
SELECT * FROM flights;
```
* **SELECT** allows us to query a table for selected information
* **/*** sepcifies all data in the table


```sql
SELECT origin, destination FROM flights;
```
* allows only for specific data to be retrieved
* ideal to specify needed data to speed up the processing time of the database, if the database is large

```sql
SELECT * FROM flights WHERE id = 3;
```
* **WHERE** key word allows you to match data in a row to narrow down the returned data even further and speed up the process time

```sql
SELECT * FROM flights WHERE duration > 500 AND destination = "Paris";
```
* **AND** key word allows us to join together multiple conditions that must be met to return results
* **OR** key word allows us to join together multiple conditions where one or the other must be met to return results

#### Additional Functions
* **AVERAGE** 
* **COUNT** 
* **MAX** 
* **MIN** 
* **SUM** 
* Even more available

### Updating data in a table
```sql
UPDATE flights SET duration = 430 WHERE origin = "New York" AND destination = "London";
```
* **UPDATE** key word allows you to modify data that is already in a table
* **SET** tells the data base what data field is being modified in a given table

### Deleting Data from a Table
```sql
DELETE FROM flights WHERE destination = "Tokyo"';
```
* **DELETE** key word specifies that we want to remove data from a field in a table

### Other Clauses
* **LIMIT** of course limits the number of rows that are returned
* **ORDER BY** allows us to sort the results by a specific column
* **GROUP BY** allows us to refine the results on a specific value in a given column
* **HAVING** allows us to refine results based on this condition being true
* Even more available

## Normalizing Data
* allows you to store data in a more structured way so that tables do not become cumbersome or congested
* will utilize **many to one** & **one to many** type tables
* likely to use a **JOIN** command
```sql
SELECT first, origin, destination FROM flights JOIN passengers ON passengers.flight_id = flights.id;
```
* **ON passengers.flight_id = flights.id** will allow us to specify this selection and map each table to each other using these columns
* **passengers.flight_id** will select the flight_id column from the passengers table
* **flights.id** will select the id column from the flights table

### Other Types of JOINS
* **JOIN / INNER JOIN** is the default which will join tables based on the parameter(s) given and send back the results back where these is match for the given parameters
* **LEFT OUTER JOIN** is a way to specify an or-type filtering on the results of the join command where some things on the left will not map to the right
* **RIGHT OUTER JOIN** is a way to specify an or-type filtering on the results of the join command where some things on the right will not map to the left
* **FULL OUTER JOIN** 

## Optimization of querying data
### CREATE INDEX
```sql
CREATE INDEX name_index ON passemgers(last);
```
* much like the index in a book to find information much more quickly
* **(last)** specifies what column to create an index on





# THE COMPLETE SQL BOOTCAMP: 0 - HERO (UDEMY BY JOSE PORTILLA)

## Section 8: Creating Databases and Table
### Primary and Foreign Keys
#### Primary Key
* is a column or a group of columns used to identiy a row uniquely in a table
* are important since they allows us to easily discern what columns should be used for joining tables together

#### Foreign Key 
* is a field or group of fields in a table that uniquely identifies a row in another table
* defined in a table that references to the primary key of the other table.
* table that contains the foreign key is called a referencing table or child table
* table to which the foreign key references is called a referenced table or parent table
* a table can have multiple foreign keus depending on its relationship with other tables

### Constraints
* are rules enforced on data columns in a table
* used to prevent invalid data from being entered into the database to ensure accuracy and reliability of the data in the database
#### Column Constraints
* constrains the data in a column to adhere to certain conditions
#### Table Constraints
* applied to the entire table rather than to an individual column

### Most Common Column Constraints
#### NOT NULL
* ensures that a column cannot have a **NULL** value

#### UNIQUE
* ensures that all values in a column are different

#### Primary Key
* is set up as a constraint
* is a column or a group of columns used to identiy a row uniquely in a table

#### Foreign Key
* is set up as a constraint
* is a field or group of fields in a table that uniquely identifies a row in another table

#### CHECK
* ensures that all values in a column satisfy certain conditions

#### EXCLUSION
* ensures that if any two rows compared on the specified column or expression using the specified operator, not all of these comparisions will return TRUE

### Most Common Table Constraints
#### CHECK (condition)
* to check a condition when inserting or updating data

#### REFERENCES
* to constrain the value stored in the column that must exist in a column in another table

#### UNIQUE (column_list)
* forces the values stored in the columns listed inside the parathenses to be unique

#### PRIMARY KEY(colums_list)
* allows you to define the primary key that consists of multiple columns

```sql
CREATE TABLE account(user_id INTEGER PRIMARY KEY AUTO_INCREMENT, username VARCHAR(50) UNIQUE NOT NULL, password VARCHAR(50) NOT NULL, email VARCHAR(250) UNIQUE NOT NULL, created_on TIMESTAMP NOT NULL, last_login TIMESTAMP )
```
```sql
CREATE TABLE job(job_id INTEGER PRIMARY KEY AUTO_INCREMENT, jon_name VARCHAR(200) UNIQUE NOT NULL)
```
* this command references **foreign keys _used_id_** from the **account table** and **_job_id_** from the **job table**
```sql
CREATE TABLE account_job(user_id INTEGER REFERENCE account(user_id), job_id INTEGER REFERENCE job(job_id), hire_date TIMESTAMP)
```

### INSERT Command
* allows you to add in rows to a table
#### General Syntax
```sql
INSERT INTO table(column1, column2,) VALUES(value1, value2);
```
#### Inserting values from another table
```sql
INSERT INTO table(column1,column2) SELECT column1,column2 FROM another_table WHERE condotion;
```
* the inserted row values must match up for the table, including contraints
* SERIAL (in PGAdmin) columns do not need to be provided a value

### UPDATE Command
* allows you to modify data already in a table
#### General Syntax
```sql
UPDATE table SET column1=value1, column2=value2 WHERE condition;
```
### UPDATE (join)
* using another table's values
```sql
UPDATE TableA SET original_col = TableB.new_col FROM tableB WHERE tableA.id =TableB.id;
```
* Return affected rows
```sql
UPDATE account SET last_login = created_on RETURNING account_id,last_login;
```

### DELETE Command
* can be use to remove rows from a table
```sql
DELETE FROM table WHERE row_id=1;
```
* can delete rows based on their presence in other tables
```sql
DELETE FROM tableA USING tableB WHERE tableA.id=tableB.id;
```
* deleting all rows from a table
```sql
DELETE FROM table_name;
```
* similar to the UPDATE command, you can also add in a RETURNING call to return rows that were removed

### ALTER Command
* allows for changes to an existing table structure
  - adding,dropping, or renaming columns
  - changing a column's data type
  - set DEFAUL values for a column
  - add CHECK constraints
  - rename table
#### General Syntax
```sql
ALTER TABLE table_name action;
```
* adding columns
```sql
ALTER TABLE table_name ADD COLUMN new_col TYPE;
```
* removing columns
```sql
ALTER TABLE table_name DROP COLUMN col_name TYPE;
```
* alter contraints
```sql
ALTER TABLE table_name ALTER COLUMN col_name SET DEFAULT value;
```
```sql
ALTER TABLE table_name ALTER COLUMN col_name SET NOT NULL;
```
```sql
ALTER TABLE table_name ALTER COLUMN col_name ADD CONSTRAINT constraint_name;
```
```sql
ALTER TABLE table_name ALTER COLUMN col_name DROP DEFAULT;
```

### DROP Key Word
* allows for the complete removal of a column in a table
* in **PostgreSQL** this will also automatically remove all of its indexes and constraints involving the column
* it **WILL NOT** remove columns used in view, triggers, or stored procedures without the additional **CASCADE** clause

#### General Syntax
```sql
ALTER TABLE table_name DROP COLUMN col_name CASCADE;
```
* checking for existence to avoid errors
```sql
ALTER TABLE table_name DROP COLUMN IF EXISTS col_name;
```
* dropping multiple columns
```sql
ALTER TABLE table_name DROP COLUMN col_one, DROP COLUMN col_two;
```

### CHECK Constraint
* allows us to create more customized constraints that adhere to a certain condition
* i.e. making sure all integer values fall below a certain threshold
```sql
CREATE TABLE example(ex_id PRIMARY KEY AUTOINCREMENT, age SMALLINT CHECK (age > 21), parent_age SMALLINT CHECK (parent_age > age));
```

## Section 10: Conditional Expressions and Procedures
### CASE
* can be used to onlu execute SQL code when certain conditions are met i.e **IF/ELSE** statements from other programming languages
* 2 main ways to use a CASE statement: General CASE or CASE expression
* Both methods can lead to the same result
#### "General" CASE
```sql
SELECT column_name CASE WHEN condition1 THEN result1 WHEN condition2 THEN result2 ELSE some_other_result END FROM table_name;
```
* the results are returned as another column of output
```sql
SELECT column, CASE WHEN condition1 THEN result1 WHEN condition2 THEN result2 ELSE some_other_result END FROM table;
```
* can specify the column name of the returned results
```sql
SELECT column, CASE WHEN condition1 THEN result1 WHEN condition2 THEN result2 ELSE some_other_result AS label END FROM table;
```
* one way to look at a general CASE is that it is a large column call that allows you to filter through the returned results with specific returned values for each time the condition(s) are met

#### CASE Expression
* first evaluates an expression then compares the result with each value in the WHEN clauses sequentially
```sql
SELECT column_name 
  CASE column_name WHEN value THEN results
  END AS new_col_name
FROM table;
```
* add mutilpe cases
```sql
SELECT column_name 
  CASE column_name WHEN value THEN results
  END AS new_col_name,
  CASE column_name WHEN value THEN results
  END AS new_col2_name
FROM table;
```
* performing actions on the results from each case statement
```sql
SELECT column_name 
  SUM(CASE column_name WHEN value THEN results
  ELSE other_result
  END) AS new_col_name,
  SUM(CASE column_name WHEN value THEN results
  ELSE other_result
  END) AS new_col2_name
FROM table;
```

#### COALESCE
* a function that accepts an unlimited number of arguments
* returns the first argument that is not **NULL**
* if all arguments are **NULL**, function will return **NULL**
```sql
COALESCE(arg1,arg2,arg3,...,argN)
```
* becomes useful when querying a table that contains **NULL** values and substituting it with another value to perform arithmetic without having errors
```sql
SELECT item,(price-COALESCE(discount,0)) AS final FROM table;
```

#### CAST
* allows you to convert from one data type to another
* not every instance of a data type can be **CAST** to another data type
* i.e. **'5'** to an interger **will** work, **'five'** to an interger **will not**
```sql
SELECT CAST('5' AS INTERGER);
```



































