CREATE DATABASE IF NOT EXISTS `sms_db`;
USE `sms_db`;

-- La vecchia tabella 'users' viene rimossa non è usata 
DROP TABLE IF EXISTS `users`;

CREATE TABLE IF NOT EXISTS admin(
    admin_name VARCHAR(20),
    admin_contact VARCHAR(20) UNIQUE,
    admin_email VARCHAR(50) PRIMARY KEY,
    admin_password TEXT
);

CREATE TABLE IF NOT EXISTS student_add(
    student_mno BIGINT UNIQUE,
    student_name TEXT,
    student_email VARCHAR(256) PRIMARY KEY,
    student_password TEXT,
    student_result FLOAT
);

CREATE TABLE IF NOT EXISTS faculty_add(
    faculty_mno BIGINT UNIQUE,
    faculty_name TEXT,
    faculty_email VARCHAR(256) PRIMARY KEY,
    faculty_password TEXT,
    faculty_qualification TEXT
);

CREATE TABLE IF NOT EXISTS student_notice_add(
    student_notice_date DATE,
    student_notice_name TEXT,
    student_notice_des TEXT
);

CREATE TABLE IF NOT EXISTS faculty_notice_add(
    faculty_notice_date DATE,
    faculty_notice_name TEXT,
    faculty_notice_des TEXT
);

CREATE TABLE IF NOT EXISTS fc_notice_student(
    fc_student_notice_date DATE,
    fc_student_notice_name TEXT,
    fc_student_notice_des TEXT
);

CREATE TABLE IF NOT EXISTS java_assignments(java_ch TEXT, java_des DATE);
CREATE TABLE IF NOT EXISTS python_assignments(python_ch TEXT, python_des DATE);
CREATE TABLE IF NOT EXISTS kotlin_assignments(kotlin_ch TEXT, kotlin_des DATE);
CREATE TABLE IF NOT EXISTS c_assignments(c_ch TEXT, c_des DATE);
CREATE TABLE IF NOT EXISTS php_assignments(php_ch TEXT, php_des DATE);
CREATE TABLE IF NOT EXISTS cs_assignments(cs_ch TEXT, cs_des DATE);

-- Account di test (gli stessi già usati nella Fase B)
INSERT INTO admin (admin_name, admin_contact, admin_email, admin_password)
VALUES ('Admin Test', '0000000000', 'admin@test.com', 'AdminPass123');

INSERT INTO faculty_add (faculty_mno, faculty_name, faculty_email, faculty_password, faculty_qualification)
VALUES (1, 'Faculty Test', 'faculty@test.com', 'FacultyPass123', 'PhD Test');

INSERT INTO student_add (student_mno, student_name, student_email, student_password, student_result)
VALUES (1, 'Mario Rossi', 'mario.rossi@test.com', 'Password123', 0);
