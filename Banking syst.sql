CREATE DATABASE nelbanking_system;
USE nelbanking_system;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE branches (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);
CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    branch_id INT,
    balance DECIMAL(12,2) DEFAULT 0.00,
    account_type VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);
CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(20),
    amount DECIMAL(12,2),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
CREATE TABLE loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    loan_amount DECIMAL(12,2),
    interest_rate DECIMAL(5,2),
    loan_status VARCHAR(20),

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers (first_name,last_name,email,phone)
VALUES
('Jeff','Kili','john@email.com','0700000000'),
('Mary','Kip','mary@email.com','0711111111');
INSERT INTO branches (branch_name,city)
VALUES
('Central Branch','Nairobi'),
('Westlands Branch','Nairobi');
INSERT INTO accounts (customer_id,branch_id,balance,account_type)
VALUES
(1,1,5000,'Savings'),
(2,2,8000,'Current');
SELECT * FROM customers;
SELECT * FROM accounts;
SELECT * FROM branches;

