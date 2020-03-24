-- Drop and Create the Database, DDL

drop database if exists bmdb;
create database bmdb;
use bmdb;

-- DDL - Create Tables
create table movie (
	id 				int 			primary key not null auto_increment,
	title	 		varchar(100) 	not null,
	year 			int				not null,
	rating		 	varchar(5)		not null, 		
	director		varchar(50) 	not null
	);

create table actor (
	id 				int 			primary key not null auto_increment,
	firstName 		varchar(25)		not null,
	lastName 		varchar(25)		not null,
	gender	 		varchar(6)		not null,
	birthDate 		date			not null,
    constraint unq_actor unique (firstName, lastName, birthDate)
	);


create table credit (
	id 				int 			primary key not null auto_increment,
	actorID			int 			not null,
	movieID			int 			not null,
	role			varchar(30)		not null,
	FOREIGN KEY (actorID) REFERENCES actor(id),
	FOREIGN KEY (movieID) REFERENCES movie(id),
    CONSTRAINT act_mov unique (actorID, movieID)
    );
    
create table genre (
	id 				int				primary key auto_increment,
    name			varchar(10)		not null unique
    );
    
create table movieGenre (
	id				int				primary key auto_increment,
    movieID			int				not null,
    genreID			int				not null,
    foreign key (movieID) references movie(ID),
    foreign key (genreID) references genre(ID),
    constraint gen_mov unique (genreID, movieID)
    );
    
-- DML Insert Movie Data

insert into movie (id, title, year, rating, director) 
values (1, 'Avengers: Endgame', 2019, 'PG-13', 'Anthony, Joe Russo');
insert into movie (id, title, year, rating, director) 
values (2, 'Scott Pilgrim vs. the World', 2010, 'PG-13', 'Edgar Wright');
insert into movie (id, title, year, rating, director) 
values (3, 'Jurassic Park', 1993, 'PG-13', 'Steven Spielberg');


-- DDL Insert Actor Data

insert into actor (id, firstName, lastName, gender, birthDate)
values (1, 'Robert', 'Downey Jr.', 'Male', '1965-04-04');
insert into actor (id, firstName, lastName, gender, birthDate)
values (2, 'Chris', 'Evens', 'Male', '1981-06-13');
insert into actor (id, firstName, lastName, gender, birthDate)
values (3, 'Michael', 'Cera', 'Male', '1988-06-07');
insert into actor (id, firstName, lastName, gender, birthDate)
values (4, 'Mary Elizabeth', 'Winstead', 'Female', '1984-11-28');
  
    
-- DML Insert Credit Data

insert into credit (id, actorID, movieID, role)
values (1, 1, 1, 'Iron Man, Tony Stark');
insert into credit (id, actorID, movieID, role)
values (2, 2, 1, 'Steve Rogers, Captain America');
insert into credit (id, actorID, movieID, role)
values (3, 3, 2, 'Scott Pilgrim');
insert into credit (id, actorID, movieID, role)
values (4, 4, 2, 'Ramona Flowers');


select * from movie;
select * from actor;
select * from credit;

-- HW queries below

select *
from movie m
inner join credit c
on m.id = c.movieID;

select *
from actor a
inner join credit c
on a.id = c.actorID;

select *
from movie m
join actor a
join credit c
on m.id = c.movieID
and a.id = c.actorID;

select *
from movie m
join actor a
join credit c
where m.id = c.movieID
and a.id = c.actorID;

-- class queries below

select movie.title, movie.year, credit.role,
concat(actor.firstName, " ", actor.lastName) as 'actor name'
from movie
join credit
on movie.id = credit.movieid
join actor
on actor.id = credit.actorid; -- note from Sean, where/on clause makes no difference in practice,
							  -- on is more efficient when working with large data
                              
-- left join movie - credit
select movie.title, movie.year, credit.role
from movie
left join credit
on movie.id = credit.movieid;

-- subquery example
