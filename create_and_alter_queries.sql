CREATE DATABASE IF NOT EXISTS SALES;
USE SALES;

/* Command to remove tables from SALES database */
/*DROP TABLE sales;
DROP TABLE customers;
DROP TABLE items;
DROP TABLE companies;*/

CREATE TABLE IF NOT EXISTS sales
/* Create Sales table*/
(
	purchase_number INT NOT NULL AUTO_INCREMENT,
	date_of_purchase DATE NOT NULL, 
	customer_id INT NOT NULL,
	item_code VARCHAR(10) NOT NULL,
PRIMARY KEY(purchase_number)
);

CREATE TABLE IF NOT EXISTS customers 
/* Create customers table*/
(
	customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255), 
    number_of_complaints INT DEFAULT 0,
PRIMARY KEY (customer_id)
);

CREATE TABLE IF NOT EXISTS items
/* Create items table*/
(
	item_code VARCHAR(255),
    item VARCHAR(255),
    unit_price NUMERIC(10, 2),
    company_id VARCHAR(255),
PRIMARY KEY(item_code)
);

CREATE TABLE IF NOT EXISTS companies
/* Create companies table*/
(
	company_id VARCHAR(255),
    company_name VARCHAR(255) NOT NULL,
    head_quarters_phone_number VARCHAR(255),
PRIMARY KEY(company_id)
);

/* ALTER QUERIES FOR TABLES ABOVE*/
/*  --------------  Alter sales table  --------------  */
ALTER TABLE sales
	ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
	ADD FOREIGN KEY (item_code) REFERENCES items(item_code) ON DELETE CASCADE;

/*  --------------  Alter companies  --------------  */
ALTER TABLE companies
	ADD UNIQUE KEY (head_quarters_phone_number);

ALTER TABLE companies 
CHANGE COLUMN company_name company_name VARCHAR(255) NULL;

ALTER TABLE companies 
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;