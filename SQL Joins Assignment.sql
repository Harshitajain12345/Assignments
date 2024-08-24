create database customers1234;
use customers1234;
create table customer123(customer_id int,
                       customername varchar(50) );
create table orders123(order_id int primary key,
                     customer_id int) ;
 
insert into customer123(customer_id , customername )
values(1,'Alice'),
       (2,'Bob'),
       (3,'Charlie'),
       (4,'David') ;
 insert into orders123(order_id,customer_id)
 values(101,1),(102,2),(103,1),(104,4);
 select * from customer123;
 select * from orders123;
 select customer_.customer_id , orders_.order_id ,customer_.name from customer_ inner join orders_ on customer_.customer_id = 
 orders_.customer_id;
 
 select customer_.customer_id , orders_.order_id ,customer_.name from customer_ left join orders_ on customer_.customer_id = 
 orders_.customer_id;
 
 select customer_.customer_id , orders_.order_id ,customer_.name from customer_ right join orders_ on customer_.customer_id = 
 orders_.customer_id;
  select customer_.customer_id , orders_.order_id ,customer_.name from customer_ right join orders_ on customer_.customer_id = 
 orders_.customer_id;
 
 select customer_.customer_id,customer_.name ,orders_.order_id from customer cross join orders_;
  
 select customer123.customer_id,customer123.customername,orders123.order_id from customer123 natural join orders123 ;
 select customer123.customer_id,customer123.customername,orders123.order_id from customer123  cross join orders123 ;
 
 select customer1.customer_id , customer2.customername from customer123 as customer1 inner join customer123 as customer2
 on customer1.customer_id = customer2.customer_id ;
 
 select customer123.* from customer123 where exists(select 1 from orders123 where customer123.customer_id=order123.customer_id);
 
 select customer123.customer_id , customer123.customername from customer123 left join orders123 on customer123.customer_id = orders123.customer_id
 union
 select customer123.customer_id , customer123.customername from orders123 left join customer123 on customer123.customer_id = orders123.customer_id ;
 
 
 
 
      
 


                       