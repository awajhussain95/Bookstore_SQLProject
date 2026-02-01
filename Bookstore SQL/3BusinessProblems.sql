/*Which books are generating the most sales*/
Select Title, SUM(quantity) AS total_books_sold
FROM books b
Inner Join Order_items oi
 ON b.book_id = oi.book_id
GROUP BY Title
ORDER BY total_books_sold DESC;


/*Which author is earning the most revenue?*/
SELECT a. author_name, SUM(b.Price * oi.quantity) AS revenue
FROM author a
JOIN books b
 ON a.author_id = b.author_id
JOIN Order_items oi
 ON b.book_id = oi.book_id
GROUP BY author_name
ORDER BY revenue DESC
LIMIT 1;

/*What is the total revenue of the store?*/
SELECT SUM(b.Price * oi.quantity) AS total_revenue
FROM books b
INNER JOIN Order_items oi
 ON b.book_id = oi.order_id
GROUP BY total_revenue;

/*Who are the top 3 customers by number of books purchased?*/
SELECT cust_name, SUM(oi.quantity) AS total_books_purchased
FROM customers c
JOIN orders o
 ON c.customer_id = o.customer_id
JOIN Order_items oi
 ON oi.order_id = o.order_id
GROUP BY cust_name
ORDER BY total_books_purchased DESC
LIMIT 3;

/*Which customer spent the most money?*/
SELECT cust_name, SUM(oi.quantity*b.Price) AS money_spent
FROM customers c
JOIN orders o
 ON c.customer_id = o.customer_id
JOIN Order_items oi
 ON oi.order_id = o.order_id
JOIN books b
 ON b.book_id = oi.book_id
GROUP BY cust_name
ORDER BY money_spent DESC
LIMIT 1;

/*How many unique customers placed orders?*/
SELECT COUNT(DISTINCT customer_id)
FROM orders;

/*Which genre sells the most?*/
SELECT genre
FROM books b
JOIN Order_items oi
 ON b.book_id = oi.book_id
GROUP BY genre
ORDER BY SUM(oi.quantity) DESC
LIMIT 1;

/*Which books have never been ordered?*/
SELECT b.book_id, b.Title
FROM books b
LEFT JOIN Order_items oi
 ON b.book_id = oi.book_id
WHERE oi.book_id IS NULL;

/*Average price of books per genre?*/
SELECT genre, AVG(Price) 
FROM books
GROUP BY genre;

/*How many orders were placed each day?*/
SELECT order_date, COUNT(order_id) AS Total_Orders
FROM orders
GROUP BY order_date;
