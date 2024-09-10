use cruise;

CREATE TABLE crewExcursion (
crewId int not null,
excursionId int not null,
primary key (crewId, excursionId),
foreign key (crewId) references crew(id),
foreign key (excursionId) references excursion(id));

INSERT INTO crewExcursion VALUES 
(16, 29),
(29, 27),
(31, 32),
(32, 3),
(16, 31),
(29, 30),
(32, 30),
(31, 2),
(32, 1),
(16, 28),
(29, 4),
(31, 5);


CREATE VIEW crewPositionView AS
SELECT CONCAT (c.firstname," ", c.lastname) AS "Crew Member", c.phone AS "Crew Phone", p.description AS "Crew Position"
FROM crew c, position p, crewPosition cp 
WHERE cp.crewId = c.Id 
AND cp.positionId = p.Id;

CREATE VIEW excursionView AS 
SELECT e.name AS "Excursion", s.exSize AS "Size", t.exType AS "Type", f.offering AS "Food/Beverage", a.exLevel AS "Activity Level", e.durationMinutes AS "Duration in Minutes", e.price AS "Price"
FROM excursion e, size s, type t, foodBeverage f, activityLevel a
ORDER BY a.exLevel;

CREATE VIEW bookedExcursionView AS
SELECT CONCAT (c.firstname, " ", c.lastname) AS "Crew Member", CONCAT (p.firstname, " ", p.lastname) AS "Passenger", e.name AS "Excursion", f.offering AS "Food/Beverage", e.durationMinutes AS "Duration in minutes"
FROM crew c, passenger p, excursion e, foodBeverage f
ORDER BY e.name;

