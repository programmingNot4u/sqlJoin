-- Create Database
CREATE DATABASE UU_56;

-- Use the created Database
USE UU_56;

-- Create student Table
CREATE TABLE student(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  NAME VARCHAR(40),
  mobile VARCHAR(11)
);

student-- Insert Data into student Table
INSERT INTO student (NAME, mobile) VALUES 
('Eren Yeager', '(+81) 75 390 2827'),
('Levi Ackerman', '(+81) 75 929 7094'),
('Rony', '(+81) 75 490 1247'),
('Mikasa Ackerman', '(+81) 75 699 4699'),
('Armin Arlert', '(+81) 75 699 4699');

-- Verify Data in student Table
SELECT * FROM student;






-- Create student_info Table
CREATE TABLE student_info(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  st_id INT NOT NULL,
  address VARCHAR(40),
  batch VARCHAR(11),
  FOREIGN KEY (st_id) REFERENCES student(id)
);

-- Insert Data into student_info Table
INSERT INTO student_info (st_id, address, batch) VALUES 
(1, 'Shiganshina', '56 A'),
(3, 'Wall Maria', '56 A'),
(5, 'Paradis Island', '56 B');

-- Verify Data in student_info Table
SELECT * FROM student_info;

SELECT * FROM student NATURAL JOIN student_info;

SELECT t1.*, t2.* FROM student AS t1 
INNER JOIN student_info AS t2 
ON t1.id = t2.st_id;

SELECT t1.*, t2.* FROM student AS t1 
LEFT JOIN student_info AS t2 
ON t1.id = t2.st_id;

SELECT t1.*, t2.* FROM student AS t1 
RIGHT JOIN student_info AS t2 
ON t1.id = t2.st_id;
