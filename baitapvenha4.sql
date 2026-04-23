create database phone_management_db;

use phone_management_db;

create table USERS(
	user_id int primary key auto_increment,
    user_name varchar(255) not null,
	phone int not null
);

alter table USERS
add column phone_new varchar(15) null;

update USERS
set phone_new = concat('0', phone)
where phone_new is null and user_id > 0;

alter table USERS
drop column phone;

alter table USERS
change column phone_new phone varchar(15);