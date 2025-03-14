/*Exercise #1
Using the Customer table, display the CustomerId, LastName, City for all Customers in the city Plainwill.*/

SELECT CustomerID,LastName,City FROM Customer WHERE City='PlainWill';

/*Exercise #2
Using the Customer table, find all customers having a last name that is greater than or equal to L.  Display the CustomerID and LastName.
*/
SELECT CustomerID,LastName FROM Customer WHERE LastName >='L';

/*Exercise #3
Using the Customer table,
display the CustomerID, LastName, and PhoneNumber for all customer within the 249 area code.
Note:  The phone numbers are stored as text and formatted like:  123-456-7890
where 123 is the area code.*/

SELECT CustomerID,LastName,PhoneNumber FROM Customer WHERE PhoneNumber LIKE '249-___-____';

/*Exercise #4
Coding instructions hereDisplay the ProductID, ProductName, ProductType, and Price for all product table items having a price NOT BETWEEN 5.00 and 11.00 dollars*/

SELECT ProductID,ProductName,ProductType,Price FROM Product WHERE Price NOT BETWEEN 5 AND 11;

/*Exercise #5
Display the ProductID, ProductName, ProductType, and Price
for all Product table items having a price NOT BETWEEN 5.00 and 11.00 dollars
whose ProductType is either P or B.*/

SELECT ProductID,ProductName,ProductType,Price FROM Product WHERE Price NOT BETWEEN 5 AND 11 
AND ProductType IN ('P','B');

