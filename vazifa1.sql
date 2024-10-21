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


CREATE TABLE countries (
	country_id text NOT NULL,
	country_name text NOT NULL,
	region_id INTEGER NOT NULL,
	PRIMARY KEY (country_id ASC),
	FOREIGN KEY (region_id) REFERENCES regions (region_id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO countries VALUES('AR','Argentina',2);
INSERT INTO countries VALUES('AU','Australia',3);
INSERT INTO countries VALUES('BE','Belgium',1);
INSERT INTO countries VALUES('BR','Brazil',2);
INSERT INTO countries VALUES('CA','Canada',2);
INSERT INTO countries VALUES('CH','Switzerland',1);
INSERT INTO countries VALUES('CN','China',3);
INSERT INTO countries VALUES('DE','Germany',1);
INSERT INTO countries VALUES('DK','Denmark',1);
INSERT INTO countries VALUES('EG','Egypt',4);
INSERT INTO countries VALUES('FR','France',1);
INSERT INTO countries VALUES('HK','HongKong',3);
INSERT INTO countries VALUES('IL','Israel',4);
INSERT INTO countries VALUES('IN','India',3);
INSERT INTO countries VALUES('IT','Italy',1);
INSERT INTO countries VALUES('JP','Japan',3);
INSERT INTO countries VALUES('KW','Kuwait',4);
INSERT INTO countries VALUES('MX','Mexico',2);
INSERT INTO countries VALUES('NG','Nigeria',4);
INSERT INTO countries VALUES('NL','Netherlands',1);
INSERT INTO countries VALUES('SG','Singapore',3);
INSERT INTO countries VALUES('UK','United Kingdom',1);
INSERT INTO countries VALUES('US','United States of America',2);
INSERT INTO countries VALUES('ZM','Zambia',4);
INSERT INTO countries VALUES('ZW','Zimbabwe',4);

CREATE TABLE jobs (
	job_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	job_title text NOT NULL,
	min_salary double NOT NULL,
	max_salary double NOT NULL
);
INSERT INTO jobs VALUES(1,'Public Accountant',4200.0,9000.0);
INSERT INTO jobs VALUES(2,'Accounting Manager',8200.0,16000.0);
INSERT INTO jobs VALUES(3,'Administration Assistant',3000.0,6000.0);
INSERT INTO jobs VALUES(4,'President',20000.0,40000.0);
INSERT INTO jobs VALUES(5,'Administration Vice President',15000.0,30000.0);
INSERT INTO jobs VALUES(6,'Accountant',4200.0,9000.0);
INSERT INTO jobs VALUES(7,'Finance Manager',8200.0,16000.0);
INSERT INTO jobs VALUES(8,'Human Resources Representative',4000.0,9000.0);
INSERT INTO jobs VALUES(9,'Programmer',4000.0,10000.0);
INSERT INTO jobs VALUES(10,'Marketing Manager',9000.0,15000.0);
INSERT INTO jobs VALUES(11,'Marketing Representative',4000.0,9000.0);
INSERT INTO jobs VALUES(12,'Public Relations Representative',4500.0,10500.0);
INSERT INTO jobs VALUES(13,'Purchasing Clerk',2500.0,5500.0);
INSERT INTO jobs VALUES(14,'Purchasing Manager',8000.0,15000.0);
INSERT INTO jobs VALUES(15,'Sales Manager',10000.0,20000.0);
INSERT INTO jobs VALUES(16,'Sales Representative',6000.0,12000.0);
INSERT INTO jobs VALUES(17,'Shipping Clerk',2500.0,5500.0);
INSERT INTO jobs VALUES(18,'Stock Clerk',2000.0,5000.0);
INSERT INTO jobs VALUES(19,'Stock Manager',5500.0,8500.0);




#avg vazifalari:

select avg(price) from books;
select avg(price) from books where author="Robert Grin";
select avg(price) from books where category="Iqtisodiy";
select avg(price) from books where author="Robert Grin" and category="Iqtisodiy";  #bu yerda null chiqadi jadvalimizda Robert Grin Iqtisodiy kitob yozmagan.
select avg(postcode) from city;
select avg(postcode) from city where country="Uzbekistan";

#sum vazifalari:

select sum(price) from books;
select sum(price) from books where author="Robert Grin";
select sum(price) from books where category="Iqtisodiy";
select sum(price) from books where author="Robert Grin" and category="Ilmiy";

#limit vazifalari:
select * from city limit 3;
select * from city where id>4 limit 2 offset 1;
select * from city where postcode<12345 limit 5;
select * from city where country="Uzbekistan" limit 1 offset 2;

select * from books where category="Iqtisodiy" limit 4 offset 3;
select * from books where author="Robert Grin" limit 6;
select * from books order by price limit 5;
select * from books order by price desc limit 3;
select * from books order by price desc limit 7 offset 3;

#sample-database dan olingan malumotlar asosida

select min(min_salary) from jobs;
select max(min_salary) from jobs;
select min(max_salary) from jobs;
select max(max_salary) from jobs;
select job_title from jobs order by max_salary desc limit 5;
select * from countries where region_id=4 order by country_name;
select * from countries order by region_id;
select * from countries order by country_name;

SELECT region_id, COUNT(*) AS country_count
FROM countries
GROUP BY region_id;

SELECT region_id, GROUP_CONCAT(country_name) AS countries
FROM countries
GROUP BY region_id;


