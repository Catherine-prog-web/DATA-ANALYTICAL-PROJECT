CREATE TABLE User_customer(
customer_id INT PRIMARY KEY,
last_name VARCHAR (100),
email VARCHAR(70),
phone_number VARCHAR(50),
address VARCHAR (200),
date_of_birth DATE,
gender VARCHAR(20),
country VARCHAR(50)
);

CREATE TABLE savings_savingsaccount(
transaction_id INT PRIMARY KEY,
transaction_date DATE,
deposit_amount DECIMAL (10,2),
transaction_type VARCHAR (20)
CHeck(transaction_type =
'deposit'),
balance DECIMAL(10,2)
);


CREATE TABLE Plans_plan (
plan_id INT PRIMARY KEY,
customer_id INT,
plan_name VARCHAR (100),
plan_description VARCHAR(200),
plan_type VARCHAR (50),
creation_date DATE,
status VARCHAR(20)
);


CREATE TABLE withdrawals_withdrawal(
withdrawal_id INT PRIMARY KEY,
account_number INT,
withdrawal_date DATE,
withdrawal_amount DECIMAL (10,2),
transaction_type VARCHAR(20)
CHECK (transaction_type =
'withdrawal'),
balance DECIMAL(10,2)
);










