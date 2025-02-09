CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE NOT NULL,
    author_id INT NOT NULL,
    FOREIGN KEY (author_id)
REFERENCES Authors(author_id)
);
CREATE TABLE Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE,
    address TEXT NOT NULL
);
CREATE TABLE Orders(
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULl,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) 
REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Details(
    orderdetail_id INT PRIMARY KEY,
    quantity DOUBLE NOT NULL,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    FOREIGN KEY(order_id) REFERENCES Orders(order_id),
    FOREIGN KEY(book_id) REFERENCES Books(book_id)
);
SHOW TABLES;