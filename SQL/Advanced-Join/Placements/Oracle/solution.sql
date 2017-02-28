/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select s.name from students s 
where 
(select p.salary from packages p where s.id = p.id) < (select p.salary from packages p where p.id = (select f.friend_id from friends f where f.id = s.id))
order by (select p.salary from packages p where p.id = (select f.friend_id from friends f where f.id = s.id)) asc;
