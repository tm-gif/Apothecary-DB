CREATE TABLE Herbs_spices_roots(
  Herb_ID INT(3) NOT NULL,
  Name VARCHAR(45) NOT NULL,
  Cost DECIMAL,
  Treatment VARCHAR(255) NOT NULL,
  Size INT,
  PRIMARY KEY(Herb_ID)
);

CREATE TABLE Crystals(
  Crystal_ID INT(3) NOT NULL,
  Type VARCHAR(155),
  Properties VARCHAR(255),
  PRIMARY KEY (Crystal_ID)
);

CREATE TABLE Tonics(
  Tonic_ID INT(3) NOT NULL,
  Name VARCHAR(45)NOT NULL,
  Recipe VARCHAR(255)NOT NULL,
  Size INT,
  Cost  DECIMAL,
  expiration_date DATE NOT NULL,
  PRIMARY KEY (Tonic_ID)
);

CREATE TABLE Recipes(
  Recipe_ID INT(3) NOT NULL,
  Name VARCHAR(45),
  Ingredients VARCHAR(255) NOT NULL,
  Date DATE NOT NULL,
  Directions VARCHAR(255) NOT NULL UNIQUE,
  PRIMARY KEY(Recipe_ID)
);

CREATE TABLE Syrups(
  Syrup_ID INT(3) NOT NULL,
  Name VARCHAR(45) NOT NULL,
  Instructions INT(3),
  Size INT,
  Cost  DECIMAL,
  Expiration_date DATE NOT NULL,
  PRIMARY KEY (Syrup_ID),
  FOREIGN KEY (Instructions) REFERENCES  Recipes(Recipe_ID) ON UPDATE CASCADE
);

CREATE TABLE Teas(
  Tea_ID INT(3) NOT NULL,
  Name VARCHAR(45) NOT NULL,
  Instruction INT(3),
  Category VARCHAR(45),
  Caffeinated VARCHAR(45) NOT NULL,
  Expiration_date  DATE NOT NULL,
  FOREIGN KEY (Instruction) REFERENCES  Recipes(Recipe_ID)  ON UPDATE CASCADE
);


CREATE TABLE Herbalists_Naturopaths(
  Name VARCHAR(45) NOT NULL,
  Address VARCHAR(255),
  Herbalists_Naturopaths_ID INT(12) NOT NULL,
  Phone_number INT(10) NOT NULL,
  PRIMARY KEY(Herbalists_Naturopaths_ID)
);

CREATE TABLE Supplier(
  Name VARCHAR(45) NOT NULL,
  Source_country VARCHAR(255),
  Address VARCHAR(255) NOT NULL,
  Supplier_ID INT(5) NOT NULL,
  PRIMARY KEY(Supplier_ID)
);

CREATE TABLE Clients(
  Name VARCHAR(45) NOT NULL,
  Address VARCHAR(255),
  Client_ID INT(5) NOT NULL,
  Phone_number  INT(10) NOT NULL,
  PRIMARY KEY(Client_ID)
);

CREATE TABLE Manager(
  Name VARCHAR(45) NOT NULL,
  Address VARCHAR(255),
  Manager_ID INT(5) NOT NULL,
  Phone_number  INT(10) NOT NULL,
  PRIMARY KEY(Manager_ID)
);



-- Herbs_Spices_Roots
INSERT INTO Herbs_Spices_Roots VALUES('Amla',2.75,'As dyes and to prevent hair loss',4);
INSERT INTO Herbs_Spices_Roots VALUES('Astragalus Root Powder', 6.00, "To boost the immune system", 8);
INSERT INTO Herbs_Spices_Roots VALUES('Bee Pollen', 15.25, 'to sustain energy levels and fight infection', 4);
INSERT INTO Herbs_Spices_Roots VALUES('Elderberry', 8.00, 'to relieve cold and flu systoms', 8);


-- Crystals
INSERT INTO Crystals VALUES('Tourmaline', 'combat the entry of negative entities in your energy field');
INSERT INTO Crystals VALUES('Crystal Quartz', 'used to amplify desires, prayers, and manifestations from the spirit world to the physical world');


-- Tonics
INSERT INTO Tonics VALUES('Daily Energy Tonic', 'mix raw apple cider vinegar, ginger root,beet root, oat tops, nettle leaf,red clover blossoms, red clover leaf, raspberry leaf, kelp,alfalfa, and lime juice and bring to simmer add raw honey', 8, 16.00,06-18-2021);

