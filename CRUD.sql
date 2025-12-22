use database1;

insert into actordetails VALUES (1,"Vijay",51),
(2,"Mahesh babu",49),
(3,"NTR",45),(4,"Ram charan",49),(5,"Prabhas",46);

insert into actordetails (id, name) VALUES (7,"Adharva");

SELECT * FROM actordetails;

SELECT * FROM actordetails WHERE id<3;

UPDATE actordetails SET age=40;

set sql_safe_updates=1;

DELETE FROM actordetails;