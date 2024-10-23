-- creation des tables

CREATE TABLE Customer (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(20) NOT NULL,
    customer_tel NUMBER
);

CREATE TABLE Product (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(20) NOT NULL,
    price NUMBER CHECK (price > 0)
);

CREATE TABLE Orders (
    customer_id VARCHAR(20),
    product_id VARCHAR(20),
    quantity NUMBER,
    amount NUMBER,
    PRIMARY KEY (customer_id, product_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- ajout des columns

ALTER TABLE Product ADD Category VARCHAR2(20);

ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;