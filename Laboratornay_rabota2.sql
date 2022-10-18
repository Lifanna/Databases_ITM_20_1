CREATE DATABASE MyDB
CREATE TABLE Roles
(
	Id INT identity (1,1) primary key,
	RoleName NVARCHAR (30),
)
CREATE TABLE Users
(
	Id INT identity (1,1) primary key,
	FirstName NVARCHAR(30),
	LastName NVARCHAR(30),
	RoleId INT unique, foreign key(RoleId) references Roles(Id),
)

