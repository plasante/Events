drop table event_person;
drop table events;
drop table people;
drop table cities;
drop table roads;


CREATE TABLE event_person (
  event_id int NOT NULL,
  person_id int NOT NULL,
  PRIMARY KEY (event_id, person_id)
);

CREATE TABLE events (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dt datetime NULL,
  name nvarchar(50) NULL
);

CREATE TABLE people (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(50) NOT NULL
);

CREATE TABLE cities (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(50) NOT NULL
);

CREATE TABLE roads (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  city_a_id int NOT NULL,
  city_b_id int NOT NULL,
  number int NOT NULL,
  distance int NOT NULL,
  max_speed int NOT NULL,
  min_speed int NOT NULL,
  current_speed int NOT NULL
);

insert into events(dt,name)
values ('2009-12-31','New Years Eve');

insert into events(dt,name)
values ('2010-1-1','New Years Day');

insert into people(name)
values ('Pierre Lasante');

insert into people(name)
values ('Carole Spenard');

insert into event_person(event_id,person_id)
select events.id, people.id
from events,people
where people.name='Carole Spenard';