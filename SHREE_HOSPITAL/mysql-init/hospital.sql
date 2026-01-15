-- Database
CREATE DATABASE IF NOT EXISTS shree;
USE shree;

-- User Table
CREATE TABLE user_dtls (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100)
);

-- Specialist Table
CREATE TABLE specialist (
    id INT AUTO_INCREMENT PRIMARY KEY,
    spec_name VARCHAR(100)
);

-- Doctor Table
CREATE TABLE doctor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    dob VARCHAR(20),
    qualification VARCHAR(100),
    specialist VARCHAR(100),
    email VARCHAR(100),
    mobno VARCHAR(20),
    password VARCHAR(100)
);

-- Appointment Table
CREATE TABLE appointment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    fullname VARCHAR(100),
    gender VARCHAR(10),
    age VARCHAR(10),
    appoint_date VARCHAR(20),
    email VARCHAR(100),
    phno VARCHAR(20),
    diseases VARCHAR(255),
    doctor_id INT,
    address VARCHAR(255),
    status VARCHAR(50)
);

-- Sample Data
INSERT INTO specialist (spec_name)
VALUES ('Cardiologist'), ('Dentist'), ('Neurologist');

INSERT INTO doctor
(full_name, dob, qualification, specialist, email, mobno, password)
VALUES
('Dr Kumar', '1985-06-10', 'MBBS', 'Cardiologist', 'doctor@test.com', '9999999999', '1234');

INSERT INTO user_dtls
(full_name, email, password)
VALUES
('Test User', 'user@test.com', '1234');
