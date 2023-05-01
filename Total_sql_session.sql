SHOW databases;

select * from rgm;

update rgm set stu_name="anik" where phn_num=928989797;

update rgm set sessio="cyber" , address="nasik" where college="VITS";

create table rgmcopy(id int primary key not null,
stu_name varchar(30) not null,
college varchar(20) not null,
sessio varchar(10) not null,
phn_num bigint not null,
address varchar(20) not null) 

select * from rgmcopy;

insert into rgmcopy select * from rgm;  -- copy rgm data into rgmcopy when tables in same databases

create table rgmcopy2(id int primary key not null,
stu_name varchar(30) not null,
college varchar(20) not null,
sessio varchar(10) not null,
phn_num bigint not null,
address varchar(20) not null);

insert into rgmcopy2 select * from herovired.rgm; -- copying data from when tables in differenr databases

select* from rgmcopy2;
-- data be deleted but table remain same:so use truncate

truncate table rgmcopy;

select * from rgmcopy;

select* from rgm;

delete from rgm where stu_name="hemanth"; -- delete entire row

drop table rgmcopy;  -- delete entire schema

-- to change column name: alter
 alter table rgm rename  column stu_name to name;
 
 -- to change table name
 alter table rgm rename to rgm_student;
 
 select * from rgm_student;
 
 create database dummuy;
 show databases;
 drop database dummuy;  -- to delete entire database

-- to add column in table
alter table rgm_student add address2 varchar(30);

-- to adda data in this column use update
update rgm_student set address2="pogaruru" where id=100;

-- to change varchar size ie. datatype size
alter table rgm_student modify column address2 varchar(60);

-- to drop particular column
alter table rgm_student drop column address2;
 
 -- drop  more than one columns  at  a time
 select * from student;
alter table student add grades varchar(30);
alter table student add score varchar(30);
alter table student drop grades,drop score;
-- NOTE: primary key can't be deleted

create table studentopy(
id int primary key not null,
stname varchar(30) not null,
marks int not null);

select * from studentopy;
insert into studentopy select * from student;

-- delete
delete from studentopy;

-- aggregate operartions
select * from student;
 select max(marks) from student;
 select min(marks) from student;
 select avg(marks) from student;
 select count(marks) from student;
 select sum(marks) from student;
 select sum(marks) as sum from student;
 select count(stname) from student;
-- select sum(stname) from student; sum works on int only

create database exercise;

create table customer(
cus_id int primary key not null,
cus_name varchar(30) not null,
grade int not null,
salesman_id int);

select * from  customer;

insert into customer values(101,"suma",90,201);
insert into customer values(102,"gullu",89,202);
insert into customer values(103,"prachi",88,203);
insert into customer values(104,"sweety",100,204);
insert into customer values(105,"chikki",120,205);
insert into customer values(106,"bittu",50,206);
insert into customer values(107,"chinnu",67,207);
insert into customer values(108,"fuja",40,208);
insert into customer values(109,"suez",150,209);
insert into customer values(110,"chummu",200,210);

alter table customer add city varchar(30);

update customer set city="hyderbad" where cus_id=110;
update customer set city="nashik" where cus_id=104;
update customer set city="hyderbad" where cus_id=107;
update customer set city="kerala" where cus_id=105;
update customer set city="mumbai" where cus_id=103;
update customer set city="mumbai" where cus_id=102;


-- Write sql qeury to find details of cutomer whose grade are above 100
select * from customer where grade>100;
-- Write sql qeury to find details of cutomer whose grade are above and equal to 100
select * from customer where grade>=100;
-- write a sql query to find details of customer  ascending order
select * from customer order by grade ASC;
-- write sql query to dispaly who wre living hydrebad and grade less than or eqaul to 100
select * from customer where city="hyderbad" and grade>100;
-- dispaly customer name who are from hyderbad or grade above 100
select cus_name from customer where city="hyderbad" or grade>100;
-- sql query to find cust-details living in kerala city or who don't have more than 100
select * from customer where city="kerala" or grade!=100;
select * from customer where city="kerala" or not grade>100;
-- sql query to identify customers who don't belong to city mumbai or grade that not exceeds 200
select * from customer where  not city="mumbai" or   grade>=200;
select * from customer where  not city="mumbai" and  grade>=200;
select * from customer where  not city="mumbai" and  not grade>=200;

-- to find order details excluding date 30-04-23 and salesman id more than 202 or purchase amount >1000
create table orders(
ord_num int primary key not null,
purchase_amount int,
order_date date,
cus_id int,
salesman_id int
);

select * from orders;

insert into orders values(2002,1000,'2003-04-23',100,200);
insert into orders values(2003,1100,'2003-04-25',101,201);
insert into orders values(2004,1000,'2003-04-23',102,202);
insert into orders values(2023,2000,'2023-04-30',103,203);
insert into orders values(2022,4500,'2023-05-01',104,204);
-- got to above query ->-- to find order details excluding date 30-04-23 and salesman id more than 202 or purchase amount >1000
select * from orders where not order_date='2003-04-23' and salesman_id >202 or purchase_amount>1000;

create table salesman(
salesman_id int primary key,
sal_name varchar(30),
city varchar(30),
commission float);

select * from salesman;

insert into salesman values(200,"suma","pamidi",0.45);
insert into salesman values(201,"thrisha","allagadda",1.22);
insert into salesman values(202,"pooja","anantapur",0.45);
insert into salesman values(203,"sujatha","kurnool",2.45);
insert into salesman values(204,"bhavana","anantapur",1.45);
insert into salesman values(205,"vijaya","maidhukur",4.45);

-- to find salesman details whsoe comission are with in range form 0.23 to 1.45
select * from salesman where commission between 0.23 and 1.45;
-- find salesman details whose name starts with s letter
select * from salesman where sal_name  like "s%";
-- create new column address, insert some data in address column and display all those address in desc order

alter  table salesman add address varchar(30);
update salesman set address="pamidi" where salesman_id=200;
update salesman set address="america" where salesman_id=201;
update salesman set address="wasington" where salesman_id=202;
update salesman set address="africa" where salesman_id=203;
update salesman set address="london" where salesman_id=204;
update salesman set address="nashik" where salesman_id=205;

select * from salesman order by address DESC;

alter table salesman rename column address to salesman_address ;

select salesman_address from salesman order by salesman_address DESC;
select * from salesman;
