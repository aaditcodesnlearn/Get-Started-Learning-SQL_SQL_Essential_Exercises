/*Exercise #1
For each product in the Product table,  list the ProductID, ProductName, Price, and Average ProductPrice as AverageProductPrice.
Order your results by ProductName in ascending order*/

SELECT ProductID,ProductName,Price,(SELECT AVG(Price) FROM Product) AS AverageProductPrice 
FROM Product ORDER BY ProductName;  
​
/*Exercise #2
Here is a query to get the average price for all Pizzas

select avg(price) from Product Where ProductName like '%Pizza%'
Using that as part of your subquery, list all Pizza relate products and compare their price to the average price for pizzia.

Your result should contain the following columns:

ProductID
ProductName
Price
AveragePizzaPrice
PriceDifference
where PriceDifference is Price minus the Average Pizza Price

order your result by ProductName
*/

SELECT ProductID,ProductName,Price,
(SELECT AVG(Price) FROM Product WHERE ProductName LIKE '%Pizza%') AS AveragePizzaPrice,
(Price - (SELECT AVG(Price) FROM Product WHERE ProductName LIKE '%Pizza%' ))AS PriceDifference
FROM Product ORDER BY ProductName;

