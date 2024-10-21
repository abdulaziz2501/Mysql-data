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
insert into books (id, name, author, category, price) values (8, 'Ozor berma', 'Henri Marsh', 'Hayotiy', 8);
insert into books (id, name, author, category, price) values (9, 'Mamlakatlar tanazzuli sabablari', 'Daron Ajemo\'g\'li', 'Siyosiy', 89000);
insert into books (id, name, author, category, price) values (10, 'Latte omili', 'Devid Bax, Jon Devid Mann', 'Iqtisodiy', 60000);

select * from books where author= "Robert Grin";

