CREATE DATABASE student;
USE student;

CREATE TABLE info(
    ROLL_NO INT PRIMARY KEY,
    NAME VARCHAR(20),
    ADDRESS VARCHAR(30),
    PHONE BIGINT,
    Age INT);
    
INSERT INTO info(ROLL_NO, NAME, ADDRESS, PHONE, Age)
	VALUES
    (1,"GAUTAM","KODERMA", 65655656, 20),
    (2,"RAVI", "BARHI", 2465252, 21),
    (3,"SAGAR", "BHOPAL", 654555, 22),
    (4,"GAURAV", "INDOR", 54545, 20),
    (5,"ROMY", "GIRIDIH", 544484, 20),
    (6,"RAHUL", "MUMBAI", 546555, 21);
    
    SELECT * FROM info;
    DROP TABLE info;
UPDATE info
# this is the update on the sql
SET NAME = 'GAUTAM', ADDRESS = 'KODERMA', PHONE = 65655656, Age = 20
WHERE ROLL_NO = 1;
