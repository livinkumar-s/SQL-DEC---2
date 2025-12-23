use database1;

insert into actordetails VALUES (6,"Dhruv",29),
(7,"PR",27),
(8,"Rajini kanth",73),(9,"Kamal hasan",71),(10,"karthi",46);

select * from actordetails where age between 30 and 50;

select * from actordetails where not age<50 or id>5;


select * from actordetails 
where age not in (30,40,35,45,39,49,51);

select * from actordetails where name like "k%";
select * from actordetails where name like "%n";
select * from actordetails where name like "___%";
select * from actordetails where name like "% %";
select * from actordetails where name like "%a%";


select * from actordetails order by name desc;
select * from actordetails limit 10 offset 30;
select * from actordetails order BY age ASC LIMIT 1;
