# SQL

## Clauses

| Name                | Function                                                                                    | Example                                        |
| ------------------- | ------------------------------------------------------------------------------------------- | ---------------------------------------------- |
| SELECT              | tells the database which fields(columns) you would like to look at                          | `SELECT FirstName`                             |
| SELECT DISTINCT     | Return only unique/distinct values                                                          | a                                              |
| WHERE               | Used to filter records and find ones that meet specific criteria                            | `WHERE Country='Mexico'`or `WHERE total=1.98`  |
| ORDER BY            | How the data should be sorted, placed after FROM clause                                     | `ORDER BY LastName`                            |
| AND                 | Used with WHERE to improve filtering                                                        | `WHERE FirstName='Joe' AND LastName='Johnson'` |
| OR                  | Used with WHERE to improve filtering                                                        | `WHERE FirstName='Joe' OR LastName LIKE '%E'`  |
| NOT                 | A                                                                                           | A                                              |
| INSERT INTO         | A                                                                                           | A                                              |
| NULL VALUES         | A                                                                                           | A                                              |
| UPDATE              | A                                                                                           | A                                              |
| DELETE              | A                                                                                           | A                                              |
| SELECT TOP          | A                                                                                           | A                                              |
| MIN                 | A                                                                                           | A                                              |
| MAX                 | A                                                                                           | A                                              |
| COUNT               | A                                                                                           | A                                              |
| SUM                 | A                                                                                           | A                                              |
| AVERAGE             | A                                                                                           | A                                              |
| LIKE                | Find values that are similar to your criteria but may not be an exact match                 | `LIKE 'B%'`                                    |
| IN                  | Specific values you want to find in a field                                                 | `WHERE total IN(1.98, 3.96)`                   |
| BETWEEN             | Clarify a range for the results you want                                                    | `WHERE total BETWEEN 10 AND 20`                |
| Aliases (AS)        | Change the column name displayed in the results                                             | `FirstName AS [Given Name]`                    |
| JOIN                | Used to connect tables in a relational database to enable more detailed and useful searches | `FROM Invoice INNER JOIN Customer ON ...       |
| UNION               | A                                                                                           | A                                              |
| GROUP BY            | A                                                                                           | A                                              |
| HAVING              | A                                                                                           | A                                              |
| EXISTS              | A                                                                                           | A                                              |
| FROM                | Which table the data should be pulled from                                                  | `FROM Employee`                                |
| LIMIT               | Restrict how many rows show up in your results to a specified number                        | `LIMIT 10`                                     |
| Wildcard Characters | A                                                                                           | A                                              |

## Structure of DB Browser for SQLite

- Database Structure tab contains a list of all tables in the database
  - Each of the tables has a dropdown that shows each of the fields/columns contained there
  - The type and Schema columns give you even more data on the fields in the table
- Browse Data lets you see visually the data in a specific table
  - You can filter and look at the table somewhat it that tab
- The Execute SQL tab is where queries are performed. It has three panes:
  - Query Pane - Area where you put in your SQL queries that you would like to execute
  - Results pane - Area where the results of the query are displayed.
  - Messages pane - Lets you know what errors may have been encountered.

## Query Commenting

- comment line starts with two dashes (`--`)
- comment block is between `/**/`
- format for comment
  - Who created it
  - When it was created
  - Description of the query that was made and what it was meant to achieve
- Help you keep track of what you have done and allow others to know what you have been searching for
- Other things to keep in mind
  - What table are you requesting data from?
  - What fields are you interested in?
  - Are there fields you want to exclude or specific restrictions you want to put on the query?
  - What does the query do?

Example query comment and query:

```
/*
Created By: Kyle Robinson
Created Date: 02/10/2024
Description: This query displays all customers' first and last names, as well as their email addresses
/*

SELECT
    FirstName,
    LastName,
    Email
FROM
    Customer
```

## Composing a query

### Example query:

```
SELECT
    FirstName,
    LastName,
    Email
FROM
    Customer
```

- FROM: Where is the data that you need to retrieve? What table? Customer
- SELECT: Once you have accessed that table, what fields are you looking for?

### Best practices:

- Put a comment at the top of the SQL script with pertinent information (i.e. your name, the date of the search, what the search was trying to find)
- Do not put a SQL statement all in one line, even though it would work fine. Space it out as shown in the example
  - This format helps see what clauses are being used and the details in those clauses.

## Column Custom Names

- Aliases can be used to make column names more easily readable for others not using SQL (i.e. changing `FirstName` field to `Customer First Name` which is better for business use)
- Create alias by putting `AS` after the column name and then in brackets the name that you want it to be called
  - You can use single quotes (i.e. `LastName AS 'Customer Last Name'`) instead of brackets if you prefer
- This changes the view in the results pane to make the visual cues easier for anyone looking at the data
- If the alias is one word you don't need to put brackets or quotes around the alias
  - i.e. `Email AS EMAIL`

```
SELECT
    FirstName AS [Customer First Name],
    LastName AS [Customer Last Name],
    Email AS [Customer Email]
FROM
    Customer
```

## Sorting Query Results

- ORDER BY clause is placed after the FROM clause
- You can sort it in either ascending or descending order
  - Ascending order (A to Z) is default in SQL
  - After the field to be sorted put `ASC` for ascending or `DESC` for descending order
- You can sort by multiple columns
  - put a comma after the first sort then add the next column you want sorted and whether it should be ascending or descending

SQL Statement:

```
/*
Created by: Kyle Robinson
Created date: 02/11/2024
Description: This query displays all customers' first and last names, as well as their email addresses
Used aliases to make columns more readable
Results sorted by LastName in descending order
*/

