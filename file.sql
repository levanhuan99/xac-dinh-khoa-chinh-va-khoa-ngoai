show databases ;
use  vanhuan;
show tables ;
create database bankManager;
use  bankManager;
create table Customer(
    customer_id int not null unique ,
    name varchar(255) not null ,
    address varchar(255) not null ,
    email varchar(255) not null unique,
    phone varchar(11) not null unique ,
    account_number int not null unique ,
    primary key (customer_id)
);
create table Account(
    account_number int not null unique ,
    date DATE not null ,
    balance int ,
    primary key (account_number)
);
create table Transaction(
    tran_number int not null,
    account_number int not null unique ,
    date Date,
    amounts int not null ,
    description varchar(255),
    foreign key (account_number) references Account(account_number)
);
drop table Transaction;
describe Customer;
