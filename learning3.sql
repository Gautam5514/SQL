CREATE DATABASE college;
USE college;

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
(101, "Gautam", 99, "A", "jharkhand"),
(102, "Roshan", 79, "B", "latehar"),
(103, "Faiz", 69, "C", "Ranchi"),
(104, "Kunal", 49, "D", "Hazaribag"),
(105, "Ravi", 33, "E", "Atka"),
(106, "Manish", 99, "F", "Daltonganj");

SELECT DISTINCT * FROM student;

SELECT city FROM student;
DROP DATABASE college;

CREATE DATABASE college;
USE college;

CREATE TABLE student (
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
);

CREATE TABLE dept (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE teacher (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  dept_id INT,
  FOREIGN KEY (dept_id) REFERENCES dept(id)
 );


INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "Gautam", 99, "A", "jharkhand"),
(102, "Roshan", 79, "B", "latehar"),
(103, "Faiz", 69, "C", "Ranchi"),
(104, "Kunal", 49, "D", "Hazaribag"),
(105, "Ravi", 33, "E", "Atka"),
(106, "Manish", 99, "F", "Daltonganj");

SELECT * FROM student;
SELECT grade, count(rollno)
FROM student
GROUP BY grade
ORDER BY grade;

SELECT city, count(rollno)
FROM student
GROUP BY city
HAVING MAX(marks) > 90;

SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) > 90
ORDER BY city DESC;

SET SQL_SAFE_UPDATES = 0;


UPDATE student
SET grade = "O"
WHERE grade = "A";

SELECT * FROM student;

UPDATE student
SET marks = 19
WHERE rollno = 106;

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

UPDATE student
SET marks = marks + 1;

DELETE FROM student
WHERE marks < 33;

SELECT * FROM student;
