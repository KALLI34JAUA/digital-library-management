CREATE DATABASE digital_library;
USE digital_library;

CREATE TABLE users(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(50),
password VARCHAR(50),
role ENUM('admin','user')
);

CREATE TABLE books(
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100),
author VARCHAR(50),
category VARCHAR(50),
status ENUM('available','issued')
);

CREATE TABLE issued_books(
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
book_id INT,
issue_date DATE,
due_date DATE,
return_date DATE,
fine DECIMAL(10,2)
);

CREATE TABLE queries(
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
subject VARCHAR(100),
message TEXT,
status ENUM('pending','resolved')
);

INSERT INTO users(name,email,password,role) VALUES ('Admin','admin@library.com','admin','admin');
