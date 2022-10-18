use DB_Links
CREATE TABLE Roles
(
	Id INT primary key,
	RoleName NVARCHAR (20),
)

CREATE TABLE Users
(
	Id INT primary key,
	FirstName NVARCHAR(20),
	LastName NVARCHAR(20),
	RoleId INT unique, foreign key(RoleId) references Roles(Id),
)
insert into Roles (Id,RoleName) values (1, 'Admin');
insert into Roles (Id,RoleName) values (2, 'User');
insert into Roles (Id,RoleName) values (3, 'QA');
insert into Users (Id,FirstName, LastName, RoleId) values (1, 'Alex', 'U', 2);
insert into Users (Id,FirstName, LastName, RoleId) values (2, 'Bob', 'Boby', 1);
insert into Users (Id,FirstName, LastName, RoleId) values (3, 'Susy', 'Ly', 3);

select * from Roles
select* from Users