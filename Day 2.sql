Create database Employee;
use Employee;
create table Sales(Employee_ID int primary key ,Employee_Name varchar(50),Product varchar (50),Quantity int,Sale_Date date);
INSERT INTO Sales (Employee_ID, Employee_Name, Product, Quantity, Sale_Date) VALUES
(1, 'Alice', 'Monitor', 6, '2023-04-11'),
(2, 'Charlie', 'Laptop', 3, '2023-12-12'),
(3, 'Bob', 'Monitor', 10, '2023-04-27'),
(4, 'Eve', 'Mouse', 3, '2023-09-01'),
(5, 'Eve', 'Laptop', 2, '2023-11-26'),
(6, 'Eve', 'Laptop', 10, '2023-08-05'),
(7, 'Charlie', 'Printer', 9, '2023-05-06'),
(8, 'Ian', 'Mouse', 10, '2023-12-06'),
(9, 'Ian', 'Mouse', 9, '2023-03-19'),
(10, 'Grace', 'Mouse', 3, '2023-12-24'),
(11, 'Frank', 'Printer', 10, '2023-08-21'),
(12, 'Charlie', 'Monitor', 10, '2023-08-03'),
(13, 'Jane', 'Mouse', 3, '2023-10-01'),
(14, 'Helen', 'Keyboard', 4, '2023-07-19'),
(15, 'Alice', 'Monitor', 10, '2023-08-13'),
(16, 'Jane', 'Laptop', 5, '2023-09-08'),
(17, 'Bob', 'Printer', 4, '2023-12-28'),
(18, 'Bob', 'Printer', 5, '2023-01-08'),
(19, 'Grace', 'Mouse', 9, '2023-07-30'),
(20, 'Jane', 'Keyboard', 4, '2023-05-01'),
(21, 'Eve', 'Printer', 6, '2023-06-24'),
(22, 'Frank', 'Laptop', 7, '2023-12-04'),
(23, 'Bob', 'Monitor', 4, '2023-03-16'),
(24, 'Eve', 'Monitor', 6, '2023-07-26'),
(25, 'Frank', 'Laptop', 10, '2023-02-07'),
(26, 'David', 'Monitor', 10, '2023-06-21'),
(27, 'Jane', 'Laptop', 8, '2023-03-06'),
(28, 'Grace', 'Printer', 6, '2023-02-24'),
(29, 'Jane', 'Keyboard', 2, '2023-02-19'),
(30, 'Grace', 'Printer', 10, '2023-07-01'),
(31, 'Frank', 'Mouse', 1, '2023-08-06'),
(32, 'David', 'Mouse', 4, '2023-03-04'),
(33, 'Eve', 'Monitor', 6, '2023-11-01'),
(34, 'Helen', 'Keyboard', 7, '2023-05-02'),
(35, 'Grace', 'Mouse', 10, '2023-09-29'),
(36, 'Charlie', 'Printer', 10, '2023-10-04'),
(37, 'Grace', 'Printer', 5, '2023-07-27'),
(38, 'Jane', 'Laptop', 7, '2023-06-13'),
(39, 'Alice', 'Keyboard', 4, '2023-03-07'),
(40, 'Frank', 'Printer', 2, '2023-04-19'),
(41, 'Eve', 'Keyboard', 6, '2023-04-03'),
(42, 'Helen', 'Keyboard', 6, '2023-06-20'),
(43, 'Frank', 'Laptop', 7, '2023-09-30'),
(44, 'Bob', 'Monitor', 10, '2023-08-26'),
(45, 'Alice', 'Printer', 5, '2023-01-12'),
(46, 'Frank', 'Keyboard', 3, '2023-10-11'),
(47, 'Charlie', 'Keyboard', 7, '2023-07-14'),
(48, 'Helen', 'Laptop', 4, '2023-05-10'),
(49, 'Grace', 'Mouse', 4, '2023-02-10'),
(50, 'Charlie', 'Keyboard', 3, '2023-10-02');

select * from Sales;

-- Group By Example --

-- Find total quantity sold by each employee --
select Employee_Name, sum(Quantity) as Total_Quantity from Sales group by Employee_Name;

-- Count of sales per product--
select Product, count(*) as Number_Of_Sales from Sales group by Product;

-- Avgrage quantity sold per product --
select Product, avg(Quantity) as Avg_Quantity from Sales group by Product;

-- Maxium Qunatity sold by each employee --
select Employee_Name, max(Quantity) as Max_Quantity from Sales group by Employee_Name;

-- Total quantity sold per day --
select Sale_Date, sum(Quantity) as Per_Day_Sale from Sales group by Sale_Date;

-- Order by Example ----

 -- List of all sales accending order of quantity --
 select * from Sales order by Quantity asc;

 -- List of all sales accending order of quantity --
 select * from Sales order by Quantity desc;
 
 -- List all the sales with the latest date first --
  
  
  -- List employee sales in alphabetical by employee name and the quantity in desc order --
  select Employee_Name,Product,Quantity from Sales order by Employee_Name asc,Quantity desc;

-- Top five highest quantity sales ---
select * from Sales order by Quantity desc limit 5; 




