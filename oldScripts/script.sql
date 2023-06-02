-- Drop tables
DROP TABLE IF EXISTS Test_Projet.shoppingCart;
DROP TABLE IF EXISTS Test_Projet.orderItem;
DROP TABLE IF EXISTS Test_Projet.clientOrder;
DROP TABLE IF EXISTS Test_Projet.payment;
DROP TABLE IF EXISTS Test_Projet.userAuthentication;
DROP TABLE IF EXISTS Test_Projet.library;
DROP TABLE IF EXISTS Test_Projet.client;

-- Create tables
CREATE TABLE IF NOT EXISTS Test_Projet.client (
  clientId INT PRIMARY KEY AUTO_INCREMENT,
  firstName VARCHAR(50) NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  address VARCHAR(200) NOT NULL
);

INSERT INTO Test_Projet.client (firstName, lastName, email, address)
VALUES ('John', 'Doe', 'john.doe@example.com', '123 Main St');

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

INSERT INTO Test_Projet.library (ean_isbn13, title, creators, firstName, lastName, description, price, length)
VALUES (9781234567890, 'Sample Book', 'Author A', 'John', 'Doe', 'A sample book description', 19.99, 200);

CREATE TABLE IF NOT EXISTS Test_Projet.userAuthentication (
  clientId INT PRIMARY KEY,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  CONSTRAINT fk_auth_client
    FOREIGN KEY (clientId)
    REFERENCES Test_Projet.client (clientId)
);

INSERT INTO Test_Projet.userAuthentication (clientId, username, password)
VALUES (1, 'johndoe', 'password123');

CREATE TABLE IF NOT EXISTS Test_Projet.payment (
  paymentId INT PRIMARY KEY AUTO_INCREMENT,
  clientId INT NOT NULL,
  cardNumber VARCHAR(16) NOT NULL,
  expiration DATE NOT NULL,
  CONSTRAINT fk_payment_client
    FOREIGN KEY (clientId)
    REFERENCES Test_Projet.client (clientId)
);

INSERT INTO Test_Projet.payment (clientId, cardNumber, expiration)
VALUES (1, '1234567890123456', '2025-12-31');

CREATE TABLE IF NOT EXISTS Test_Projet.clientOrder (
  orderId INT PRIMARY KEY AUTO_INCREMENT,
  clientId INT,
  orderDate DATE,
  totalAmount DECIMAL(10,2),
  FOREIGN KEY (clientId) REFERENCES Test_Projet.client(clientId)
);


INSERT INTO Test_Projet.clientOrder (orderId, clientId, orderDate, totalAmount)
VALUES (1, '2023-05-01', 99.99, 1);



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

INSERT INTO Test_Projet.orderItem (id, orderId, ean_isbn13, quantity, price, clientId)
VALUES (1, 9781234567890, 1, 19.99, 1);



CREATE TABLE IF NOT EXISTS Test_Projet.shoppingCart (
  id INT PRIMARY KEY AUTO_INCREMENT,
  clientId INT,
  ean_isbn13 BIGINT,
  quantity INT,
  FOREIGN KEY (clientId) REFERENCES Test_Projet.client(clientId),
  FOREIGN KEY (ean_isbn13) REFERENCES Test_Projet.library(ean_isbn13)
);

INSERT INTO Test_Projet.shoppingCart (clientId, ean_isbn13, quantity)
VALUES (1, 9781234567890, 2);
