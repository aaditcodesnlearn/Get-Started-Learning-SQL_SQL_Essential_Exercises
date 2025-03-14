/*Exercise #1
Lou, from Lou’s Pizza shop would like to see a report of which customer are ordering which products.  To get started with this we’ll use the Product and CustomerOrderItem tables.

The Product table has the following columns:

ProductID
ProductName
ProductType
Price
CustomerOrderItem table has the following columns

CustomerOrderItemID
CustomerOrderID
ProductID
Quantity
SpecialInstructions
Can you create a query to return the following columns?

CustomerOrderItemID
CustomerOrderID
ProductName
Price
Quantity*/

SELECT CustomerOrderItemID,CustomerOrderID,ProductName,Price,Quantity 
FROM CustomerOrderItem INNER JOIN Product USING (ProductID);

/*Exercise #2
Create a query combining customer and customer order information.   For this query we’ll use the CustomerOrder and Customer tables.

The CustomerOrder table has the following columns

CustomerOrderID
CustomerID
OrderTakerID
OrderDate
CouponID
And Customer has the following columns:

CustomerID
PhoneNumber
Email
LastName
StreetAddress
City
StateProvidence
PostalCode
For your query include the following:

CustomerOrderID
OrderDate
LastName
StreetAddress
Sort your result by OrderDate and LastName.*/

SELECT CustomerOrderID,OrderDate,LastName,StreetAddress
FROM Customer INNER JOIN CustomerOrder USING (CustomerID)
ORDER BY OrderDate,LastName;

/*Exercise #3
Create a query to return the following:

OrderDate, LastName, StreetAddress, ProductName, Quantity, Price, TotalAmount

where the TotalAmount is the Quantity times Price.

order the result by TotalAmount in descending order

You can use the Product, CustomerOrderItem, CustomerOrder, and Customer tables to build your query.


The Product table has the following columns:

ProductID
ProductName
ProductType
Price
CustomerOrderItem table has the following columns

CustomerOrderItemID
CustomerOrderID
ProductID
Quantity
SpecialInstructions
The CustomerOrder table has the following columns

CustomerOrderID
CustomerID
OrderTakerID
OrderDate
CouponID
And Customer has the following columns:

CustomerID
PhoneNumber
Email
LastName
StreetAddress
City
StateProvidence
PostalCode*/

SELECT OrderDate, LastName, StreetAddress, ProductName, 
Quantity, Price, (Quantity*Price) AS TotalAmount
FROM Product 
INNER JOIN CustomerOrderItem USING (ProductID) 
INNER JOIN CustomerOrder USING (CustomerOrderID)
INNER JOIN Customer USING (CustomerID)
ORDER BY TotalAmount DESC;