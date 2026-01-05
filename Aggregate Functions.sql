use database1;

select * from cricketer;
select concat(name,email) from cricketer;

CREATE TABLE products(
pro_id int primary key auto_increment,
name varchar(50) not null unique,
price floAT,
CATEGORY VARCHAR(40)
);

INSERT INTO products (name,price, category) values 
("apple",111.11,"fruit"),
("orange",125.11,"fruit"),
("banana",33.35,"fruit"),
("tomato",30.55,"veg"),
("onion",40.55,"veg"),
("ladies finger",45.44,"veg"),
("Lap",300000,"gadget"),
("Mobile",30000,"gadget");

INSERT INTO products (name,price) value ("lolipop",5);

select * from products;

select count(category) from products;
select sum(price) as result from products;
select max(price) as result from products;
select min(price) as result from products;
select avg(price) as result from products;


select name, round(price) as price from products;
select name, avg(price) as averagePrice from products;


select CATEGORY,count(*) from products group by CATEGORY; 

select CATEGORY,count(*) from products group by CATEGORY HAVING count(*)>2; 