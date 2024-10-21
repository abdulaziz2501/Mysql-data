create table city(
	id int not null unique,
	city varchar(64),
	country varchar(64), 
	postcode int
);

insert into city(id, city, country, postcode) values(1, "Tashkent", "Uzbekistan", 1210);
insert into city(id, city, country, postcode) values(2, "Jizzakh", "Uzbekistan", 1225);
insert into city(id, city, country, postcode) values(3, "Parij", "France", 4560);
insert into city(id, city, country, postcode) values(4, "Samarqand", "Uzbekistan", 1240);
insert into city(id, city, country, postcode) values(5, "Navoiy", "Uzbekistan", 1260);
insert into city(id, city, country, postcode) values(6, "Qashqadaryo", "Uzbekistan", 1255); 
insert into city(id, city, country, postcode) values(7, "Buxoro", "Uzbekistan", 1275); 
insert into city(id, city, country, postcode) values(8, "Mascow", "Russian", 4530);
insert into city(id, city, country, postcode) values(9, "Rim", "Italy", 8561);
insert into city(id, city, country, postcode) values(10, "Washington", "USA", 6530);

select * from city where country="Uzbekistan";


create table books (
	id int not null unique,
	name varchar(32),
	author varchar(32),
	category varchar(32),
	price int
);
insert into books (id, name, author, category, price) values (1, 'Urushning 33 strategiyalri', 'Robert Grin', 'Ilmiy', 60000);
insert into books (id, name, author, category, price) values (2, 'Savdo sanati', 'Grant Kardon', 'Iqtisodiy', 99000);
insert into books (id, name, author, category, price) values (3, 'Mahorat', 'Robert Grin', 'Ilmiy', 90000);
insert into books (id, name, author, category, price) values (4, 'Kashandalikdan qutilishning oson yo\'li', 'Allen Karr', 'Psixologik', 99000);
insert into books (id, name, author, category, price) values (5, 'Mantiqiy xato', 'Bo Bennett', 'Iqtisodiy', 50000);
insert into books (id, name, author, category, price) values (6, 'Rejali ayol', 'Mey Mask', 'ILmiy', 60000);
insert into books (id, name, author, category, price) values (7, 'To\'qchilik va yo\'qchilik', 'Ernest Xeminguey', 'Iqtisodiy', 40000);
insert into books (id, name, author, category, price) values (8, 'Ozor berma', 'Henri Marsh', 'Hayotiy', 86000);
insert into books (id, name, author, category, price) values (9, 'Mamlakatlar tanazzuli sabablari', 'Daron Ajemo\'g\'li', 'Siyosiy', 89000);
insert into books (id, name, author, category, price) values (10, 'Latte omili', 'Devid Bax, Jon Devid Mann', 'Iqtisodiy', 60000);

select * from books where author= "Robert Grin";


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

