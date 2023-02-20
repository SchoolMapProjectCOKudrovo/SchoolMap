use [KARTA]

--создание всех таблиц
CREATE DATABASE [KARTA]

CREATE TABLE [USER]
(
[Id] int primary key identity,
[Name] nvarchar(30),
[Password] nvarchar(30),
[IsDeleted] bit
)

CREATE TABLE [EVENT]
(
[Id] int primary key identity,
[UserId] int,
[Name] nvarchar(30),
[Location] nvarchar(30),
[Description] nvarchar(255),
[IsSchool] bit
)

CREATE TABLE [SHEDULE]
(
[Id] int primary key identity,
[DayOfWeek] int,
[StartTime] datetime,
[EndTime] datetime,
[EventId] int,
[Date] datetime
)

CREATE TABLE [DAYOFWEEK]
(
[Id] int primary key identity,
[Name] nvarchar(30)
)

CREATE TABLE [TASK]
(
[Id] int primary key identity,
[SheduleId] int,
[DayOfWeek] int,
[Description] nvarchar(255),
[IsDone] bit
)

--удаление всех таблиц
DROP TABLE [USER]
DROP TABLE [EVENT]
DROP TABLE [SHEDULE]
DROP TABLE [DAYOFWEEK]
DROP TABLE [TASK]

--выделение всех таблиц

SELECT * FROM [USER]
SELECT * FROM [EVENT]
SELECT * FROM [SHEDULE]
SELECT * FROM [DAYOFWEEK]
SELECT * FROM [TASK]

--процедуры
exec CreateUser 
exec DeleteUserById 
exec GetUserList
exec GetDeletedUserList
exec FullUserDelete

--примеры

INSERT [USER]
Values
('Gleb', 'qwerty123', 0),
('Kabanchig', 'qwerty228', 0)

INSERT [EVENT]
Values
(1, 'Dota2', 'Doma', 'Play Dota with friends', 0),
(1, 'Geography', '2.2.01', 'Ususal lesson', 1),
(2, 'Hru hru', 'saray', 'pohrukat', 0)