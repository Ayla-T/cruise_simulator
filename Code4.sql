use cruise;

/* 
    Order of data:
    city, state, zipCode 
*/

INSERT INTO cityState (city, state, zipCode ) VALUES
("Vicksburg", "MS", 39180),
("Ballston Spa", "NY", 12020),
("Chillicothe", "OH", 45601),
("Chesterfield", "VA", 23832),
("Santa Cruz", "CA", 95060),
("Mooresville", "NC", 28115),
("Waldorf", "MD", 20601),
("Havertown", "PA", 19083),
("Indian Trail", "NC", 28079),
("Noblesville", "IN", 46060),
("Paterson", "NJ", 07501),
("Trumbull", "CT", 06611);

/* 
    Order of data:
    firstName, lastName, address, zipCode, phone, email 
*/
INSERT INTO crew (firstName, lastName, address, zipCode, phone, email) VALUES
("Raheem", "Montgomery", "71 Paris Hill Rd.", 39180, 4134849795, "rmontgomery@cruise.com"),
("Leo", "Bird", "201 Eagle Dr.", 12020, 7747829407, "lbird@cruise.com"),
("Oliwier", "Barnett", "81 Cedar Swamp St.", 39180, 2764343958, "obarnett@cruise.com"),
("Fern", "Garner", "37 Gartner Court", 12020, 2256254378, "fgarner@cruise.com"),
("Dawson", "Marquez", "90 Mammoth Street", 45601, 7634882879, "dmarquez@cruise.com"),
("Raja", "Glass", "7918 Talbot Ave.", 45601, 2319969540, "rglass@cruise.com"),
("Alissa", "Ortiz", "7756 Fulton Court", 23832, 2397268929, "aortiz@cruise.com"),
("Nicholas", "Pena", "8123 Race Ave.", 95060, 7815242242, "npena@cruise.com"),
("Harvey", "West", "9 Cherry Ave", 23832, 7326232762, "hwest@cruise.com"),
("Aamina", "Dillon", "9 West Boston Lane", 95060, 2035745299, "adillon@cruise.com"),
("Louis", "Giles", "598 North Road", 28115, 2708583758, "lgiles@cruise.com"),
("Krystal", "Walters", "583 North Nichols Street", 95060, 3232591832, "kwalters@cruise.com"),
("Alexa", "Preston", "9227 North Bow Ridge Street", 28115, 4098496634, "apreston@cruise.com"),
("Rebekah", "Morgan", "9437 East 6th Street", 20601, 6073928343, "rmorgan@cruise.com"),
("Ethan", "Ali", "167 NE. Depot Dr.", 28115, 2245499884, "eali@cruise.com"),
("Malik", "Vincent", "312 Colonial Ave.", 19083, 9149573014, "mvincent@cruise.com"),
("Sara", "Barron", "9064 E. Swanson St.", 20601, 8707743244, "sbarron@cruise.com"),
("Lyra", "Murphy", "400 Nut Swamp Drive", 19083, 3527673126, "lmurphy@cruise.com"),
("Awais", "Carrillo", "225 South Manhattan Street", 28079, 6369577670, "acarrillo@cruise.com"),
("Kaya", "Hodge", "9572 William Lane", 46060, 2125271561, "khodge@cruise.com"),
("Jemima", "Miller", "9290 Indian Spring Rd.", 28079, 6206673264, "jmiller@cruise.com"),
("Laila", "Christensen", "15 Rose Avenue", 07501, 9017396978, "lchristensen@cruise.com"),
("Honey", "Warren", "7946 Leeton Ridge Street", 06611, 5858531050, "hwarren@cruise.com"),
("Brodie", "Gordon", "71 Jackson Ave.", 46060, 9016899813, "bgordon@cruise.com"),
("Lauren", "Morton", "7931 Rockaway Street", 28079, 4476721422, "lmorton@cruise.com"),
("Ty", "Bell", "921 Brook St.", 07501, 2393336881, "tbell@cruise.com"),
("Floyd", "Johns", "2 Shore Street", 06611, 4065842872, "fjohns@cruise.com"),
("Mathew", "Horton", "1 Rockland Ave.", 46060, 7195789907, "mhorton@cruise.com"),
("Ernest", "Higgins", "451 Marshall Lane", 06611, 7637651247, "ehiggins@cruise.com"),
("Kamil", "Lozano", "75 N. Golden Star Street", 07501, 7638554744, "klozano@cruise.com");

