-- Database Systems -- 
-- Lab 5 --
-- Brandon Kline --

-- 1 --

select city
from agents
inner join orders
on orders.aid = agents.aid
where orders.cid = 'c006';

-- 2 --

select pid
from orders
inner join customers
on orders.cid = customers.cid
where customers.city = 'Beijing'
order by pid asc;

-- 3 --

select name 
from customers
where cid not in
(select cid
from orders);

-- 4 --

select name
from customers
left outer join orders
on customers.cid = orders.cid
where ordno is null;

-- 5 --

select orders_spec.name, agents.name
from agents
inner join (select *
from customers
inner join orders
on customers.cid = orders.cid) 
as orders_spec
on orders_spec.aid = agents.aid
where orders_spec.city = agents.city;

-- 6 --

select customers.name, agents.name
from customers
inner join agents
on customers.city = agents.city;

 -- 7 --
 
 select name, city
from customers
where city in
(select name (city)
 from products
group by city
order by count(city) asc
limit 1);