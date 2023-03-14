# SQL Notes from Hardvard's CS50 on YouTube

## Command Syntax
```sql
CREATE TABLE flights ( id INTERGER PRIMARY KEY AUTOINCREMENT, origin TEXT NOT NULL, destination TEXT NOT NULL, duration INTEGER NOT NULL):
```
* **CREATE TABLE** key words used to specify the creation of a table
* Lower case words are column names
* **PRIMARY KEY** specifies that this id integer is what is used to uniquely identify each row of data
* **NOT NULL** will ensure that this field is never empty
