use cruise;

CREATE TABLE activityLevel (
ID int NOT NULL AUTO_INCREMENT,
exLevel varchar(25) NOT NULL UNIQUE,
PRIMARY KEY (ID)
);

CREATE TABLE size (
ID int NOT NULL AUTO_INCREMENT,
exSize varchar(25) NOT NULL UNIQUE,
PRIMARY KEY (ID)
);

CREATE TABLE type (
ID int NOT NULL AUTO_INCREMENT,
exType varchar(25) NOT NULL UNIQUE,
PRIMARY KEY (ID)
);

CREATE TABLE foodBeverage (
ID int NOT NULL AUTO_INCREMENT,
offering varchar(25) NOT NULL UNIQUE,
PRIMARY KEY (ID)
);

insert into activityLevel(exLevel)
SELECT distinct activityLevel from excursion;

insert into size(exSize)
SELECT distinct size from excursion;

insert into type(exType)
SELECT distinct type from excursion;

insert into foodBeverage(offering)
SELECT distinct foodBeverage from excursion;

UPDATE excursion
SET activityLevel = 1
WHERE activityLevel = 'Moderate'; 

UPDATE excursion
SET activityLevel = 2
WHERE activityLevel = 'Easy'; 

UPDATE excursion
SET size = 1
WHERE size = 'Standard'; 

UPDATE excursion
SET size = 2
WHERE size = 'Small'; 

UPDATE excursion
SET type = 1
WHERE type = 'Scenic'; 

UPDATE excursion
SET type = 2
WHERE type = 'Cultural, Scenic'; 

UPDATE excursion
SET foodBeverage = 1
WHERE foodBeverage = 'Not Included'; 


ALTER TABLE excursion
MODIFY COLUMN activityLevel INT NOT NULL;

ALTER TABLE excursion
MODIFY COLUMN size INT NOT NULL;

ALTER TABLE excursion
MODIFY COLUMN type INT NOT NULL;

ALTER TABLE excursion
MODIFY COLUMN foodBeverage INT NOT NULL;

----

ALTER TABLE excursion
RENAME COLUMN activityLevel to activityLevelId;

ALTER TABLE excursion
RENAME COLUMN size to sizeId;

ALTER TABLE excursion
RENAME COLUMN type to typeId;

ALTER TABLE excursion
RENAME COLUMN foodBeverage to foodBeverageId;

---

ALTER TABLE excursion
ADD FOREIGN KEY (activityLevelId) REFERENCES activityLevel(ID);

ALTER TABLE excursion
ADD FOREIGN KEY (sizeId) REFERENCES size(ID);

ALTER TABLE excursion
ADD FOREIGN KEY (typeId) REFERENCES type(ID);

ALTER TABLE excursion
ADD FOREIGN KEY (foodBeverageId) REFERENCES foodBeverage(ID);


SELECT e.ID, e.name 
FROM excursion e, foodBeverage f, type t, size s, activityLevel a
WHERE e.activityLevelId = a.ID
AND e.foodBeverageId = f.ID
AND e.typeId = t.ID
AND e.sizeId = s.ID
ORDER BY e.durationMinutes, e.price;
