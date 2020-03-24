SELECT * FROM orders;

-- show all orders by customer
select name, date, total
from orders o
join customer c
on c.id = o.customerID
order by name, total desc;