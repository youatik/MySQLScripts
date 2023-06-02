DROP TABLE IF EXISTS Test_Projet.clientOrder;

CREATE TABLE IF NOT EXISTS Test_Projet.clientOrder (
  orderId INT PRIMARY KEY AUTO_INCREMENT,
  clientId INT,
  orderDate DATE,
  totalAmount DECIMAL(10,2),
  FOREIGN KEY (clientId) REFERENCES Test_Projet.client(clientId)
);

INSERT INTO Test_Projet.clientOrder (clientId, orderDate, totalAmount)
VALUES (1, '2023-05-01', 99.99, 1);