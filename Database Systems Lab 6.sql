-- Database Systems -- 
-- Lab 6 --
-- Brandon Kline --

-- 1 --

select name, city
from customers
where city in
(select name (city)
 from products
group by city
order by count(city) desc
limit 2);

-- 2 --

select name
from products
where priceusd >= (select avg (priceusd)
from products)
order by name desc;

-- 3 --

select name, pid, totalusd
from orders
inner join customers on orders.cid = customers.cid
order by totalusd asc;

-- 4 --

select name, coalesce(quantity, 0)
from orders
right outer join customers on orders.cid = customers.cid
order by name desc;

-- 5 --

select customers.name, products.name, agents.name
from orders
full outer join customers on orders.cid = customers.cid
full outer join agents on orders.aid = agents.aid
full outer join products on orders.pid = products.pid
where agents.city = 'Newark';

-- 6 --

select ((products.priceUSD * orders.quantity) - (products.priceUSD * orders.quantity) * (customers.discountpct / 100)), orders.totalusd
from orders
full outer join customers on orders.cid = customers.cid
full outer join products on orders.pid = products.pid
where ((products.priceUSD * orders.quantity) - (products.priceUSD * orders.quantity) * (customers.discountpct / 100)) != orders.totalusd;
-- Apologies for all the decimals. I couldn't figure out how to fix that --

 -- 7 --
 
-- A left outer join contains all the rows from the "left"
-- or first table and only the matching rows from the "right"
-- or second table. Conversely, a right outer join contains
-- all the rows from the "right" or second table and only the
-- matching rows from the "left" or first table. 
-- For example:

select *
from orders
left outer join products on orders.pid = products.pid;

elect *
from products
right outer join orders on products.pid = orders.pid;

-- Despite the syntax being mostly the same, these are two 
-- completely different queries because of the matching columns
-- that these two tables have in common.