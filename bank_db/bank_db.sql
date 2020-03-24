-- create and select the database
drop database if exists bank_db;
create database bank_db;
use bank_db;

-- create the accounts table
create table Account (
	ID 				int 			primary key auto_increment,
    AccountHolder 	varchar(50) 	not null unique,
    Birthdate		date			not null,
    Balance 		decimal(6,2) 	not null default 0,
    Fees 			decimal (6,2) 	not null default 0
    );
    
 -- create the transactions table   
create table Transaction (
	ID 			int 			primary key auto_increment,
    Amount 		decimal (6,2) 	not null,
    TxnType 	varchar(50) 	not null,
    AccountID 	int 			not null, 
    foreign key (AccountID) references Account(ID)
    );
 
-- insert records
insert Account (ID, accountHolder, birthdate, balance, fees) Values (1,'Alina Ivannikov', '1999-01-01', 8888.00, 250.00);
insert Account (ID, accountHolder, birthdate, balance, fees) Values (2,'Dennis Frey', '1999-02-07', 5444.00, 175.00);
insert Account (ID, accountHolder, birthdate, balance, fees) Values (3,'Nicholas Renner', '1999-12-15', 3333.00, 88.00);
insert Account (ID, accountHolder, birthdate, balance, fees) Values (4,'Tyler Stegman', '1999-7-20', 3322.00, 88.00);

insert Transaction (amount, txnType, accountID) Values (500.00, 'Deposit', 3);
insert Transaction (amount, txnType, accountID) Values (-200.00, 'Withdrawal', 4);
insert Transaction (amount, txnType, accountID) Values (200.00, 'Deposit', 4);
insert Transaction (amount, txnType, accountID) Values (248.00, 'Deposit', 1);

select * from account
order by accountHolder;

select * from transaction
order by amount;

select a.accountHolder, a.balance,
b.amount, b.txntype
from account a
join transaction b
on a.id = b.accountID;

select a.id, a.accountholder,
a.balance, a.fees, b.amount,
b.txntype
from account a
left join transaction b
on a.id = b.accountid;

-- list all transactions (amount, txntype) and the account holder
select a.id, accountHolder, amount, txnType
from transaction t
join account a
on t.AccountID = a.ID;

