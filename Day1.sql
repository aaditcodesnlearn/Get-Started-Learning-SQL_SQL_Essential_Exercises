/*Exercise #1
Select all the values from the Employee Table.*/

SELECT * FROM Employee;

/*Exercise #2
Select the FirstName and LastName from the Employee table.*/

SELECT FirstName,LastName FROM Employee;

/*Exercise #3
Select the ProductID, ProductName, NewPrice from the Product table, where  NewPrice is the Price plus .5*/

SELECT ProductID,ProductName,(Price*1.05) AS NewPrice FROM Product;