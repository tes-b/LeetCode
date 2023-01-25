# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

# DELETE from Person 
# where id in (select id from (select id as A from Person group by email having count(*) > 1) as temp);

delete p1 from Person p1, Person p2
WHERE p1.email = p2.email AND p1.id > p2.id;