use cruise;

DELIMITER $$
CREATE PROCEDURE payCheck (
	IN crewNum int,
	INOUT salary varchar(4000))
BEGIN
	declare v_finished integer default 0;
	declare v_lines varchar(100) default" ----------------------------------------------
	---------------------------------- ";
	declare v_cFirst varchar(100) DEFAULT " ";
	declare v_cLast varchar(100) DEFAULT " ";
	declare v_cAddress varchar(100) DEFAULT " ";
	declare v_cCity varchar(100) DEFAULT " ";
	declare v_cState varchar(100) DEFAULT " ";
	declare v_cZip varchar(100) DEFAULT " ";
	declare v_tHours int DEFAULT 0;
	declare v_pHourly decimal(5,2) DEFAULT 0.0;
	declare v_overtime INT DEFAULT 0;
	declare v_count integer DEFAULT 0;
	declare v_pay decimal(8,2) DEFAULT 0.0;

	declare crew_cursor CURSOR for 
	select c.firstName, c.lastName, c.address, cs.city, cs.state, cs.zipcode,
		sum(t.sun+t.mon+t.tues+t.wed+t.thurs+t.fri+t.sat) as 'hours', 
		p.hourly
	from crew c, timesheet t, cityState cs, position p, crewPosition cp
	where t.crewId = crewNum
		and c.zipCode = cs.zipCode
		and t.crewId = c.id
		and cp.crewId = c.id
		and cp.positionId = p.id
	GROUP BY c.firstName, c.lastName, c.address, cs.city, cs.state, cs.zipCode, p.hourly;

	declare continue handler for not found set v_finished = 1;

	OPEN crew_cursor;
	
		get_crew: LOOP
			fetch crew_cursor INTO v_cFirst, v_cLast, v_cAddress, v_cCity, v_cState, v_cZip, v_tHours, v_pHourly;

			IF v_finished = 1 THEN
				leave get_crew;
			END IF;
			
			SET v_count = v_count + 1;
			
			IF v_count <= 1 THEN
				IF v_tHours <= 40 THEN
					set v_pay =  v_tHours * v_pHourly;
				ELSEIF v_tHours > 40 THEN
					set v_overtime = (v_tHours - 40 ) * (v_pHourly * 1.5);
					set v_pay = 40 * v_pHourly;
					set v_pay = v_pay + v_overtime;	
				end if;
				set salary = concat(salary, '\From:\n');
				set salary = concat(salary, 'nCGS 2545 Cruiselines\n');
				set salary = concat(salary, '\UCF\n');
				set salary = concat(salary, '\MSB 260\n\n');
				set salary = concat(salary, 'Pay to the order of:\n\n');
				set salary = concat(salary,  v_cFirst, ' ', v_cLast, '\n');
				set salary = concat(salary,  v_cAddress, '\n');
				set salary = concat(salary,  v_city, ', ', v_cState, ' ', v_cZip, '\n');
				set salary = concat(salary, 'In the amount of:\n\n');
				set salary = concat(salary, '$', v_pay, '\n');
				set salary = concat(salary, '\n', v_lines, '\n');
			
			END IF;		
	END LOOP;
		
	CLOSE crew_cursor;
END$$
DELIMITER ;

SET @salary = "";
Call payCheck(25,@salary);
select @salary;

SET @salary = "";
Call payCheck(13,@salary);
select @salary;

SET @salary = "";
Call payCheck(27,@salary);
select @salary;

SET @salary = "";
Call payCheck(36,@salary);
select @salary;

SET @salary = "";
Call payCheck(12,@salary);
select @salary;

SET @salary = "";
Call payCheck(29,@salary);
select @salary;

SET @salary = "";
Call payCheck(32,@salary);
select @salary;

SET @salary = "";
Call payCheck(4,@salary);
select @salary;

SET @salary = "";
Call payCheck(20,@salary);
select @salary;

SET @salary = "";
Call payCheck(14,@salary);
select @salary;

SET @salary = "";
Call payCheck(21,@salary);
select @salary;

SET @salary = "";
Call payCheck(16,@salary);
select @salary;

SET @salary = "";
Call payCheck(34,@salary);
select @salary;

SET @salary = "";
Call payCheck(7,@salary);
select @salary;

SET @salary = "";
Call payCheck(10,@salary);
select @salary;

SET @salary = "";
Call payCheck(39,@salary);
select @salary;

SET @salary = "";
Call payCheck(30,@salary);
select @salary;

SET @salary = "";
Call payCheck(38,@salary);
select @salary;

SET @salary = "";
Call payCheck(37,@salary);
select @salary;

SET @salary = "";
Call payCheck(5,@salary);
select @salary;

SET @salary = "";
Call payCheck(40,@salary);
select @salary;

SET @salary = "";
Call payCheck(15,@salary);
select @salary;

SET @salary = "";
Call payCheck(31,@salary);
select @salary;

SET @salary = "";
Call payCheck(11,@salary);
select @salary;

SET @salary = "";
Call payCheck(24,@salary);
select @salary;

SET @salary = "";
Call payCheck(35,@salary);
select @salary;

SET @salary = "";
Call payCheck(28,@salary);
select @salary;

SET @salary = "";
Call payCheck(6,@salary);
select @salary;

SET @salary = "";
Call payCheck(17,@salary);
select @salary;

SET @salary = "";
Call payCheck(18,@salary);
select @salary;

SET @salary = "";
Call payCheck(23,@salary);
select @salary;

SET @salary = "";
Call payCheck(1,@salary);
select @salary;

SET @salary = "";
Call payCheck(2,@salary);
select @salary;

SET @salary = "";
Call payCheck(8,@salary);
select @salary;

SET @salary = "";
Call payCheck(9,@salary);
select @salary;

SET @salary = "";
Call payCheck(26,@salary);
select @salary;

SET @salary = "";
Call payCheck(22,@salary);
select @salary;

SET @salary = "";
Call payCheck(33,@salary);
select @salary;

SET @salary = "";
Call payCheck(3,@salary);
select @salary;

SET @salary = "";
Call payCheck(19,@salary);
select @salary;