create table user (
	id int not null unique,
	first_name varchar(32),
	last_name varchar(32),
	age int
);
insert into user (id, first_name, last_name, age) values (1, 'Janina', 'Kyneton', 25);
insert into user (id, first_name, last_name, age) values (2, 'Cleon', 'Yanshin', 26);
insert into user (id, first_name, last_name, age) values (3, 'Rhetta', 'Ceely', 30);
insert into user (id, first_name, last_name, age) values (4, 'Kelvin', 'Bowfin', 25);
insert into user (id, first_name, last_name, age) values (5, 'Glyn', 'Rosengart', 52);
insert into user (id, first_name, last_name, age) values (6, 'Garek', 'Hurnell', 25);
insert into user (id, first_name, last_name, age) values (7, 'Golda', 'Wasylkiewicz', 27);
insert into user (id, first_name, last_name, age) values (8, 'Honor', 'Ortells', 28);
insert into user (id, first_name, last_name, age) values (9, 'Sally', 'Gerriet', 29);
insert into user (id, first_name, last_name, age) values (10, 'Ulric', 'Braden', 18);
insert into user (id, first_name, last_name, age) values (11, 'Curr', 'Postill', 19);
insert into user (id, first_name, last_name, age) values (12, 'Darwin', 'Kivlehan', 21);
insert into user (id, first_name, last_name, age) values (13, 'Athene', 'Hanne', 25);
insert into user (id, first_name, last_name, age) values (14, 'Jazmin', 'Cribbins', 14);
insert into user (id, first_name, last_name, age) values (15, 'Andrey', 'Faunch', 51);
insert into user (id, first_name, last_name, age) values (16, 'Lesya', 'Divisek', 26);
insert into user (id, first_name, last_name, age) values (17, 'Gabie', 'Peverell', 25);
insert into user (id, first_name, last_name, age) values (18, 'Arel', 'Threadkell', 28);
insert into user (id, first_name, last_name, age) values (19, 'Sibeal', 'Kinneir', 29);
insert into user (id, first_name, last_name, age) values (20, 'Chadd', 'Chastanet', 20);

select * from user where age=25;
select first_name, age from user where age=25;
select first_name , last_name from user where id=3;

