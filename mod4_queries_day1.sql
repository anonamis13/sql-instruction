select *
from customer
where state = 'OH'
and creditLimit >= 500000
order by name desc;

select * from customer
where state != 'KY';

select name, city, state, isCorpAcct as 'Corp?'
from customer;