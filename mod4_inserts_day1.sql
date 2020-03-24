select * from customer;

-- insert one row, inc. id
insert into customer (id, name, city, state, isCorpAcct, creditLimit, active)
values (8, 'Test1', 'Cinci', 'OH', 0, '1000000', 1);

-- insert one row, no id
insert into customer (name, city, state, isCorpAcct, creditLimit, active)
values ('Test1', 'Cinci', 'OH', 0, '1000000', 1);

-- insert multiple rows
insert into customer values
(10, 'Test3', 'Cinci', 'OH', 0, '1000000', 1),
(11, 'Test4', 'Cinci', 'OH', 0, '1000000', 1),
(12, 'Test5', 'Cinci', 'OH', 0, '1000000', 1);

-- update customer id 8 with name ABC Supplier
update customer set name = 'ABC Supplier' where id = 8;

-- delete a row from the table
delete from customer where id = 8;

-- delete all rows greater than id = 8
delete from customer where id > 8;