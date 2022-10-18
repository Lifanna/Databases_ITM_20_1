--create database Lab_rabota_3

create table passenger
(
	surname nvarchar(30),
	passenger_name nvarchar(30),
	IIN INT primary key,
)

create table pilots
(
	id_pilot INT identity (1,1) primary key,
	surname nvarchar(30),
	pilot_name nvarchar(30),
)

create table airplans
(
	number_airplan INT primary key,
	id_pilot Int 
	FOREIGN KEY (id_pilot) REFERENCES pilots(id_pilot)
)

create table ticket
(
	number_airplan Int,
	place Int,
	IIN Int,
	FOREIGN KEY (IIN) REFERENCES passenger(IIN),
	FOREIGN KEY (number_airplan) REFERENCES airplans(number_airplan)
)

--insert into pilots values ('Ivanov', 'Ivan'), ('Sergeev', 'Sergey') 
--insert into airplans values (205,1), (309,2) 
--insert into ticket values (205,23, 1205), (205,18, 1206), (309,030, 1109)
--insert into passenger values ('Andreev', 'Andrey', 1205), ('Petrov', 'Petr', 1206), ('Vasiliev', 'Vasilei',1109)

--select surname,pilot_name from pilots
--select * from airplans
--select * from ticket  
--select * from passenger 

select passenger_name,airplans.number_airplan from passenger full join ticket on passenger.IIN = ticket.IIN full join airplans on airplans.number_airplan = ticket.number_airplan
