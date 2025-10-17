CREATE DATABASE IF NOT EXISTS db_alx_book_store;

USE db_alx_book_store;

CREATE TABLE IF NOT EXISTS Books (

    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130),
    author_id INT FOREIGN KEY REFERENCES Authors(author_id),
    price DOUBLE,
    publication_date DATE
);
CREATE TABLE IF NOT EXISTS Authors (

    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS Customers (

    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215),
    email VARCHAR(255),
    address TEXT
);
CREATE TABLE IF NOT EXISTS Orders (

    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT FOREIGN KEY REFERENCES Customers(customer_id),
    order_date DATE
);

CREATE TABLE IF NOT EXISTS Order_Items (

    orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT FOREIGN KEY REFERENCES Orders(order_id),
    book_id INT FOREIGN KEY REFERENCES Books(book_id),
    quantity DOUBLE
);