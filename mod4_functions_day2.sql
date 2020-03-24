select * from customer;

-- what is the total credit limit of all rows?
select sum(creditLimit) from customer;

-- what is the average credit limit of all rows?
select concat('$',format(avg(creditLimit),2)) as 'Average' from customer;

-- report state and credit limit, sum by state
select state, concat('$', format(sum(creditLimit), 2)) as 'Total Credit Limit'
from customer
group by state
having sum(creditLimit) > 500000
order by state;

-- count number of rows
select count(*) from customer;

-- max/min function
select min(creditLimit) from customer;