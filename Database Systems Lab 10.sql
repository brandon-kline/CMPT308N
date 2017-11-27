 -- Database Systems --
 -- Lab 10 --
 -- Brandon Kline --
 
 -- 1 --
 
CREATE OR REPLACE FUNCTION PreReqsFor (int, REFCURSOR) returns REFCURSOR AS 
$$
DECLARE
   course_num int := $1;
   resultSet REFCURSOR := $2;
BEGIN
   OPEN resultSet for
      select num, name, credits, prereqnum
      from courses
      right outer join prerequisites
      on courses.num = prerequisites.coursenum
      where course_num = coursenum
      order by prereqnum desc;
   return resultSet;
END;
$$
LANGUAGE PLPGSQL;

select PreReqsFor('499', 'results');
fetch all from results;

-- 2 --

CREATE OR REPLACE FUNCTION PreReqsFor (int, REFCURSOR) returns REFCURSOR AS 
$$
DECLARE
   course_num int := $1;
   resultSet REFCURSOR := $2;
BEGIN
   OPEN resultSet for
      select num, name, credits, prereqnum
      from courses
      right outer join prerequisites
      on courses.num = prerequisites.coursenum
      where course_num < coursenum
      order by prereqnum desc;
   return resultSet;
END;
$$
LANGUAGE PLPGSQL;

select PreReqsFor('220', 'results');
fetch all from results;