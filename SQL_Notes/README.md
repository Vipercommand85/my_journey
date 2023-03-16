# SQL Notes from Hardvard's CS50 on YouTube

## Command Syntax
### Creating a Table
```sql
CREATE TABLE flights ( id INTERGER PRIMARY KEY AUTOINCREMENT, origin TEXT NOT NULL, destination TEXT NOT NULL, duration INTEGER NOT NULL):
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
CREATE INDEX name_index ON passemgers (last);
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
*  

