SELECT
	FirstName AS [Customer First Name],
	LastName AS 'Customer Last Name',
	Email AS EMAIL
FROM
	Customer
ORDER BY
	LastName DESC
```

## Limiting query results

- If you only want to see a certain number of the results, you can use LIMIT
  - Goes after ORDER BY clause and is followed by desired number of rows

SQL Statement:

```
/*
Created by: Kyle Robinson
Created date: 02/12/2024
Description: This query displays top 10 customers' first and last names, as well as their email addresses
Used aliases to make columns more readable
Results sorted by FirstName in ascending order and LastName in descending order
*/

SELECT
	FirstName AS [Customer First Name],
	LastName AS 'Customer Last Name',
	Email AS EMAIL
FROM
	Customer
ORDER BY
	FirstName ASC,
	LastName DESC
LIMIT 10
```

## Types of SQL Operators

- Arithmetic
  - Add -> `+`
  - Subtract -> `-`
  - Multiply -> `*`
  - Divide -> `/`
  - Modulo -> `%`
- Comparison
  - Equal to -> `=`
  - Not equal to -> `<>`
  - Greater than -> `>`
  - Less than -> `<`
  - Greater than or equal to -> `>=`
  - Less than or equal to -> `<=`
- Logic
  - `AND`
  - `OR`
  - `IN`
  - `LIKE`
  - `BETWEEN`

Operators are used with `WHERE` clause

## Filter and analyze numeric data

- Scenario: How many customers purchased 2 songs at $0.99 each?
- From Invoice table
  - Looked at Tracks table to make sure there are songs that are $0.99 each
  - Total cost, which shows up on invoice should be $1.98
- `WHERE` goes after `FROM`
- `ORDER BY` goes after `WHERE` (this makes sense because you don't want to sort them until you have all of the correct data)

SQL Statement:

```
/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: Customers who purchased two songs at 99 cents each
Looking at Invoice table, total cost on invoice should be $1.98
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total = 1.98
ORDER BY
	InvoiceDate
```

## BETWEEN and IN operators

- Both BETWEEN and IN are used with the WHERE clause
- Change scenario: How many invoices total between $1.98 and $5.00?

SQL Statement for BETWEEN:

```
/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: Purchases whose total was between $1.98 and $5
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total BETWEEN 1.98 and 5.00
ORDER BY
	InvoiceDate
