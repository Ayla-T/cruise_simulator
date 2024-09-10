use cruise;

CREATE TABLE timesheet(
	Id int not null AUTO_INCREMENT,
	crewId int not null,
	sun int not null default 0,
	mon int not null default 0,
	tues int not null default 0,
	wed int not null default 0,
	thurs int not null default 0,
	fri int not null default 0,
	sat int not null default 0,
	primary key(Id),
	foreign key(crewId) references crew(Id)

);

INSERT INTO timesheet(crewId, sun, mon, tues, wed, thurs, fri, sat) VALUES
(25, 12, 0, 12, 0, 4, 12, 0),
(13, 7, 4, 9, 0, 0, 10, 3),
(27, 0, 12, 6, 10, 6, 8, 0),
(36, 8, 8, 0, 0, 8, 10, 6),
(12, 0, 8, 8, 8, 8, 8, 0),
(29, 12, 0, 12, 0, 4, 12, 0),
(32, 0, 12, 6, 10, 6, 8, 0),
(4, 10, 8, 0, 0, 8, 10, 10),
(20, 8, 8, 0, 0, 8, 10, 6),
(14, 12, 0, 12, 0, 4, 12, 0),
(21, 8, 8, 0, 0, 8, 10, 6),
(16, 12, 0, 12, 0, 4, 12, 0),
(34, 0, 8, 8, 8, 8, 8, 0),
(7, 12, 0, 12, 0, 4, 12, 0),
(10, 6, 6, 6, 6, 6, 5, 0),
(39, 0, 8, 8, 8, 8, 8, 0),
(30, 10, 8, 0, 0, 8, 10, 10),
(38, 7, 4, 9, 0, 0, 10, 3),
(37, 6, 6, 6, 6, 6, 5, 0),
(5, 6, 6, 6, 6, 6, 5, 0),
(40, 10, 8, 0, 0, 8, 10, 10),
(15, 7, 4, 9, 0, 0, 10, 3),
(31, 10, 8, 0, 0, 8, 10, 10),
(11, 10, 8, 0, 0, 8, 10, 10),
(24, 7, 4, 9, 0, 0, 10, 3),
(35, 8, 8, 0, 0, 8, 10, 6),
(28, 12, 0, 12, 0, 4, 12, 0),
(6, 0, 8, 8, 8, 8, 8, 0),
(17, 10, 8, 0, 0, 8, 10, 10),
(18, 0, 8, 8, 8, 8, 8, 0),
(23, 6, 6, 6, 6, 6, 5, 0),
(1, 0, 12, 6, 10, 6, 8, 0),
(2, 0, 8, 8, 8, 8, 8, 0),
(8, 8, 8, 0, 0, 8, 10, 6),
(9, 0, 12, 6, 10, 6, 8, 0),
(26, 0, 12, 6, 10, 6, 8, 0),
(22, 6, 6, 6, 6, 6, 5, 0),
(33, 0, 12, 6, 10, 6, 8, 0),
(3, 6, 6, 6, 6, 6, 5, 0),
(19, 0, 8, 8, 8, 8, 8, 0);


CREATE VIEW timesheetView AS
SELECT CONCAT ('c.firstName', ' ', 'c.lastName') AS "Crew Member", SUM('t.sun'+ 't.mon'+ 't.tues'+ 't.wed'+ 't.thurs'+ 't.fri'+ 't.sat') AS "HOURS"
FROM crew c, timesheet t
ORDER BY c.lastName;