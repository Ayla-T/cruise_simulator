ALTER TABLE crew
RENAME COLUMN lastName TO temp;

ALTER TABLE crew
RENAME COLUMN firstName TO lastName;

ALTER TABLE crew
RENAME COLUMN temp TO firstName;

CREATE TABLE cityState(
	city VARCHAR(90) NOT NULL,
	state CHAR(2) NOT NULL,
	zipCode CHAR(5) NOT NULL UNIQUE,
	PRIMARY KEY(zipCode)
);

insert into cityState(city, state, zipCode)
SELECT distinct city, state, zipCode from crew;

insert into cityState(city, state, zipCode)
SELECT distinct city, state, zipCode from passenger;

ALTER TABLE crew
ADD FOREIGN KEY(zipCode) REFERENCES cityState(zipCode);

ALTER TABLE crew
DROP COLUMN city;

ALTER TABLE crew
DROP COLUMN state;

ALTER TABLE passenger
ADD FOREIGN KEY(zipCode) REFERENCES cityState(zipCode);

ALTER TABLE passenger
DROP COLUMN city;

ALTER TABLE passenger
DROP COLUMN state;