```

- Change scenario: How many invoices had either $1.98 or $3.96 for the total?

SQL Statement for IN:

```
/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: Purchases whose total was $1.98 or $3.96
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total IN(1.98, 3.96)
ORDER BY
	InvoiceDate
```

## Filter and analyze Text Data

- Scenario: How many invoices were billed to the city of Brussels
- When filtering text data, you need to use single quotes for specific strings such as looking for a certain city

## Search for records that aren't an exact match

- Use LIKE operator to find partial or incorrect values
- Always used in conjunction with wild card character (`%` is wild card character)
  - Wild card says "I don't care about anything except what was specified"
  - Use `BillingCity LIKE 'B%'` to find items in Billing city that start with B
  - Use `BillingCity LIKE '%B%'` to find items with B anywhere in the name
- The search is not case sensitive, so you don't have to specify that it has to be an uppercase B

## Filter and analyze using dates

- Before trying to use dates to filter and analyze, look at one of the tables to see how dates are stored in that database
- This database stores them as yyyy-mm-dd 00:00:00
- Dates are placed in single quotes
- Using the DATE function removes the need to add the time to the date when searching
  - i.e. `DATE(InvoiceDate) = '2010-05-22'`

## Brackets and order

- PEMDAS - Parentheses, Exponents, Multiplication/Division, Addition/Subtraction
- Put parentheses around the criteria that should be evaluated first

## IF THEN Logic with CASE

- `CASE` goes under `SELECT` after the name of the final field.
  - A comma needs to go after the last field listed
- `CASE` is followed on a new line by `WHEN`
  - This is for the first category
- `WHEN` is followed by the condition
- `THEN` is used to give the condition a name
- Each new condition starts with `WHEN` and uses `THEN` to say what this group should be labeled
- The final condition, if it meets all other criteria can just be `ELSE 'Name of last category'`
- The `CASE` is always closed with `END`
  - `END` can be followed by an alias (i.e. `END AS PurchaseType`)

## How Tables share a relationship

- `JOIN` is a command that combines fields from two or more tables of a relational database
- Sometimes you need information that is spread across more than one table

`INNER JOIN` SQL Statement:

```
/*
Created By: Kyle Robinson
Created Date: 02/12/2024
Description: JOINS
*/

-- Joining the Invoice table to the Customer table

SELECT
	*
FROM
	Invoice
INNER JOIN
	Customer
ON
	Invoice.CustomerId = Customer.CustomerId
```

- The asterisk (\*) under SELECT means that all columns from both tables are brought in
- Taking all fields from the Invoice table and joining them to the fields in the Customer table
- `ON` is used to indicate how to connect the tables (what they have in common)
- Using `Invoice.CustomerId` and `Customer.CustomerId` is necessary since the fields have the same name
  - This syntax tells the system which table each field is coming from
- Entity Relationship Diagram (ERD)
  - visualization of how tables in a database are connected
  - Shows the common fields that can be connected
  - Example [here](</SQL%20Essential%20Training/Section%2006/Entity%20Relationship%20Diagram%20(ERD).png>)
  - Tables have a primary key that all of the other data is centered on.
    - CustomerId is the primary key for the Customer table
  - CustomerId in the Invoice table is referred to as a foreign key as it is the primary key in another table
  - Invoice and Customer are joined by a "Primary-foreign key connection"

## Simplifying JOINs

- JOINS are often used with Aliases to reduce the amount of typing done and space used
- Give a table name an alias, then use that in the JOIN

SQL Statement example:

```
/*
Created By: Kyle Robinson
Created Date: 02/12/2024
Description: Listing all of the customers with each of their invoices
*/

SELECT
	c.LastName,
	c.FirstName,
	i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.total
FROM
	Invoice AS i
