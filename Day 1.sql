create database Schooldb;
-- To specify the database use--
use Schooldb;
-- Create Table--
create table students(Student_ID int,Name varchar(50),Age int,Grade char(1));

-- To check the structure of the table--

describe students;

-- Insert into table--
insert into students (Student_ID,Name,Age,Grade) values(1,"Krishna",30,"A"),(2,"Rahul",22,"B"),(3,"Manish",26,"B"),(4,"Nipun",28,"C"),(5,"Shubham",30,"A");
-- Content/ retrive all the content in table --
-- Select Statement--
select * from students;

-- Only see two columns --
select Name,Age from students;

select * from students;

-- Where clause  to use filter the data--
-- Students who are smaller than 30--
select * from students where Age<30;

-- Names whose Grade A --
select Name,Grade from students where Grade ="A";

-- Logical Opreators (And,Or,Not) --
    -- And Opreator--
-- Names whose Age<30 and also grade ="B"--
select Name,Grade from students where Age<30 and Grade ="B";
    -- Or Opreator---
-- Names whose Age>28 or also grade ="A"--
select Name,Grade from students where Age>28 and Grade ="C";

-- Not Opreator--
select * from students where not Age>25;

-- Pattern Matching Opreator  Like , Not like ( Wild card character)--
    --    LIKE OPREATOR---
-- Students name which start with "K"--
select * from students where Name like "K%"; 

-- Students name which ends with "A"--

select * from students where Name like "%A"; 

-- Second letter is "A"--alter
select * from students where Name like "_a%"; 

-- Names where names with only five characters--
select * from students where Name like "_____"; 









