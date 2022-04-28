CREATE DATABASE jdbcdb; 
use jdbcdb;
desc customers;

CREATE TABLE customers(
ID INT(20) not null,
NAME VARCHAR(30),
AGE INT,
CHECK (AGE >18),
ADDRESS CHAR(30),
SALARY DECIMAL (18,2)
);


CREATE TABLE emp_info(
empid INT(20) not null,
ename VARCHAR(30),
skill VARCHAR(30),
sal INT,
address VARCHAR(30)

);

CREATE TABLE dept(
deptid INT(20) not null,
dname VARCHAR(30),
empid INT,
no_of_emp INT,
discp VARCHAR(50)

);
CREATE TABLE product(
pID INT(20) not null,
product_name VARCHAR(50),
did INT,
price INT,
status VARCHAR(50)
);
CREATE TABLE review(
review_id INT(20) not null,
review VARCHAR(100),
pid INT,
id INT
);

insert into customers values (1,'Bharath',25,'Bangalore',92789);
insert into customers values (2,'Uday',22,'Delhi',878689);
insert into customers values (3,'Kishna',40,'Hyderabad',65689);
insert into customers values (4,'Manoj',22,'Japan',869989);
insert into customers values (5,'Likitha',19,'Mumbai',76588);


insert into emp_info values(51,"Ram","java developer",987989,"goa");
insert into emp_info values(52,"Rohan","AWS",876887,"panjab");
insert into emp_info values(53,"Prabhas","Python",773468,"sikkim");
insert into emp_info values(54,"yash","Ruby",98234,"arunanchal predesh");
insert into emp_info values(55,"Nithin","c++",238777,"andra predesh");


insert into dept values(101,"software developer",51,5,"developing software products");
insert into dept values(102,"android developer",54,12,"developing android product");
insert into dept values(103,"devops",52,9,"design the cloud architecture");
insert into dept values(104,"front end-designer",51,22,"design the UI/UX");


insert into product values(151,"alarm system",101,983479,"in-progress");
insert into product values(152,"pubg",102,87878,"in-progress");
insert into product values(153,"calculator",104,3453445,"completed");
insert into product values(154,"netapp infrastructure",103,235332,"in-progress");
insert into product values(155,"amazon infrastructure",103,873468,"completed");


insert into review values(201,"good with various interesting features",151,1);
insert into review values(202,"weldone",153,4);
insert into review values(203,"congrats",155,2);
insert into review values(204,"maintain consistency well acheive",152,1);
insert into review values(205,"success would be yours, keeep pushing",151,2);

select * from customers;
select * from emp_info;
select * from dept;
select * from product;
select * from review;