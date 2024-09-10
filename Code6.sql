use cruise;

UPDATE type
SET exType = 'Cultural'
WHERE exType = 'Cultural, Scenic';


CREATE TABLE passengerExcursion (
passengerId int NOT NULL,
excursionId int NOT NULL,
PRIMARY KEY (passengerId, excursionId),
FOREIGN KEY (passengerId) REFERENCES passenger(Id),
FOREIGN KEY (excursionId) REFERENCES excursion(Id));


INSERT INTO activityLevel(exLevel)VALUES
('Difficult');

INSERT INTO foodBeverage (offering)VALUES
("None"),
("Snack"),
("Coffee Included"),
("Salmon Bake"),
("Buffet Included"),
("Lunch is Included"),
("Beverages Included");

INSERT INTO size(exSize)VALUES
('Private');

INSERT INTO type(exType)VALUES
('Water'),
('Cuisine'),
('Active'),
('Beach');


INSERT INTO excursion (name, description, sizeId, typeId, foodBeverageId, activityLevelId, durationMinutes, price) VALUES 
('Exclusive Juneau City and Mendenhall Glacier Tour', 'This half day program will give you a city orientation and a visit to the 
Mendenhall Glacier and visitors center.', 1, 1, 2, 2, 180, 75.00);

INSERT INTO excursion (name, description, sizeId, typeId, foodBeverageId, activityLevelId, durationMinutes, price) VALUES 
('Whales and Mendenhall Glacier', 'Alaska spectacular marine life and one of its best known glaciers all in a half day
program on a boat holding a maximum of 40 guests. Whale viewing is guaranteed.', 1, 1, 3, 1, 280, 225.00);

INSERT INTO excursion (name, description, sizeId, typeId, foodBeverageId, activityLevelId, durationMinutes, price) VALUES 
('Best of Juneau', 'Combine whale watching, a salmon bake, and views of the Mendenhall Glacier in this 
Juneau combination.', 1, 4, 5, 2, 375, 223.00);

INSERT INTO excursion (name, description, sizeId, typeId, foodBeverageId, activityLevelId, durationMinutes, price) VALUES 
('Mendenhall Lake Kayak and Salmon Bake', 'Kayak into the breathtaking glacial waters of Mendenhall Lake and allow your senses
to absorb the beauty this majestic place has to offer.', 2, 5, 7, 1, 300, 293.00);

INSERT INTO excursion (name, description, sizeId, typeId, foodBeverageId, activityLevelId, durationMinutes, price) VALUES 
('Mendenhall Glacier Trek', 'For the hearty and experienced hiker, come along for glacier trekking on the 
Mendenhall Glacier!', 2, 5, 3, 3, 480, 257.00);

INSERT INTO excursion (name, description, sizeId, typeId, foodBeverageId, activityLevelId, durationMinutes, price) VALUES 
 ('Helicopter Dog Sledding Extended Tour', 'This is a once in a lifetime tour. The helicopter flight is only one part of this
legendary experience that includes flying over the Juneau Icefield to the dog camp and then experiencing a kennel tour and a dogsled ride. Choose this extended 
adventure for more time at the glacier!', 2, 5, 1, 2, 220, 832.00);

INSERT INTO passengerExcursion VALUES
(27, 3),
(32, 29),
(8, 4),
(22, 32),
(15, 28),
(7, 1),
(2, 2),
(31, 32),
(16, 5),
(5, 1),
(30, 5),
(12, 1),
(35, 29),
(20, 27),
(23, 3),
(11, 4),
(19, 27),
(28, 28),
(1, 2);

SELECT p.firstName, p.lastName, e.name, s.exSize, t.exType, f.offering, a.exLevel,
e.durationMinutes, e.price
FROM passenger p, excursion e, passengerExcursion pe, size s, type t,
foodBeverage f, activityLevel a
WHERE pe.passengerId = p.ID
AND pe.excursionId = e.ID
AND e.activityLevelId = a.ID
AND e.sizeId = s.ID
AND e.typeId = t.ID
AND e.foodBeverageId = f.ID
ORDER BY e.name, p.lastName;