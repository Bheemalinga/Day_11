delete from student where student_name='deepthi';
select * from student
Drop table rgm;
select * from student;
alter table student  rename column student_name to name;
alter table student rename to rgm_student;
select * from rgm_student;
show databases;
Drop database herovired;
alter table rgm_student add address varchar(50); -- to add column
update rgm_student set address='kurnool' where name='nani'; -- to add data to  newly added column
alter table rgm_student modify column address varchar(60); -- to change size, datatype
alter table rgm_student drop column name, drop column marks; -- to drop multiple columns in single command
delete from rgm_student;-- delete all data in table
create table pras(id int primary key, marks int);
insert into pras values(400,990),(420,993),(423,943);
Select * from pras;
select max(marks) from pras;
select min(marks) from pras;
select avg(marks) from pras
select sum(marks)  as total from pras ;-- to change the column name at output
create database exercise;
create table customer(
id int primary key,name varchar(50),city varchar(30),grade int,salesman_id int);
insert into  customer values(105,'pras','kadapa',198,202),
(102,'nandu','kurnool',55,22),
(103,'nani','hyd',33,265),(101,'teja','chennai',155,234),
(106,'navitha','mumbai',178,222);
select * from customer;
insert into customer values(101,'charanya','delhi',166,292),
(104,'harika','gujarat',148,272);
-- write a sql query to to find the datails of customer whose grade above 100
select * from customer where grade>100;
-- write a sql query to to find the details of customer whose grade above and equal to 100
select * from customer where grade>=100 order by grade asc;
select * from customer where city='kadapa' and grade>=100;
select name from customer where city='Hyderabad' or grade>100;
select * from customer where city='kerala'or not grade>100;
select * from customer where city<>'mumbai' and grade>200;
select * from customer where not city='mumbai' and not grade<=200;
select * from customer;

create table orders(
order_num int,purchase_amount int,order_date date,customer_id int,salesman_id int
);
insert into orders values(2002,1000,'2023-04-23',100,200),(2003,1100,'2023-04-25',101,201),(2003,1200,'2023-04-30',102,202),(2004,1300,'2023-04-28',103,203),
(2005,1000,'2023-05-21',104,204);
select * from orders;
-- find the order details excluding the date 30-04-2023 and salesman id more than 202 or purchase amount greater than 1000
select * from orders where not order_date='2023-04-30' and salesman_id>202 or purchase_amount>1000;

create table salesman(
salesman_id int primary key, name varchar(30),city varchar(30), commission float);
select * from salesman;
insert into salesman values(200,'prasanna','kurnool',0.45),(201,'keerthi','nandyal',0.230),(202,'kavya','hyd',0.32),(203,'keerthana','BGLR',0.43);
-- To find the salesman details whose commissioms are within the range from 0.23 to 0.43
select * from salesman where commission between 0.23 and 0.43;
-- find the salesman details whose name startswith k letter
select * from salesman where name like 'k%';
-- create a new column address, insert some data in that address column and display all those address as "salesman address" in descending order
alter table salesman add address varchar(30);
update salesman set address='HYD' where name='prasanna';
update salesman set address='kurnool' where name='keerthi';
update salesman set address='kadapa' where name='kavya';
update salesman set address='BGLR' where name='keerthana';
select * from salesman order by address desc;
-- create a new column address, insert some data in that address column and display all those address as "salesman address" in descending order
select address as salesman_address from salesman order by address desc;

