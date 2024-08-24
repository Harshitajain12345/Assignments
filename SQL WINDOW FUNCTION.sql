create database employee123 ;
use employee123;
create table employee(employeeid int primary key,
					firstname varchar(50),
                    lastname varchar(50),
                    department varchar(50),
                    salary decimal(10,2)) ;
                    
insert into employee(employeeid,firstname,lastname,department,salary)
values(1,'David','Davis','HR',70000.00),(2,'Emma','Evans','IT',80000.00),(3,'Frank','Foster','Finance',90000.00),
(4,'Grace','Green','IT',85000.00),(5,'Helen','Harris','Marketing',100000.00),(6,'Ian','Irwin','Finance',95000.00),
(7,'Jack','Johnson','HR',72000.00) ;   

select * from employee;  

select employeeid , lastname , firstname ,department , salary, ROW_NUMBER() OVER (order by salary DESC) AS 
rankingofsalary from employee ;  

select employeeid , lastname , firstname ,department , salary, ROW_NUMBER() OVER (PARTITION BY department  order by salary DESC) AS 
rankingofsalary from employee ;       
     
select employeeid , lastname , firstname ,department , salary, ROW_NUMBER() OVER (PARTITION BY department  order by salary DESC) AS 
rankingofsalary from employee ;  

select employeeid , lastname , firstname ,department , salary, RANK() OVER ( order by salary DESC ) AS 
rankingofsalary from employee ;   

select employeeid , lastname , firstname ,department , salary, RANK() OVER (PARTITION BY department  order by salary DESC) AS 
rankingofsalary from employee ;   

select employeeid , lastname , firstname ,department , salary, DENSE_RANK() OVER ( order by salary) AS 
rankingofsalary from employee ; 

select employeeid , lastname , firstname ,department , salary, DENSE_RANK() OVER (PARTITION BY department  order by salary) AS 
rankingofsalary from employee ; 

select employeeid , lastname , firstname ,department , salary, NTILE(3) OVER ( order by salary DESC) AS 
rankingofsalary from employee ; 

select employeeid , lastname , firstname ,department , salary, NTILE(3) OVER ( order by salary) AS 
rankingofsalary from employee ; 

select employeeid , lastname , firstname ,department , salary, LAG(salary) OVER ( order by salary DESC) AS 
previous_salary from employee ; 

select employeeid , lastname , firstname ,department , salary, LAG(salary) OVER ( order by salary) AS 
previous_salary from employee ; 

select employeeid , lastname , firstname ,department , salary, LAG(salary) OVER (  PARTITION BY department order by salary DESC) AS 
previous_salary from employee ; 

select employeeid , lastname , firstname ,department , salary, LEAD(salary) OVER ( order by salary DESC) AS 
NEXT_salary from employee ;

select employeeid , lastname , firstname ,department , salary, LAG(salary) OVER (  PARTITION BY department order by salary DESC) AS 
previous_salary from employee ;  

select employeeid , lastname , firstname ,department , salary, LEAD(salary) OVER (PARTITION BY department order by salary) AS 
previous_salary from employee ; 







    


UPDATE employee set salary = 70000.00 where employeeid = 7;
select * from employee ;   
  
     
                    
                    