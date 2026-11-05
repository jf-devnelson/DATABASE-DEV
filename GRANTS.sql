CREATE DATABASE school_db;
USE school_db;
CREATE TABLE students (
 student_id INT PRIMARY KEY AUTO_INCREMENT,
 full_name VARCHAR(100),
 course VARCHAR(50),
 year_of_study INT );
 INSERT INTO students (full_name, course, year_of_study)
 VALUES 
 ('John Kamau', 'Computer Science', 1),
 ('Mary Wanjiku', 'Information Technology', 2),
 ('Peter Otieno', 'Software Engineering', 3);
 CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'Admin@123';
 CREATE USER 'lecturer_user'@'localhost' IDENTIFIED BY 'Lect@123';
 CREATE USER 'student_user'@'localhost' IDENTIFIED BY 'Stud@123';
 CREATE USER 'auditor_user'@'localhost' IDENTIFIED BY 'Audit@123';
 GRANT ALL PRIVILEGES ON school_db.* TO 'admin_user'@'localhost';
 GRANT SELECT, INSERT ON school_db.students TO 'lecturer_user'@'localhost';
 GRANT SELECT ON school_db.students TO 'student_user'@'localhost';
 GRANT SELECT ON school_db.students TO 'auditor_user'@'localhost';
 CREATE ROLE 'data_entry_role'; 
 GRANT SELECT, INSERT ON school_db.students TO 'data_entry_role';
 GRANT 'data_entry_role' TO 'lecturer_user'@'localhost'; 
 SET DEFAULT ROLE 'data_entry_role' TO 'lecturer_user'@'localhost';
 FLUSH PRIVILEGES;
 SHOW GRANTS FOR 'admin_user'@'localhost';
 SHOW GRANTS FOR 'lecturer_user'@'localhost';
 SHOW GRANTS FOR 'student_user'@'localhost';
 SHOW GRANTS FOR 'auditor_user'@'localhost';





