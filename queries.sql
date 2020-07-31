-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT productname,
       CategoryName
  FROM product
       JOIN
       category ON category.id = categoryId;


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [order].id,
       shipper.CompanyName
  FROM [order]
       JOIN
       shipper ON shipper.id = [order].shipvia
 WHERE [order].orderdate < '2012-08-09';


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT o.orderid,
       o.quantity,
       p.productname
  FROM orderdetail AS o
       JOIN
       product AS p ON o.productid = p.id
 WHERE o.orderid = '10251'
 ORDER BY p.productname


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.id AS [Order ID],
       c.companyname AS [Company Name],
       e.lastname AS [Employee Last Name]
  FROM [order] AS o
       JOIN
       customer AS c ON o.customerid = c.id
       JOIN
       employee AS e ON o.employeeid = e.id
 GROUP BY o.id;
