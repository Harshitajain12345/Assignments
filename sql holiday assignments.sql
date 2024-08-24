create database assignment ;
use assignment ;
create table employee(employeeid int ,
                      employeename varchar(50),
                      salary int,
                      jobtitle varchar(50),
                      department varchar(50)) ;
 insert into employee(employeeid , employeename , salary , jobtitle,department) values
 (101,'Alice',50000,'manager','marketing'),
(102,'bob',80000,'assistantManager','sales'),(103,'charlie',77000,'clerk','marketing'),(101,'david',20000,'peon','IT'),
(104,'evan','90000','chief','marketing'),(101,'florina',60000,'upperclerk','HR'),(105,'glory',90000,'director','IT'),
(106,'harry',50000,'patwari','sales'),
(107,'ira',100000,'SeniorChief','marketing');

select * from employee ;

SELECT employeename from employee order by salary  desc limit 1,1 ;   
select employeename , jobtitle from employee where employeeid = 101 ;
UPDATE employee
SET salary = salary * 1.1
WHERE department = 'marketing';

ALTER TABLE employee ADD birthdate DATE;

ALTER TABLE employee
RENAME COLUMN salary TO base_salary;

delete from employees where jobtitle = 'clerk' ;
TRUNCATE TABLE employee;


CREATE TABLE departments (
    id INT ,
    name VARCHAR(50),
    location VARCHAR(100)
);

DROP TABLE departments;
ALTER TABLE employee
DROP COLUMN birthdate;

/* DELETE -- 
Removes specific rows from a table based on a condition specified in the WHERE clause.
Is a DML (Data Manipulation Language) command.
Allows for the use of transactions (ROLLBACK is possible).
Slower than TRUNCATE for large datasets.

/* TRUNCATE--
Removes all rows from a table without affecting the table structure.
Is a DDL (Data Definition Language) command.
Does not allow for transactions (ROLLBACK is not possible).
Faster than DELETE, especially for large datasets.

--TRUNCATE
-- specifically designed to remove all rows from a table while preserving its structure.
--  TRUNCATE is a DDL operation and cannot be rolled back. */

 


select count(*) , avg(base_salary) from employee  group by department ;
select max(base_salary) from employee group by department;
select employeename,base_salary from employee order by base_salary  desc limit 3 ;
select department from employee order by department limit 10;


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_address VARCHAR(255)
);

INSERT INTO customers (customer_id, customer_name, customer_address)
VALUES
  (1, 'Alice', 'jaipur'),
  (2, 'Bob Smith', 'delhi'),
  (3, 'Charlie Brown', 'mumbai'),
  (4, 'David Lee', 'kolkata'),
  (5, 'Emily Green', 'bangalore');
  
  select * from customers ;
  
  CREATE TABLE orderss(
    order_id INT PRIMARY KEY,
    customer_id int ,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orderss (order_id, customer_id, order_date, total_amount)
VALUES
  (1, 1, '2023-10-15', 299.99),
  (2, 2, '2023-10-17', 159.95),
  (3, 3, '2023-10-20', 499.99),
  (4, 4, '2023-10-22', 399.90),
  (5, 5, '2023-10-25', 199.95);
  
  select * from orderss;
  

SELECT o.order_id , c.customer_name , o.order_date
FROM orderss o
INNER JOIN customers c ON o.customer_id = c.customer_id;

SELECT o.order_id , c.customer_name
FROM orderss o
LEFT JOIN  customers c ON o.customer_id = c.customer_id;

create table manager(managerid int,
                     managername varchar(50));
insert into manager(managerid,managername) values(1,'ram'),(2,'shyam'),(3,'mohan'),(4,'raja'),(5,'radha')  ;
select * from manager;

SELECT employeeid FROM employee
INTERSECT
SELECT managerid
FROM manager;

SELECT employeeid
FROM employee
except
SELECT managerid
FROM manager;

SELECT employeeid
FROM employee
union
SELECT managerid
FROM manager;

SELECT employeeid
FROM employee
union all
SELECT managerid
FROM manager;

SELECT 
    e.employeeid,
    e.departmentid,
    e.salary
FROM 
    employees e
WHERE 
    e.salary > (SELECT AVG(salary)
                FROM employees
                WHERE department_id = e.department_id);
                
SELECT department_id
FROM departments WHERE department_id IN (SELECT department_id FROM employees
  GROUP BY department_id
  HAVING COUNT(*) > 10);     
  
  SELECT  employeeid , hiredate , salary,
SUM(salary) OVER (ORDER BY hire_date) AS running_total_salary FROM employee;

SELECT employeeid , departmentid , salary,
    RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS salary_rank FROM employee;
    
    SELECT employee_id , department_id , salary,
    ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS salary_rank
	FROM employee;
    
    





                 
  






                  