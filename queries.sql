1-
SELECT * , quantityOrdered*priceEach AS totalpayment FROM orderdetails




2-
SELECT CONCAT( emp.firstName ," ", emp.lastName) AS empFullName ,CONCAT(mang.firstName, " ",mang.lastName) AS mangFullName FROM employees AS emp JOIN employees AS mang
ON emp.reportsTo = mang.employeeNumber

3-
SELECT employees.firstName FROM employees WHERE officeCode IN(SELECT officeCode FROM offices WHERE city="London")




4-

SELECT employees.firstName , employees.lastName ,city FROM employees JOIN offices
ON employees.officeCode = offices.officeCode
WHERE offices.city = "London"


5-

SELECT customers.customerName , orderdetails.quantityOrdered * orderdetails.priceEach AS TotalPayment FROM customers JOIN orders JOIN orderdetails
ON orders.customerNumber = customers.customerNumber
AND orders.orderNumber = orderdetails.orderNumber