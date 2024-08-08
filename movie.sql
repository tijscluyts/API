DROP table IF EXISTS movie.tickets;
DROP TABLE IF EXISTS movie.review;
DROP SCHEMA IF EXISTS movie;
create schema movie;


USE movie;

CREATE TABLE review(
contactId int PRIMARY KEY AUTO_INCREMENT,
stars int not null,
naam VARCHAR(50) NOT NULL,
bericht VARCHAR(500) NOT NULL
);

create table tickets(
ticketId int PRIMARY KEY AUTO_INCREMENT
);

insert into movie.review values (1, 2, "Henk", "trash");
insert into movie.review values (2, 4, "Barbara", "very scary");

insert into movie.tickets values ();
insert into movie.tickets values ();
insert into movie.tickets values ();
insert into movie.tickets values ();
insert into movie.tickets values ();
insert into movie.tickets values ();
insert into movie.tickets values ();
insert into movie.tickets values ();
insert into movie.tickets values ();




