CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
    );
    
    INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        
        select * from WORKER;
        
 --- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 
 
 SELECT * FROM Worker
 ORDER BY FIRST_NAME ASC , DEPARTMENT desc ;
 
 
  ---  2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table
  
  Select * from Worker 
  where first_name in ('Vipul','Satish');
  
  --- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 

select * from worker
 where first_name like '_____h'; 

--- 4. Write an SQL query to print details of the Workers whose SALARY lies between 100000 TO 500000.
SELECT * FROM WORKER  where salary between 100000 AND 500000 ; 


--- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 

SELECT DISTINCT * FROM worker;


--- 6. Write an SQL query to show the top 6 records of a table. 

 SELECT * FROM Worker
 ORDER BY SALARY DESC ; 


--- 7. Write an SQL query to fetch the departments that have less than five people in them. 
SELECT * FROM worker
limit 5 ;



--- 8. Write an SQL query to show all departments along with the number of people in there. 


SELECT DEPARTMENT , COUNT(worker_id) AS number_of_people
FROM worker
GROUP BY department;


--- 9. Write an SQL query to print the name of employees having the highest salary in each department

SELECT department, first_name , last_name, salary
FROM worker
WHERE (department, salary) IN (
    SELECT department, MAX(salary) AS max_salary
    FROM worker
    WHERE worker.department = worker.department
    GROUP BY department
);


create database student7;
USE student7;

CREATE TABLE student7 (
	student_ID INT PRIMARY KEY,
	student_NAME varchar(50),
	sex VARCHAR(20),
	percentage INT,
	class int,
    SEC VARCHAR(10),
	strem  VARCHAR(25) , 
    DOB DATE 
    );
    
    INSERT INTO STUDENT7 VALUES
    (1001 , 'surekha joshi' ,  'femal' , 82 , 12 , 'a' , 'cscience' , '1998-8-3'  ),
    (1002 , 'maahi agrawal' ,  'femal' , 56 , 11 , 'c' , 'commerce' , '2008-11-23'),
    (1003 , 'sanam verma '  ,  'male'  , 59 , 11 , 'c' , 'commerce' , '2006-06-29' ),
    (1004 , 'ronit kumar'   ,  'male'  , 63 , 11 , 'c' , 'commerce' , '1997-05-11 '),
    (1005 , 'dipesh pulkit' ,  'male'  , 78 , 11 , 'b' , 'science'  , '2003-09-14' ),
    (1006 , 'jahanvi puri'  ,  'femal' , 60 , 11 , 'b' , 'commerce' , '2008-07-11' ),
    (1007 , 'sanam kumar'   ,  'male'  , 23 , 12 , 'f' , 'commerce' , '1998-08-30' ),
    (1008 , 'sahil saras'   ,  'male'  , 56 , 11 , 'c' , 'commerce' , '2008-11-07' ),
    (1009 , 'akshra asarwal' , 'femal' , 72 , 12 , 'b' , 'commerce' , '1996-01-10' ),
    (1010 , 'stuti mishra'   , 'femal' , 39 , 11 , 'f' , 'science'  , '2008-11-23' ),
    (1011 , 'harsh agrawal'  , 'male'  , 42 , 11 , 'c' , 'science'  , '1998-08-03' ),
    (1012 , 'nikung agarwal' ,  'male' , 49 , 12 , 'c' , 'commerce' , '1998-06-28' ),
    (1013 , 'akriti saxena'  ,  'femal', 89 , 12 , 'a' , 'science'  , '2008-11-23' ),
    (1014 , 'tani rastogi'   ,  'femal', 82 , 12 , 'a' , 'science'  , '2008-11-23' );
    
    
    
    
  --   1 To display all the records form STUDENT table. SELECT * FROM student 
     
     select * from student7;
    
-- 2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB FROM student ; 

select student_NAME, DOB from student7 ;

--- 3. To display all students record where percentage is greater of equal to 80 FROM student table. 

select * from student7 where percentage >= 80;


--- 4. To display student name, stream and percentage where percentage of student is more than 80 

   select student_id , strem ,percentage where percentage > 80;
   
--- 5. To display all records of science students whose percentage is more than 75 form student table. 
   
   SELECT * From student7 WHERE strem ='science' and 	percentage  > 75;