/*Exercise #1
Select LastName, City, and PostalCode from the customer table in LastName order.*/

SELECT LastName,City,PostalCode FROM Customer ORDER BY LastName;

/*Exercise #2
Select LastName, City, and PostalCode from Customer in order of City and LastName.  The Last Names should be in descending order.*/

SELECT LastName,City,PostalCode FROM Customer ORDER BY City,LastName DESC;

/*Exercise #3
What are the top five highest priced products?  Use the product table and display the Product’s name and Price.*/

SELECT ProductName,Price FROM Product ORDER BY Price DESC LIMIT 5;