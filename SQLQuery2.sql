use DB_Links
----DROP TABLE UsersRoles
----GO
--CREATE TABLE UsersRoles
--(
--	RolesId INT,
--	UsersId INT,
--	RoleId2 INT,
--	foreign key (RolesId) references Roles(Id),
--	foreign key (UsersId) references Users(Id),
--)
--select * from UsersRoles 
select u.Id  from Users u inner join Roles r on r.Id=u.Id