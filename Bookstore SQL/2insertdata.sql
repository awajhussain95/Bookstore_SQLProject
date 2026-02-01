/*Bookstore SQL Project
Author: Awaj Hussain
Purpose: Practice SQL and Business Analysis Queries*/

/*Insert values into the tables*/
INSERT INTO author(author_id, name, birth_year, country)
VALUES
(1, 'J K Rowling', 1965, 'UK'),
(2, 'George R. R. Martin', 1948, 'USA'),
(3, 'Haruki Murakami', 1949, 'Japan'),
(4, 'Isabel Allende', 1942, 'Chile');


INSERT INTO books(book_id, Title, genre, Price, author_id)
VALUES
(1, 'Harry Potter and The Philosopher"s Stone','Fantasy',20.99, 1),
(2, 'Harry Potter and The Chambers of Secrets','Fantasy',22.50, 1),
(3, 'A Game of Thrones','Fantasy',25.00, 2),
(4, 'A Clash of Kings','Fantasy',27.50, 2),
(5, 'Norwegian Wood','Fiction',18.75, 3),
(6, 'Kafka on the Shore','Fiction',20.99, 3),
(7, 'The House of Spirits','Magical Realism',21.00, 4),
(8, 'Eva Luna', 'Fiction',17.50, 4);


INSERT INTO customers(customer_id, name, email, Phone)
VALUES
(1, 'Alice Johnson', 'alice@example.com', '3847578562'),
(2, 'Bob Smith', 'bob@example.com', '3847584752'),
(3, 'Charlie Brown', 'charlie@example.com', '385656562'),
(4, 'Diana Prince', 'diana@example.com', '3847765862');


INSERT INTO orders(order_id, customer_id, order_date)
VALUES
(1, 1, '2026-01-18'),
(2, 2, '2026-01-20'),
(3, 1, '2026-01-23'),
(4, 3, '2026-01-24');


INSERT INTO Order_items(order_item_id, order_id, book_id, quantity)
VALUE
(1, 1, 1, 2),
(2, 1, 5, 1),
(3, 2, 3, 1),
(4, 2, 7, 1),
(5, 3, 2, 1),
(6, 4, 6, 2);
