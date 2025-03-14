/*Exercise #1
What is the average price of a product by product type?

You can use the product table.  Display the ProductType and AveragePrice*/

SELECT ProductType,AVG(PRICE) AS AveragePrice FROM Product
GROUP BY 1;

/*Exercise #2
How may employees are there in the Employee table?*/

SELECT COUNT(*) AS EmployeeCount FROM Employee;