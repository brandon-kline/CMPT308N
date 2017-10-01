-- Database Systems -- 
-- Lab 4 --
-- Brandon Kline --

-- 1 --

select city
from agents
where aid in
(select aid
from orders
where cid = 'c006');

-- 2 --

select distinct pid 
from orders
where aid in
(select aid
from orders
where cid in
(select cid
from customers
where city = 'Beijing'))
order by pid asc;

-- 3 --

select name, cid
from customers
where cid in 
(select cid
from orders 
where aid != 'a03');

-- 4 --

select cid
from orders
where pid = 'p01'
intersect
select cid
from orders
where pid = 'p07';

-- 5 --

select pid
from orders
except
(select pid
from orders
where aid = 'a02'
union
(select pid
from orders 
where aid = 'a03'));

-- 6 --

select name, discountpct, city
from customers
where cid in
(select cid 
from orders
where aid in 
(select aid 
 from agents
 where city = 'New York'
 or city = 'Tokyo'));
 
 -- 7 --
 
 select *
 from customers
 where discountpct in
 (select discountpct 
from customers
where city = 'Duluth'
or city = 'London');

-- 8 --

-- Check constraints are functions that can be used in SQL to limit 
-- a range of values in a column when a table is created or altered. 
-- They are good for defining hard limits on what can and cannot be
-- entered into a given column in a table. For example, in a database
-- pertaining to a children, a check constraint could be used so that
-- age values cannot be set above 17. Check constraints could also
-- force a grade level in a table of college students to be either
-- freshman, sophomore, junior, senior, or graduate. A poor example of
-- a check constraint would be using a check to enforce that a city
-- column must equal Dallas in a table concering people living in Dallas,
-- as that would be redundant. 