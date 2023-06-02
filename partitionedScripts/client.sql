DROP TABLE IF EXISTS Test_Projet.client;

CREATE TABLE IF NOT EXISTS Test_Projet.client (
  clientId INT PRIMARY KEY AUTO_INCREMENT,
  firstName VARCHAR(50) NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  address VARCHAR(200) NOT NULL
);

INSERT INTO Test_Projet.client (firstName, lastName, email, address)
VALUES
  ('Jean', 'Tremblay', 'jean.tremblay@example.com', '123 Rue Principale, Québec, QC'),
  ('Sophie', 'Bélanger', 'sophie.belanger@example.com', '456 Avenue des Chênes, Montréal, QC'),
  ('Gabriel', 'Leclerc', 'gabriel.leclerc@example.com', '789 Boulevard du Lac, Sherbrooke, QC'),
  ('Léa', 'Gagnon', 'lea.gagnon@example.com', '321 Rue Saint-Paul, Trois-Rivières, QC'),
  ('Olivier', 'Fortin', 'olivier.fortin@example.com', '987 Chemin de la Montagne, Québec, QC'),
  ('Camille', 'Morin', 'camille.morin@example.com', '654 Boulevard Saint-Joseph, Gatineau, QC'),
  ('Thomas', 'Roy', 'thomas.roy@example.com', '147 Avenue des Érables, Laval, QC'),
  ('Élodie', 'Bergeron', 'elodie.bergeron@example.com', '852 Rue des Lilas, Drummondville, QC'),
  ('Maxime', 'Lavoie', 'maxime.lavoie@example.com', '369 Boulevard Industriel, Rimouski, QC'),
  ('Clara', 'Gauthier', 'clara.gauthier@example.com', '753 Rue du Collège, Saint-Jean-sur-Richelieu, QC'),
  ('Julien', 'Morissette', 'julien.morissette@example.com', '258 Rue des Peupliers, Granby, QC'),
  ('Noémie', 'Dufour', 'noemie.dufour@example.com', '963 Chemin de la Falaise, Saguenay, QC'),
  ('William', 'Lapointe', 'william.lapointe@example.com', '741 Rue des Roses, Shawinigan, QC'),
  ('Léonie', 'Dubois', 'leonie.dubois@example.com', '369 Avenue des Aulnes, Saint-Hyacinthe, QC'),
  ('Samuel', 'Pelletier', 'samuel.pelletier@example.com', '852 Boulevard des Pins, Saint-Georges, QC'),
  ('Florence', 'Caron', 'florence.caron@example.com', '147 Avenue du Fleuve, Matane, QC'),
  ('Tristan', 'Girard', 'tristan.girard@example.com', '753 Rue de la Rivière, Sept-Îles, QC'),
  ('Catherine', 'Lefebvre', 'catherine.lefebvre@example.com', '963 Rue des Cèdres, Val-d\'Or, QC'),
  ('Alexandre', 'Poirier', 'alexandre.poirier@example.com', '369 Avenue des Ormes, Rouyn-Noranda, QC'),
  ('Laura', 'Martin', 'laura.martin@example.com', '741 Rue des Bouleaux, Mont-Laurier, QC'),
  ('Mathis', 'Beaulieu', 'mathis.beaulieu@example.com', '852 Avenue des Peupliers, Joliette, QC'),
  ('Éléonore', 'Lévesque', 'eleonore.levesque@example.com', '147 Rue des Érables, Victoriaville, QC'),
  ('Théo', 'Gagné', 'theo.gagne@example.com', '753 Boulevard des Champs, Baie-Comeau, QC'),
  ('Alicia', 'Roy-Bouchard', 'alicia.roy-bouchard@example.com', '963 Rue des Sapins, Rivière-du-Loup, QC'),
  ('Nathan', 'Lemieux', 'nathan.lemieux@example.com', '369 Rue du Moulin, Sainte-Thérèse, QC');