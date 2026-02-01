/*Bookstore SQL Project
Author: Awaj Hussain
Purpose: Practice SQL and Business Analysis Queries*/

/* create a table named author*/
CREATE TABLE author
(author_id INT PRIMARY KEY,
 author_name VARCHAR(255),
 birth_year int,
 country VARCHAR(255)
 );

/* create a table named books*/
CREATE TABLE books
(book_id Int Primary Key,
 Title Varchar(255),
 genre Varchar(255),
 Price Decimal,
 author_id Int,
 FOREIGN KEY (author_id) REFERENCES author(author_id) ON DELETE CASCADE
 );
 
 /* create a table named customers*/
 CREATE TABLE customers
(customer_id Int PRIMARY KEY,
  cust_name VARCHAR(255),
  email VARCHAR(255),
  Phone VARCHAR(255)
);
  
/* create a table named orders*/
CREATE TABLE orders
(order_id Int PRIMARY KEY,
 customer_id int,
 order_date DATE,
 FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);
   
/* create a table named order_items*/
CREATE TABLE Order_items
(order_item_id Int PRIMARY KEY,
 order_id INT,
 book_id INT,
 quantity int,
 FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
 FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE
 );