/* Question 1 🧑‍💼
   Retrieve the firstName, lastName, email, and officeCode of all employees.
   Use an INNER JOIN between employees and offices on the officeCode column.
*/
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o
ON e.officeCode = o.officeCode;

/* Question 2 
   Retrieve the productName, productVendor, and productLine from products.
   Use a LEFT JOIN between products and productlines on the productLine column.
*/
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl
ON p.productLine = pl.productLine;

/* Question 3 📦
   Retrieve orderDate, shippedDate, status, and customerNumber for the first 10 orders.
   Use a RIGHT JOIN between customers and orders on the customerNumber column.
*/
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o
ON c.customerNumber = o.customerNumber
LIMIT 10; 