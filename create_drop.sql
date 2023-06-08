-- create and drops only here


-- Drop tables
DROP TABLE IF EXISTS Test_Projet.shoppingCart;
DROP TABLE IF EXISTS Test_Projet.orderItem;
DROP TABLE IF EXISTS Test_Projet.clientOrder;
DROP TABLE IF EXISTS Test_Projet.payment;
DROP TABLE IF EXISTS Test_Projet.userAuthentication;
DROP TABLE IF EXISTS Test_Projet.library;
DROP TABLE IF EXISTS Test_Projet.client;


CREATE TABLE IF NOT EXISTS Test_Projet.client (
  clientId INT PRIMARY KEY AUTO_INCREMENT,
  firstName VARCHAR(50) NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  address VARCHAR(200) NOT NULL
);


CREATE TABLE IF NOT EXISTS Test_Projet.library (
  ean_isbn13 BIGINT NOT NULL,
  title VARCHAR(145) NOT NULL,
  creators VARCHAR(123) NOT NULL,
  firstName VARCHAR(13) NOT NULL,
  lastName VARCHAR(14) NOT NULL,
  description VARCHAR(4769) NOT NULL,
  publisher VARCHAR(37),
  publishDate DATE,
  price NUMERIC(7,3) NOT NULL,
  length INTEGER NOT NULL,
  PRIMARY KEY(ean_isbn13)
);


CREATE TABLE IF NOT EXISTS Test_Projet.userAuthentication (
  clientId INT PRIMARY KEY,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  CONSTRAINT fk_auth_client
    FOREIGN KEY (clientId)
    REFERENCES Test_Projet.client (clientId)
);


CREATE TABLE IF NOT EXISTS Test_Projet.payment (
  paymentId INT PRIMARY KEY AUTO_INCREMENT,
  orderId INT NOT NULL,
  cardNumber VARCHAR(16) NOT NULL,
  expiration DATE NOT NULL,
  CONSTRAINT fk_payment_order
    FOREIGN KEY (orderId)
    REFERENCES Test_Projet.clientOrder (orderId)
);




CREATE TABLE IF NOT EXISTS Test_Projet.clientOrder (
  orderId INT PRIMARY KEY AUTO_INCREMENT,
  clientId INT,
  orderDate DATE,
  totalAmount DECIMAL(10,2),
  FOREIGN KEY (clientId) REFERENCES Test_Projet.client(clientId)
);




CREATE TABLE IF NOT EXISTS Test_Projet.orderItem (
  id INT PRIMARY KEY AUTO_INCREMENT,
  orderId INT,
  ean_isbn13 BIGINT,
  quantity INT,
  price DECIMAL(10,2),
  clientId INT,
  FOREIGN KEY (orderId) REFERENCES Test_Projet.clientOrder(orderId),
  FOREIGN KEY (ean_isbn13) REFERENCES Test_Projet.library(ean_isbn13)
);




CREATE TABLE IF NOT EXISTS Test_Projet.shoppingCart (
  id INT PRIMARY KEY AUTO_INCREMENT,
  clientId INT,
  ean_isbn13 BIGINT,
  quantity INT,
  FOREIGN KEY (clientId) REFERENCES Test_Projet.client(clientId),
  FOREIGN KEY (ean_isbn13) REFERENCES Test_Projet.library(ean_isbn13)
);


