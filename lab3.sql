use Alex
create table Roles(
	Id int primary key,
	RoleName nvarchar(20),

)

create table Users(
	Id int primary key,
	FirstName nvarchar(30),
	LastName nvarchar(30),
	UserLogin nvarchar(30),
	UserPassword nvarchar(30),
	RoleId int, foreign key(RoleId) references Roles(Id),
	
	
)
insert into Users(Id,FirstName,LastName,UserLogin,UserPassword,RoleId)
values
(1,'Alex','Ungefug','X_1','111',1),
(2,'Bob','Rumor','BR2','222',2),
(3,'Liza','Schmidt','Lis12','333',3),
(4,'Morisa','White','Snow12','444',3)


create table Rooms(
	Id int primary key,
	RoomNumber int,
	DeskNumber int,
	SerialNumber int,
	KeyHolderId int, foreign key(KeyHolderId) references Users(Id),
	Schedule time,

)

insert into Rooms(Id,RoomNumber,DeskNumber,SerialNumber,KeyHolderId,Schedule)
values

(3,104,7,9771,2,'21:00')

select FirstName,LastName,RoleName,RoomNumber from Users 
join Roles on Users.RoleId =Roles.Id
join Rooms on Rooms.KeyHolderId=Users.Id

--select FirstName,LastName,RoomNumber from Rooms join Users on Rooms.KeyHolderId=Users.Id

