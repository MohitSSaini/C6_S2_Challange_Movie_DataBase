-- create a database called `movies`
  create database if not exists  `movies`;
-- use the `movies` database
   use `movies`;
-- create a table called `movie` with the following columns:
-- title
-- budget_in_millions
-- release_date
-- revenue_in_millions
-- rating_average
create table if not exists `movie`(
`Title` varchar(40)not null primary key,
`Budget_In_Millions` int not null,
`Release_Date` date not null,
`Revenue_In_Millions` int not null,
`Rating_Average` double not null
);
-- insert the following data into the `movie` table:
-- avatar, 237, 10-12-2009, 278, 7.2
insert into `movies`.`movie`(`Title`,`Budget_In_Millions`,`Release_Date`,`Revenue_In_Millions`,`Rating_Average`) values ('Avatar', '237', 10/12/2009, '278', '7.2');
-- titanic, 200, 11-18-1997, 185, 7.5
insert into `movies`.`movie`(`Title`,`Budget_In_Millions`,`Release_Date`,`Revenue_In_Millions`,`Rating_Average`) values ('Titanic', '200', 11/18/1997, '185', '7.5');
-- the avengers, 220, 25-04-2012, 152, 7.4
insert into `movies`.`movie`(`Title`,`Budget_In_Millions`,`Release_Date`,`Revenue_In_Millions`,`Rating_Average`) values ('The Avengers', '220', 25/04/2012, '152', '7.4');
-- 'Jurassic World','150',09/06/2015,'151','6.5'
insert into `movies`.`movie`(`Title`,`Budget_In_Millions`,`Release_Date`,`Revenue_In_Millions`,`Rating_Average`) values ('Jurassic World','150',09/06/2015,'151','6.5');
-- furious 7, 190, 01-04-2015, 141, 7.3
insert into `movies`.`movie` values ('Furious 7', 190 , 01/04/2015, 141, 7.3);
-- the avengers: age of ultron, 280, 22-04-2015, 141, 7.3
insert into `movies`.`movie` values ('The Avengers : Age Of Ultron', 280, 2015/04/22, 141, 7.3);
-- iron man 3, 200, 18-04-2013, 122, 6.8
insert into `movies`.`movie` values ('Iron Man 3 ', 200, 2013/04/18, 122, 6.8);
-- minions, 74, 17-06-2015, 11, 6.4
insert into `movies`.`movie` values ('Minions', 74,2015/06/17, 11, 6.4);
-- captain america: civil war, 250, 27-04-2016, 115, 7.1
insert into `movies`.`movie` values ('Captain America: Civil War', 250,2016/04/27, 115, 7.1);
-- transformers: dark of the moon, 195, 28-06-2011, 112, 6.1
insert into `movies`.`movie` values ('Transformers: Dark Of The Moon', 195,2011/06/28, 112, 6.1);

-- Get all the movies from the Movie table.
select `title` from `movies`.`movie`;

-- Fetch the movie with the name Jurassic World and a rating of 6.5.
select `title`,`rating_average` from `movies`.`movie` where (`Title`= 'Jurassic World' && `Rating_Average` = 6.5) ;

-- Retrieve all the movies that have a rating of 7 and above.
select `title`from `movies`.`movie` where (`Rating_Average`>=7.0) ;

-- Fetch all the movies that have the title Avengers.
select `title`from `movies`.`movie` where (`Title`like '%Avengers%');

-- Retrieve the title, and rating of all the movies that have a rating between 7 and 8.
select `title`,`rating_average`from `movies`.`movie` where (`Rating_Average` between 7.0 and 8.0);

-- Get the title of all the movies that have a budget of $250 million and more.
select `title`from `movies`.`movie` where (`Budget_In_Millions`>= 250);

-- Retrieve the title, and rating of all movies that had earned a revenue of $150 to $200 million.
select `title`,`rating_average`from `movies`.`movie` where (`Revenue_In_Millions` between 150 and 200);

-- Fetch the title and release date of all movies beginning with 'T'.
select `title`,`release_date`from `movies`.`movie` where (`Title` like 'T%');

--Retrieve the total revenue of all the movies together.
select sum(`Revenue_In_Millions`)from `movies`.`movie`;

--Get the title, revenue of the movie that has earned the least revenue.
select`title`,`revenue_in_millions`from `movies`.`movie` where (`Revenue_In_Millions`= (select min(`Revenue_In_Millions`)from `movies`.`movie`));