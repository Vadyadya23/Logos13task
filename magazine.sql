drop database if exists magazine;
create database magazine;
use magazine;

create table user(
id int not null primary key auto_increment,
email varchar(50) not null,
firstName varchar(50) not null,
lastName varchar(50) not null,
role varchar(50) not null,
password varchar(50) not null
);

create table product(
id int not null primary key auto_increment,
name varchar(50) not null,
description varchar(50) not null,
price double not null
);

create table bucket(
id int not null primary key auto_increment,
userId int not null,
productId int not null,
purchaseDate timestamp not null
);

select * from user;
select * from bucket;
select * from product;