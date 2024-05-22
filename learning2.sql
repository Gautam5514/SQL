CREATE DATABASE college;


USE college;

 CREATE TABLE student(
 rollno INT PRIMARY KEY,
 name VARCHAR(50)
 );

SELECT * FROM student;

INSERT INTO student
(rollno, name)
VALUES
(1, "gautam"),
(2, "ravi"),
(3, "manish"),
(4, "lekho");

INSERT INTO student VALUES (5, "hero");

CREATE DATABASE xyz_company;
USE xyz_company;

CREATE TABLE employee(
  id INT PRIMARY KEY,
  name VARCHAR(100),
  salary INT
);

INSERT INTO employee
(id, name, salary)
VALUES
(1, "Adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);

SELECT * FROM employee;

CREATE DATABASE google;
USE google;

CREATE TABLE gautam(
  id INT PRIMARY KEY,
  name VARCHAR(100),
  job FLOAT,
  salary INT  
);


INSERT INTO gautam
(id, name, job, salary)
VALUES
(1, "gautam", 1, 100000),
(2, "Ravi", 2, 200000),
(3, "hero", 3, 300000),
(4, "roshan", 4, 64000),
(5, "sagar", 1, 75555);

SELECT * FROM gautam;

CREATE DATABASE hello;
USE hello;

CREATE TABLE hyy(
  id INT PRIMARY KEY,
  name VARCHAR(100)
);

INSERT INTO hyy
(id, name)
VALUES
(1, "Hero"),
(2, "Heroine"),
(3, "Alia"),
(4, "Bhatt");

SELECT * FROM hyy;

CREATE TABLE temp1(
  id INT UNIQUE
);

INSERT INTO temp1 VALUES(101);
INSERT INTO temp1 VALUES(101);

SELECT * FROM temp1;

CREATE TABLE temp1(
  id INT,
  name VARCHAR(50),
  age INT,
  city VARCHAR(20),
  PRIMARY KEY(id, city)
);

CREATE TABLE emp (
  id INT,
  salary INT DEFAULT 25000
);

INSERT INTO emp (id) VALUES(101);
SELECT * FROM emp;
DROP DATABASE college;


CREATE DATABASE costumer;
USE costumer;

CREATE TABLE naya(
  costumerId INT PRIMARY KEY,
  customerName VARCHAR(20),
  contactNumber INT,
  address VARCHAR(30),
  city VARCHAR(20),
  postalCode INT,
  country VARCHAR(20)
);

INSERT INTO naya
  (costumerID, costumerName, contactNumber, address, city, postalCode, country)
VALUES
(1, "Alfred Fullter", 52245521, "Canada", "British", 54254, "Asia"),
(2, "Anna turuli jay", 8454554, "Canada", "British", 42544, "Asia"),
(3, "Antonia Tarke", 564455, "America", "New York", 54544, "South America"),
(4, "Around hell", 45645546, "Berlin", "Italy", 545644, "Rome"),
(5, "Gautam Pandit", 5453454, "Jharkhand", "Bharat", 595654, "India");
