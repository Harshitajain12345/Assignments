CREATE database indexss;
use indexss;
create table employee(employeeid int primary key,
					firstname varchar(50),
                    lastname varchar(50),
                    department varchar(50),
                    salary decimal(10,2)) ;
                    
insert into employee(employeeid,firstname,lastname,department,salary)
values(1,'David','Davis','HR',70000.00),(2,'Emma','Evans','IT',80000.00),(3,'Frank','Foster','Finance',90000.00),
(4,'Grace','Green','IT',85000.00),(5,'Helen','Harris','Marketing',100000.00),(6,'Ian','Irwin','Finance',95000.00),
(7,'Jack','Johnson','HR',72000.00) ;   

select * from employee ;
-- primary index
CREATE INDEX emp_indx ON employee(employeeid);
            
-- composite index
CREATE INDEX FIRST_LAST ON employee(firstname , lastname);

-- UNIQUE INDEX
CREATE UNIQUE INDEX UNQ_INDX ON employee(lastname) ;

-- CLUSTERED INDEX
CREATE INDEX clus_indx ON employee(department) ;

-- NON CLUSTERED INDEX 
CREATE INDEX UNCLUS_INDX ON employee(salary); 
SHOW INDEX FROM employee;   

-- full text
-- bitmap
-- B-tree index
-- hash index
-- use case of these indexes       