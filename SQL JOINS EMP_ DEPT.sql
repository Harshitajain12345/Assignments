show databases ;
drop database testdb ;
drop database school ;
drop database student ;
show databases ;
show databases ;
drop database customers ;
drop database customers_ ;
show tables ;



create database joins ;
use joins ;
create table employees(employeename varchar(50) ,
                       employee_id int primary key,
                       dept_id int );
                       
insert into employees(employeename , employee_id , dept_id)
values('alice',1,1),('bob',2,2),('charlie',3,2),('david',4,3),('eve',5,null) ;
select * from employees ; 

create table department(dept_name varchar(50),
                        dept_id int ) ;
insert into  department(dept_name,dept_id) values('HR',1),('IT',2),('FINANCE',3),('MARKETING',4) ;    
select * from department ;
 
 select employees.employeename , employees.employee_id , department.dept_name from employees inner join department on employees.dept_id = department.dept_id ;
 select employees.employeename , employees.employee_id , department.dept_name from employees left join department on employees.dept_id = department.dept_id ;
 select employees.employeename , employees.employee_id , department.dept_name from employees right join department on employees.dept_id = department.dept_id ;
 select employees.employeename , employees.employee_id , department.dept_name from employees natural join department ;
 select employees.employeename , employees.employee_id , department.dept_name from employees cross join department ;
 select employees.* from employees where exists(select 1  from department where employees.dept_id = department.dept_id);
 select employees.* from employees where not exists(select 1 from department where employees.dept_id = department.dept_id);
 select e1.employeename , e2.employee_id from employees as e1 inner join employees as e2 on e1.employee_id = e2.employee_id ;
 select employees.employeename , employees.employee_id , department.dept_name from employees left join department on employees.dept_id = department.dept_id 
 union
 select employees.employeename , employees.employee_id , department.dept_name from department left join employees on employees.dept_id = department.dept_id 
 
 
 
 