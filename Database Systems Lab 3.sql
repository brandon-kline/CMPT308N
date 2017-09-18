-- Database Systems -- 
-- Lab 3 --
-- Brandon Kline --

-- 1 --

select ordno, totalusd
from orders;

-- 2 --

select name, city
from agents
where name = 'Smith';

-- 3 --

select pid, name, priceusd
from products
where qty > 200010;

-- 4 --

select name, city
from customers
where city = 'Duluth';

-- 5 --

select name
from agents
where city != 'Dallas'
and city != 'London'
and city != 'Hong Kong'
and city != 'Newark';

-- 6 --

select *
from products
where city != 'Dallas'
and city != 'Duluth'
and priceusd >= 1;

-- 7 --

select *
from orders
where month = 'Mar'
or month = 'May';

-- 8 --

select *
from orders
where month = 'Feb'
and totalusd >= 500;

-- 9 --

select *
from customers
where cid = 'c005';