INNER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY c.CustomerId
```

## Types of JOINs

### How we have used JOIN clauses

- Accessed fields in multiple tables
- Identified Primary keys
- Identified similar foreign keys
- Used `ON` keyword to link the tables together

### What if data doesn't match

- Discrepancies between tables are handled with different types of JOINs
- Discrepancies may arise when a customer deletes their account, but a company may have to keep financial records of purchases.

## INNER JOIN

- `INNER JOIN` - Only displays data that matches between the tables
  - Unmatched data from either table is ignored
  - Visualized by a Venn Diagram with only the section that is shared by the two tables
  - Most common type of join

## LEFT JOIN

- Left outer join
  - Combines all data from the left table with any matching records from the right table
  - Left and right is determined by order that the tables are listed
    - First table listed is considered the left table
  - SQL browser uses NULL data to fill in where the data does not match
  - Allow us to see discrepancies in data
    SQL Statement:

```
/*
Created By: Kyle Robinson
Created Date: 02/12/2024
Description: Left outer join with Invoice and Customer tables
*/

SELECT
	c.LastName,
	c.FirstName,
	i.InvoiceId,
	i.CustomerId,
	i.BillingAddress,
	i.InvoiceDate,
	i.total
FROM
	Invoice AS i
LEFT OUTER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY c.CustomerId
```

## RIGHT JOIN

- Right outer join
  - NOT supported in SQLite - some other SQL browsers allow it
  - Returns all data from right table along with matching data from left table
  - You can get the same results of a right join by just using a left join and switching the order of the tables

SQL Statement:

```
/*


NOT SUPPORTED BY SQLite!!!!!!!!!!



*/


/*
Created By: Kyle Robinson
Created Date: 02/12/2024
Description: Right outer join with Invoice and Customer tables
*/

SELECT
	c.LastName,
	c.FirstName,
	i.InvoiceId,
	i.CustomerId,
	i.BillingAddress,
	i.InvoiceDate,
	i.total
FROM
	Invoice AS i
