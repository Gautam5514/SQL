CREATE DATABASE xyz_conma;
USE xyz_conma;

CREATE TABLE employee (
   id INT PRIMARY KEY,
   name VARCHAR(100),
   salary INT
);

INSERT INTO employee
(id, name, salary)
VALUES
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",45000);

SELECT * FROM employee;

CREATE DATABASE school;
USE school;

CREATE TABLE student (
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101,"gautam", 99, "A", "Jharkhand"),
(102,"ravi", 89, "B", "Hazaribagh"),
(103,"roshan", 79, "C", "Latehar"),
(104,"faiz", 86, "B", "Ranchi"),
(105, "kunal", 81, "B", "Ranchi"),
(106, "ritika", 75, "C", "Datalganj"),
(107, "yashika", 100, "A", "Palamu");

SELECT * FROM student;

SELECT *
FROM student 
WHERE marks > 80;

SELECT *
FROM student 
WHERE city = "Ranchi";

SELECT * 
FROM student 
WHERE marks > 80 AND city = "Ranchi";

SELECT * 
FROM student 
WHERE marks > 90 OR city = "Ranchi";

SELECT *
FROM student 
WHERE marks BETWEEN 80 AND 90;

SELECT *
FROM student 
WHERE city IN ("Palamu", "Ranchi");

SELECT *
FROM student 
WHERE city NOT IN ("Koderma", "Ranchi");

SELECT *
FROM student 
WHERE MARKS > 80
LIMIT 3;

SELECT *
FROM student
ORDER BY marks ASC;

SELECT *
FROM student
ORDER BY marks DESC
LIMIT 3;

SELECT MAX(marks)
FROM student;

SELECT MIN(marks)
FROM student;

SELECT AVG(marks)
FROM student;

SELECT COUNT(name)
FROM student;

SELECT city, count(rollno)
FROM student
GROUP BY city;

SELECT city , avg(marks)
FROM student
GROUP BY city
ORDER BY AVG(marks);

SELECT grade, COUNT(rollno)
FROM student
GROUP BY  grade
ORDER BY grade;

SELECT city, COUNT(rollno)
FROM student
GROUP BY city
HAVING MAX(marks) > 90;

CREATE DATABASE payment;
USE payment;

CREATE TABLE method(
   customer_id INT PRIMARY KEY,
   customer VARCHAR(20),
   mode VARCHAR(10),
   city VARCHAR(10)
);

INSERT INTO method
(customer_id, customer, mode, city)
VALUES
(101, "alia bhatt", "netbanking", "portland"),
(102, "sunny leone", "credit card", "miami"),
(103, "mia khalifa", "credit card", "scatland"),
(104, "jacquline", "netbanking", "denver"),
(105, "kriti", "credit card", "newzlend"),
(106, "shradha kapoor", "debit card", "india"),
(107, "katrina kaif", "netbanking", "qatar"),
(108, "karena kapoor", "debit card", "singhapor"),
(109, "vani kapoor", "netbanking", "england"),
(110, "romy pandit", "credit card", "america");