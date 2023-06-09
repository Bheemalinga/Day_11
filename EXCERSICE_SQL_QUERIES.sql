CREATE DATABASE EXERCISE;

CREATE TABLE CUSTOMER(
ID INT PRIMARY KEY,
NAME VARCHAR(20),
CITY VARCHAR(30),
GRADE INT,
SALESMAN_ID INT);

INSERT INTO CUSTOMER VALUES
(101,"BHEEMA","ANATAPUR",175,418),
(102,"LINGA","NANDYAL",480,176),
(103,"SAI","KURNOOL",783,323),
(104,"RAM","HYDERABAD",978,673),
(105,"MOHIT","MUMBAI",890,543),
(106,"RAMU","DELHI",489,847),
(107,"SOUGI","DEHRADUN",874,237),
(108,"KURO","HARYANA",290,782),
(109,"PEPPER","GUJARAT",471,327),
(110,"PRASHANTH","BANGLORE",873,363);


SELECT * FROM CUSTOMER WHERE GRADE >= 100 ORDER BY GRADE;

-- SELECT NAME,GRADE FROM CUSTOMER WHERE CITY = "anantapur";

SELECT * FROM CUSTOMER
WHERE CITY = "HYDERABAD" OR GRADE > 400;



-- SQL QUERY FIND THE CUSTOMER DETAILS
-- WHO ARE EITHER LIVING IN ANANTAPUR OR 
-- WHO DON'T HAVE GRADE MORE THAN 400.
SELECT * FROM CUSTOMER
WHERE CITY = "ANANTAPUR" OR NOT GRADE > 400;


-- CUSTOMER WHO DO NOT BELONG TO MUMBAI OR HAVE A GRADE 
-- EXCEEDS 400.

SELECT * FROM CUSTOMER WHERE
NOT CITY = "MUMBAI" OR NOT GRADE > 400;



SELECT * FROM CUSTOMER;





-- 
CREATE TABLE ORDERS(
ORDER_NUM INT,
PURCHASE_AMOUNT INT,
ORDER_DATE DATE,
CUSTOMER_ID INT,
SALESMAN_ID INT);

INSERT INTO ORDERS VALUES
(2002,1000,"2023-04-23",100,200),
(2003,1100,"2023-04-25",101,201),
(2003,1200,"2023-04-30",102,202),
(2004,1300,"2023-04-28",103,203),
(2005,1000,"2023-05-21",104,204);

SELECT * FROM ORDERS;

-- FIND the order details excluding the data 30-04-2023
-- and salesman id is more than 202 
-- or purchase amount greater than 1000.
SELECT * FROM ORDERS
WHERE NOT ORDER_DATE = "2023-04-30"
AND NOT SALESMAN_ID < 202
OR NOT PURCHASE_AMOUNT < 1000;

CREATE TABLE SALESMAN(
SALESMAN_ID INT PRIMARY KEY,
NAME VARCHAR(30),
CITY VARCHAR(30),
COMMISSION FLOAT);

SELECT * FROM SALESMAN;

INSERT INTO SALESMAN VALUES
(200,"Prasu","Kurnool",0.45),
(201,"Keerti","Nandyal",0.230),
(202,"Kaki","Hyderabad",0.32),
(203,"Keerthu","Banglore",0.43);

-- salesman details whose commissions
-- are within the range from
-- 0.23 to 0.43.

select * from salesman
where commission between 0.23 and 0.43;


-- create a new column address
-- insert some data in the address column
-- and display all those address in descending order

ALTER TABLE SALESMAN ADD ADDRESS VARCHAR(20);

UPDATE SALESMAN SET ADDRESS = "HYD" WHERE NAME ="Prasu";
UPDATE SALESMAN SET ADDRESS = "Kurnool" WHERE NAME ="Keerti";
UPDATE SALESMAN SET ADDRESS = "Kadapa" WHERE NAME ="Kaki";
UPDATE SALESMAN SET ADDRESS = "Banglore" WHERE NAME ="Keerthu";

SELECT * FROM SALESMAN ORDER BY ADDRESS DESC;

-- Create a new column address, insert some data in the address
-- 