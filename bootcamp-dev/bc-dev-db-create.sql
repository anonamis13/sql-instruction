-- Module 4 HW - 03/18/2020

-- create the database schema
drop database if exists bc_dev_db;
create database bc_dev_db;
use bc_dev_db;

-- create the customer table
create table developer (
	emp_id 			int 			not null primary key,
	last_name 		varchar(50) 	not null,
	first_name 		varchar(50) 	not null,
	role 			varchar(20) 	not null,
	start_date 		date	 		,
	salary 			int 			
);

-- add some customers to our customers table
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('5522','Williamson','Sarah','Developer 5','2015/6/15','125000');
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('1111','Blessing','Sean','Manager 2','2005/4/1','120000');
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('2498','O''Connell','Sam','Developer 4','2015/5/1','107500');
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('2222','Hall','Christian','Developer 4','2020/12/5','95000');
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('6352','Osborne','Trevor','Developer 3','2017/8/4','83500');
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('9632','Crabtree','Marcus','Developer 3','2016/11/5','82000');
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('8544','Frey','Dennis','Developer 3','2017/3/3','75000');
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('1254','Renner','Nick','Developer 2','2017/12/1','68000');
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('1122','Ivannikov','Alina','Developer 2','2018/7/19','67750');
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('6789','Shepard','Eric','Developer 2','2018/12/12','65200');
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('8574','Stegman','Tyler','Developer 2','2018/11/5','65000');
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('4512','Peters','Jeff','Developer 1','2019/10/5','62000');
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('1055','Wansik','Andrew','Developer 1','2020/1/1','59000');
insert into developer (emp_id, last_name, first_name, role, start_date, salary)
values ('3222','Pineault','Jacob','Developer 1','2019/8/1','58500');


/*
HW Answers:

SELECT * FROM developer;

select * from developer
where role = 'Developer 4';

select * from developer
order by last_name;

select * from developer
order by salary desc;

select * from developer
where first_name like 'S%';
*/