-- Syrups
INSERT INTO Syrups VALUES('Elderberry Syrup', 'Boil elderberries, ginger, cinnamon in 8cups of water, reduce by half, add 4tbsp of honey', 8, 12.25, 12-30-2020);
INSERT INTO Syrups VALUES('Ginger Syrup', 'Simmer ginger root, organic alcohol, and 8 cups of water, reduce by half;add honey',8, 15.00, 11-23-2020);

-- Teas
INSERT INTO Teas VALUES('Assam Tea','add one teaspoon of assam leaf to cloth bag, pour 8oz of water; steep for 3min','black','yes',12-15-2022);
INSERT INTO Teas VALUES('Classic chai','add one teaspoon of ginger root, cinnamon bark, Darjeeling tea,cardamom,  and cloves, and nutmeg leaf to cloth bag, pour 8oz of water; steep for 5-10min', 'black', 'no', 06-18-2021);
INSERT INTO Teas VALUES('Jasmine Green Tea', 'Brew leaves for 1-3min','green', 'yes', 08-20-2022);
INSERT INTO Teas VALUES('Rooibos Red Tea','Brew tea leaves for 3-4min', 'red', 'no', 10-05-2021);

-- Recipe
INSERT INTO Recipe VALUES('Classic chai','ginger root, cinnamon bark, Darjeeling tea,cardamom,  and cloves, and nutmeg leaf',03-05-2020,'add one teaspoon of ginger root, cinnamon bark, Darjeeling tea,cardamom,  and cloves, and nutmeg leaf to cloth bag, pour 8oz of water; steep for 5-10min');
INSERT INTO Recipe VALUES('Daily Energy Tonic','raw honey, raw apple cider vinegar, ginger root,beetroot, oat tops, nettle leaf,red clover blossoms, red clover leaf, raspberry leaf, kelp,alfalfa, and lime juice',03-05-2020,'mix raw apple cider vinegar, ginger root,beetroot, oat tops, nettle leaf,red clover blossoms, red clover leaf, raspberry leaf, kelp,alfalfa, and lime juice and bring to simmer add raw honey');
INSERT INTO Recipe VALUES('Elderberry Syrup','elderberries, ginger, cinnamon, honey',03-05-2020,'Boil elderberries, ginger, cinnamon in 8cups of water, reduce by half, add 4tbsp of honey');


-- Herbalist_Naturopath
INSERT INTO Herbalist_Naturopath VALUES('Dr.Thoms Tonics','42 Clinton Street Houston, TX 77002', 345648939474,7708978764);
INSERT INTO Herbalist_Naturopath VALUES('Vital Health of Bluelandia','8897 Ohio Street Mesquite, TX 75187', 093784657432, 7706457843);

-- Supplier
INSERT INTO Supplier VALUES('MtnHerbs', 'China', '2439 Griffin Street, Phoenix, AZ',2758934);
INSERT INTO Supplier VALUES('Rosalinear', 'Somalia', '4073 Cedar Lane, Colorado Springs, CO',2758935);

-- Clients
INSERT INTO Clients VALUES('Polly Beckett', '265 Henry Dr. Camden, NJ 08102', 905873647592,9037485627);
INSERT INTO Clients VALUES('Lovelace Ginger', '24 Rosewood Street Cologne, NJ 08213', 973675867352,9387462940);
INSERT INTO Clients VALUES('Indy Rue', '24 Brickyard Dr. Cherry Hill, NJ 08002', 973826485068,6746587365);

-- Manager
INSERT INTO Manager VALUES('Marcy', '236 Wilson St. Ringoes, NJ 08551', 22345, 6789098456);
INSERT INTO Manager VALUES('Rudolph', '696 Mill Pond Drive Asbury Park, NJ 07712', 67894, 6547823904);







QUERY CODE

Select *
From tonics
Order By expiration_date;

Select *
From Herbs_Spices_Roots
Where size > 4;

Select ingredients, directions
From recipes AS r,
syrups As s
Where s.Instructions = r.directions;

Select name
From Teas
Where caffeinated = ‘yes’;

Select name, address
From Herbalist_Naturopath
Where name = 'Vital Health of Bluelandia';

