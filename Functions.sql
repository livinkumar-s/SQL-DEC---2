use database1;

select name as actorName, age from actordetails;

select "Pongal" as festival;

select round(5.49) as number;
select floor(5.0001) as number;
select ceil(5.0001) as number;
select mod(4,5) as result;
select power(4,3) as result;
select abs(-19) as result;


use database1;

select name, mod(age,2) as age from actordetails;

select concat("Hello","World","..!") as result;
select length(concat("Hello","World","..!")) as result;
select upper("Hello World") as result;
select lower("Hello World") as result;
select replace("Hello World", "Hello", "Hi") as result;
select ("Hello World", "Hello", "Hi") as result;
select substring("Hello guys!",7,3) as result;

select concat("The name is ",name) as actorName from actordetails;

select curdate();
select curtime();
select now();
select datediff("2026-01-01",curdate());

select * from actordetails;

SELECT concat("His name is ",UPPER(name),".", "He is ", age," years old..!") as actorData FROM actordetails
 






