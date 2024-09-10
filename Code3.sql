USE cruise;

CREATE TABLE crewPosition (
crewID int NOT NULL UNIQUE,
positionID int NOT NULL,
PRIMARY KEY (crewID, positionID),
FOREIGN KEY (crewID) REFERENCES crew(ID),
FOREIGN KEY (position ID) REFERENCES  position (ID)
);

 INSERT INTO crewPosition VALUES (5,1);
 
 INSERT INTO crewPosition VALUES (9,2);
 
 INSERT INTO crewPosition VALUES (4,3);
 
 INSERT INTO crewPosition VALUES (8,5);
 
 INSERT INTO crewPosition VALUES (3,6);
 
 INSERT INTO crewPosition VALUES (7,10);
 
 INSERT INTO crewPosition VALUES (2,12);
 
 INSERT INTO crewPosition VALUES (10,16);
 
 INSERT INTO crewPosition VALUES (6,20);
 
 INSERT INTO crewPosition VALUES (1,24);
 
 
 CREATE TABLE excursion (
 ID int NOT NULL AUTO_INCREMENT,
 name varchar(50) NOT NULL UNIQUE,
 description varchar(300) NOT NULL,
 size varchar(25) NOT NULL,
 type varchar(25) NOT NULL,
 foodBeverage varchar(25) NOT NULL,
 activityLevel varchar(25) NOT NULL,
 durationMinutes int NOT NULL,
 price decimal(6,2) NOT NULL,
 PRIMARY KEY(ID)
);

INSERT INTO excursion (name, description, size, type, foodBeverage, activityLevel, durationMinutes, price) VALUES
('Skagway City and White Pass Summit', 
'Start with a tour of historic Skagway, and learn of its lawless days during the 
Klondike Gold Rush of 1897-99 and travel through the White Pass Summit with lots of
stops along the way to photograph the beautiful scenery.', 
'Standard', 
'Scenic', 
'Not Included', 
'Moderate', 
150, 
65.00);


INSERT INTO excursion (name, description, size, type, foodBeverage, activityLevel, durationMinutes, price) VALUES
('Scenic Waterfall Adventure', 
'When you stop in Skagway, there is no better scenic and relaxing ride to the areas
beautiful waterfall destinations, both in the state and along the Klondike Highway 
into Canada.', 
'Standard', 
'Cultural, Scenic', 
'Not Included', 
'Easy', 
180, 
75.00);

INSERT INTO excursion (name, description, size, type, foodBeverage, activityLevel, durationMinutes, price) VALUES
('Helicopter Glacier Discovery', 
'When you stop in Skagway, there is no better scenic and relaxing ride to the areas
beautiful waterfall destinations, both in the state and along the Klondike Highway 
into Canada.', 
'Standard', 
'Cultural, Scenic', 
'Not Included', 
'Easy', 
180, 
435.00);

INSERT INTO excursion (name, description, size, type, foodBeverage, activityLevel, durationMinutes, price) VALUES
('White Pass Summit Rail and Bus Excursion', 
'See more of Alaska on this scenic excursion that combines the best of the White 
Pass Railroad with a bus tour along a different route with stops along the way.', 
'Small', 
'Scenic', 
'Not Included', 
'Easy', 
225, 
186.00);

INSERT INTO excursion (name, description, size, type, foodBeverage, activityLevel, durationMinutes, price) VALUES
('White Pass Summit Rail and Yukon Suspension Bridge', 
'See more of Alaska on this scenic excursion that combines the best of the White 
Pass Railroad with an expedition to the Yukon Suspension Bridge.', 
'Small', 
'Scenic',
'Not Included', 
'Easy', 
285, 
229.00);

SELECT c.firstName, c.lastName, p.description
 FROM crew c, position p, crewPosition cp
 WHERE cp.crewId = c.id
 AND cp.positionId = p.id;