RIGHT OUTER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY c.CustomerId
```

## Tables and Entity Relationship Diagrams

- When combining more than two tables, it is good to look over an ERD to see how the tables are connected

## Connecting Strings

- New string goes under `SELECT`
- Concatenate use `||`
  - i.e. `FirstName || LastName`
  - If you want a space between the fields, you need to add that in
    - i.e. `FirstName || ' ' || LastName`
- SQL Statement [here](Section%2007/07_03_connecting_strings.sql)

## Separating Text

- Truncate/shorten text
- `LENGTH` function returns the length of a string
- `SUBSTR()` function allows you to pull out part of a string
  - Needs string to be shortened, first number of first character to be kept, and how long the new string should be
    - NOTE: the first letter in a string is 1, not 0 like in coding
- SQL Statement [here](Section%2007/07_04_truncate_strings.sql)

## UPPER and LOWER string functions

- `UPPER` function makes a string upper case
- `LOWER` function makes a string lower case
- SQL Statement [here](Section%2007/07_05_upper_and_lower.sql)

## Date functions

- Allow manipulating data in various date and time formats
- Calculate employees' ages
  - find difference between birthdate and current date
  - `strftime` function - converts date and time strings to other format
    - pass in desired format and time string to be formatted
    - `'now'` function is used to find the present date and time
- SQL Statement [here](Section%2007/07_06_date_functions.sql)

## Aggregate functions

- turn range of numbers into single data point
- `sum()` function adds all of the data in a field
- `avg()` returns average of the data in a field
- `max()` returns highest data point in a field
- `min()` returns lowest data point in a field
- `count()` returns number of rows
- SQL Statement [here](Section%2007/07_07_aggregate_functions.sql)

## Nesting Functions

- `round()` function rounds to the number of decimal places you specify
- SQL Statement [here](Section%2007/07_08_nesting_functions.sql)

## Grouping query results

- Introducing the `GROUP BY` clause
  - often used in conjunction with `min()`, `max()`, `count()`, and `avg()` as well as other aggregate functions
  - Always comes after `FROM` clause
  - group by field or column that is not aggregated (not using one of the aggregate functions)
- SQL Statement [here](Section%2008/08_02_grouping_in_sql.sql)

## Grouping with the WHERE clause

- `WHERE` clause comes before the `GROUP BY` clause
- SQL Statement [here](Section%2008/08_03_group_with_where.sql)

## Grouping with the HAVING clause

- `HAVING` is used to filter aggregated data
  - always comes after the `GROUP BY` clause
- SQL Statement [here](Section%2008/08_04_group_with_having.sql)

## HAVING vs WHERE

- `WHERE` filtering non-aggregated data
- `HAVING` filtering aggregated data
- Filtering of aggregated data can only be performed after the `GROUP BY`
- SQL Statement [here](Section%2008/08_05_where_and_having.sql)

## Grouping by many fields

- Separate fields with a comma but keep on the same line
- SQL Statement [here](Section%2008/08_06_group_by_many_fields.sql)

## Subqueries and aggregate functions

- Nested query - one query is inside another
- query on the inside is wrapped in parentheses
- inner query is part inside parentheses
- outer query is the part outside the parentheses
- SQL Statement [here](Section%2009/09_02_subquery_intro.sql)

## Aggregated subqueries

- Including a subquery in the `SELECT` clause enables us to compare data from that subquery side-by-side with other fields in the query
- SQL Statement [here](Section%2009/09_03_subquery_with_select.sql)

## Non-aggregate subqueries

- subqueries can go in any clause
- SQL Statement [here](Section%2009/09_04_nonaggregate_subqueries.sql)

## IN clause subquery

SQL Statement [here](Section%2009/09_05_in_clause_subquery.sql)

## DISTINCT clause subquery

- `DISTINCT` goes under `SELECT` and tells the browser to only display items from the field that are unique/distinct
- SQL Statement [here](Section%2009/09_06_subqueries_and_distinct.sql)

## View Introduction

- View - An SQL query that is saved and can be executed repeatedly or referenced by other queries
  - Useful if you need to use a query often (i.e. monthly report)
- View is officially called a virtual table
- Best practice when naming views is to start with `V_`
- Finish the syntax with `AS`
- SQL Statement including View [here](Section%2010/10_02_creating_a_view.sql)
- Once it is all ready, run the SQL.
  - Nothing will show up in the results, but the bottom pane should indicate that it ran successfully.
  - You should then be able to see the View when you go to the Database Structure or Browse Data tabs.

## Editing a view

- Process differs between RDBMS
- Views in SQLite are not modified with syntax--they are deleted, then recreated with the modification
- Easiest way in SQLite is to right click on the view in the Database Structure tab and hit OK
  - The view is then ready for you to make any necessary modifications and rerun it to recreate it.
- SQL Statement [here](Section%2010/10_03_edit_view_in_sqlite.sql)

## Joining Views

- SQL Statement [here](Section%2010/10_04_views_and_joins.sql)

## Deleting Views

- Easy way to just go to Database Structure tab, then right click on the view and select Delete View
- If you want to delete using SQL syntax:
  - Use DROP VIEW, then on the next line down put the name of the View you want to delete, and run the command
- Note that removing a View does not affect the data in the tables at all
- SQL Statement [here](Section%2010/10_05_delete_view.sql)

## Analysis and Administration

- Data Manipulation Language (DML)
  - SQL statements used to alter the data stored in the tables of a database
  - Used mostly by Database developers and administrators

## Inserting data

- DML statements
  - Insert
  - Update
  - Delete
- `INSERT INTO` Statement is used to add data to a specific field
- Start insert SQL with `INSERT INTO`
- Specify table to insert into
- Make sure you know which column in that table you want to insert data for
  - this goes in parentheses next to the table name
- Next line down put keyword `VALUES`
  - follow with data you want to add to that field in parentheses
- Nothing will show in the results pane when DML statements are run but the messages pane will let you know if it was successful
- SQL Statement [here](Section%2011/11_02_insert_dml.sql)

## Updating Data

- Modifies existing data in a table
- `UPDATE` almost always used with `WHERE`
- When not used with `WHERE` it will update every single row in a table
- Find primary key for data to be updated
- Start with `UPDATE`, then on the next line put the table that the data is in
- Following line put `SET` then the field that has information to be updated
- Set that field name equal to the updated data
- Follow with `WHERE`
  - Use primary key to say which row should be modified
- SQL Statement [here](Section%2011/11_03_update_dml.sql)

## Deleting Data

- Removes existing records from a table
- Almost always used with a `WHERE`
  - Using without `WHERE` deletes every row in a table
- Start with `DELETE FROM` then the table name on the next line
- Put `WHERE` on next line, then specify the ID for the data being deleted
- SQL Statement [here](Section%2011/11_04_delete_dml.sql)

## Non-technical interview practice

- Introduction
  - Focus on what you can do and any experience you do have
    - i.e. working with the Help, Support, and Operations Portfolio you often gathered similar data to that found in databases
    - you have practiced doing a course on LinkedIn Learning
  - Keep it brief and be ready
- Project or experience that demonstrates your commitment to sustainability and innovation
  - Don't be afraid to ask for a minute to think
  - Provide tangible evidence of what you did to participate
  - Even if you didn't make a decision yourself, how did you come up with informed options to present to your boss?
- Communicate technical info to non-technical stakeholders
  - Give specific examples of ways you bridged the gap to better communicate (i.e. visualizations)

## Code Challenges

### 1. Playlist Recommendation

My Solution:

```
SELECT
    g.NAME AS Genre,
    avg(t.MILLISECONDS) as AverageDuration,
