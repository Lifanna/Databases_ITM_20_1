CREATE TABLE personage
(Id INT primary key IDENTITY(1,1),
 character_name NVARCHAR (20) NOT NULL,
 character_age smallint NOT NULL,
 RacesId INT,
 foreign key(RacesId) references Characters_races(RacesId))
