CREATE DATABASE giraffe;

USE giraffe;

CREATE TABLE student(
	student_id INT PRIMARY KEY,
    student_name VARCHAR(20),
    major VARCHAR(20)
);

DESCRIBE student;

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL;

ALTER TABLE student DROP COLUMN gpa;

ALTER TABLE student ADD gpa DECIMAL(3,2);

INSERT INTO student VALUES (1, 'Jack', 'Biology');

SELECT * FROM student;

INSERT INTO student VALUES (2, 'Kate', 'Sociology');

INSERT INTO student (student_id, student_name) VALUES (3, 'Claire');

CREATE TABLE student(
	student_id INT PRIMARY KEY,
    student_name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided'
);

INSERT INTO student(student_id, student_name) VALUES (1, 'Jack');

CREATE TABLE student(
	student_id INT PRIMARY KEY auto_increment,
    student_name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided'
);

INSERT INTO student(student_name, major) VALUES ('Jack', 'Biology');

INSERT INTO student(student_name, major) VALUES ('Kate', 'Sociology');

UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Soc'
WHERE major = 'Sociology';

UPDATE student
SET major = 'Soc'
WHERE student_id = 1;

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';

UPDATE student
SET student_name='Tom', major='undecided'
WHERE student_id=1;

DELETE FROM student
WHERE student_id = 2;

DELETE FROM student
WHERE student_name='Tom' AND major='undecided';

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES (2, 'Kate', 'Sociology');
INSERT INTO student VALUES (3, 'Claire', 'Chemistry');
INSERT INTO student VALUES (4, 'Jack', 'Biology');
INSERT INTO student VALUES (5, 'Mike', 'Computer Science');

SELECT * FROM student;

SELECT student_name FROM student;

SELECT student_name, major FROM student;

SELECT student.student_name, student.major 
FROM student;

SELECT student.student_name, student.major 
FROM student
ORDER BY student_name;

SELECT student.student_name, student.major 
FROM student
ORDER BY student_name DESC;

SELECT *
FROM student
ORDER BY major, student_id;

SELECT *
FROM student
LIMIT 2;

SELECT * FROM student WHERE major = 'Biology';

SELECT * FROM student WHERE student_id IN (1,2,3);


