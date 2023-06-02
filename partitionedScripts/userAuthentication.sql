DROP TABLE IF EXISTS Test_Projet.userAuthentication;

CREATE TABLE IF NOT EXISTS Test_Projet.userAuthentication (
  clientId INT PRIMARY KEY,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  CONSTRAINT fk_auth_client
    FOREIGN KEY (clientId)
    REFERENCES Test_Projet.client (clientId)
);

INSERT INTO Test_Projet.userAuthentication (clientId, username, password)
VALUES
  (1, 'username1', 'P@ssw0rd1'),
  (2, 'username2', 'P@ssw0rd2'),
  (3, 'username3', 'P@ssw0rd3'),
  (4, 'username4', 'P@ssw0rd4'),
  (5, 'username5', 'P@ssw0rd5'),
  (6, 'username6', 'P@ssw0rd6'),
  (7, 'username7', 'P@ssw0rd7'),
  (8, 'username8', 'P@ssw0rd8'),
  (9, 'username9', 'P@ssw0rd9'),
  (10, 'username10', 'P@ssw0rd10'),
  (11, 'username11', 'P@ssw0rd11'),
  (12, 'username12', 'P@ssw0rd12'),
  (13, 'username13', 'P@ssw0rd13'),
  (14, 'username14', 'P@ssw0rd14'),
  (15, 'username15', 'P@ssw0rd15'),
  (16, 'username16', 'P@ssw0rd16'),
  (17, 'username17', 'P@ssw0rd17'),
  (18, 'username18', 'P@ssw0rd18'),
  (19, 'username19', 'P@ssw0rd19'),
  (20, 'username20', 'P@ssw0rd20'),
  (21, 'username21', 'P@ssw0rd21'),
  (22, 'username22', 'P@ssw0rd22'),
  (23, 'username23', 'P@ssw0rd23'),
  (24, 'username24', 'P@ssw0rd24'),
  (25, 'username25', 'P@ssw0rd25');