/*
  order of data:
  crew.firstName, crew.lastName, position.description
  
  This requires a lookup in tables crew and position to find the associated ID 
values.
  
  An example insert statement would be:
  
  INSERT INTO crewPosition VALUES (1, 1);
*/

INSERT INTO crewPosition VALUES (11, 4);
/*Raheem, Montgomery, Advertising & Marketing*/
INSERT INTO crewPosition VALUES (20, 5);
/*Aamina, Dillon, Casino*/
INSERT INTO crewPosition VALUES (26, 7);
/*Malik, Vincent, Deck & Engine*/
INSERT INTO crewPosition VALUES (33, 7);
/*Honey, Warren, Deck & Engine*/
INSERT INTO crewPosition VALUES (38, 7);
/*Mathew, Horton, Deck & Engine*/
INSERT INTO crewPosition VALUES (13, 8);
/*Oliwier, Barnett, Engineering*/
INSERT INTO crewPosition VALUES (15, 8);
/*Dawson, Marquez, Engineering*/
INSERT INTO crewPosition VALUES (27, 9);
/*Sara, Barron, Entertainment*/
INSERT INTO crewPosition VALUES (18, 10);
/*Nicholas, Pena, Food & Beverage*/
INSERT INTO crewPosition VALUES (35, 10);
/*Lauren, Morton, Food & Beverage*/
INSERT INTO crewPosition VALUES (19, 11);
/*Harvey, West, Front Desk & Concierge*/
INSERT INTO crewPosition VALUES (17, 12);
/*Alissa, Ortiz, Guest Services*/
INSERT INTO crewPosition VALUES (22, 13);
/*Krystal, Walters, Housekeeping*/
INSERT INTO crewPosition VALUES (30,13 );
/*Kaya, Hodge, Housekeeping*/
INSERT INTO crewPosition VALUES (37, 13);
/*Floyd, Johns, Housekeeping*/
INSERT INTO crewPosition VALUES (40, 14);
/*Kamil, Lozano, HR*/
INSERT INTO crewPosition VALUES (24, 15);
/*Rebekah, Morgan, IT & Internet*/
INSERT INTO crewPosition VALUES (36, 15);
/*Ty, Bell, IT & Internet*/
INSERT INTO crewPosition VALUES (14, 17);
/*Fern, Garner, Mechanic & Maintenance*/
INSERT INTO crewPosition VALUES (25, 17);
/*Ethan, Ali, Mechanic & Maintenance*/
INSERT INTO crewPosition VALUES (28, 18);
/*Lyra, Murphy, Procurement & Purchasing*/
INSERT INTO crewPosition VALUES (12, 19);
/*Leo, Bird, Retail & Merchandising*/
INSERT INTO crewPosition VALUES (34, 19);
/*Brodie, Gordon, Retail & Merchandising*/
INSERT INTO crewPosition VALUES (21, 20);
/*Louis, Giles, Sales & Reservations*/
INSERT INTO crewPosition VALUES (23, 21);
/*Alexa, Preston, Salon & Spa*/
INSERT INTO crewPosition VALUES (39, 22);
/*Ernest, Higgins, Security & Surveillance*/
INSERT INTO crewPosition VALUES (16, 23);
/*Raja, Glass, Shore Excursion*/
INSERT INTO crewPosition VALUES (29, 23);
/*Awais, Carrillo, Shore Excursion*/
INSERT INTO crewPosition VALUES (31, 23);
/*Jemima, Miller, Shore Excursion*/
INSERT INTO crewPosition VALUES (32, 23);
/*Laila, Christensen, Shore Excursion*/


SELECT crew.firstName, crew.lastName, crew.phone, position.description
FROM crew, position, crewPosition
WHERE crewposition.crewId = crew.id
AND crewposition.positionId = position.id
ORDER BY position.description, crew.lastName;