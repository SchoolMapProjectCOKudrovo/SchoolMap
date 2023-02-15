use [KARTA]

--создание всех таблиц

CREATE TABLE [USER]
(
[Id] int primary key identity,
[Name] nvarchar(30),
[Password] nvarchar(30)
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

--создание процедур
CREATE PROCEDURE GetEventsByUser
@userid int
as
SELECT U.[Id], U.[Name], E.[Name] AS EventName, E.[Location], E.[Description], E.[IsSchool] FROM [USER] AS U
inner join [EVENT] AS E ON E.[UserId] = U.[Id]
WHERE U.[Id] = @userid

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
exec GetEventsByUser 1

--примеры

INSERT [USER]
Values
('Gleb', 'qwerty123'),
('Kabanchig', 'qwerty228')

INSERT [EVENT]
Values
(1, 'Dota2', 'Doma', 'Play Dota with friends', 0),
(1, 'Geography', '2.2.01', 'Ususal lesson', 1),
(2, 'Hru hru', 'saray', 'pohrukat', 0)