FROM
    Track t
INNER JOIN
    Genre g
ON
    t.GENREID = g.GENREID
GROUP BY
    g.GENREID
ORDER BY
    AverageDuration DESC
LIMIT 5
```

Instructor's Solution

```
SELECT g.NAME AS Genre, AVG(t.Milliseconds) AS AverageDuration
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
GROUP BY g.Name
ORDER BY AverageDuration DESC
LIMIT 5;
```

### 2. Smart Customer Engagement Strategies

My Solution:

```
SELECT
    i.CUSTOMERID,
    c.FIRSTNAME,
    c.LASTNAME,
    SUM(i.TOTAL) AS TotalPurchaseAmount
FROM
    Customer c
JOIN
    Invoice i
ON
    i.CUSTOMERID = c.CUSTOMERID
GROUP BY
    i.CUSTOMERID
ORDER BY
    TotalPurchaseAmount DESC
```

Instructor's Solution

```
SELECT
    c.CUSTOMERID,
    c.FIRSTNAME,
    c.LASTNAME,
    SUM(i.TOTAL) AS TotalPurchaseAmount
FROM
    Customer c
JOIN
    Invoice i
ON
    c.CUSTOMERID = i.CUSTOMERID
GROUP BY
    c.CUSTOMERID, c.FirstName, c.LastName
ORDER BY
    TotalPurchaseAmount DESC
```

### 3. AI-Powered Support Workload Analysis

My Solution:

```
SELECT
    e.EMPLOYEEID,
    e.FIRSTNAME,
    e.LASTNAME,
    COUNT(c.SUPPORTREPID) AS NumberOfCustomers
FROM
    Customer c
JOIN
    Employee e
ON
    c.SUPPORTREPID = e.EMPLOYEEID
GROUP BY
    c.SUPPORTREPID
ORDER BY
    NumberOfCustomers DESC
```

Instructor's Solution:

```
SELECT
    e.EMPLOYEEID,
    e.FIRSTNAME,
    e.LASTNAME,
    COUNT(c.CustomerId) AS NumberOfCustomers
FROM
    Employee e
JOIN Customer c ON e.EMPLOYEEID = c.SUPPORTREPID
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY NumberOfCustomers DESC
```
