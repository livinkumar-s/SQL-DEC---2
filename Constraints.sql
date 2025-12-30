use database1;

CREATE TABLE cricketer(
id int primary key auto_increment,
name varchar(50) not null,
email varchar(100) not null unique,
noOfCenturies int check (noOfCenturies>=10),
isActive boolean default 1
);

INSERT INTO cricketer (name,email,noOfCenturies,isActive) Values
("chris gayle","boss@gmail.com",42,0),
("viv richardsan","rich@gmail.com",24,0);

select * from cricketer;

CREATE TABLE jersey (
id int primary key auto_increment,
jersey int not null,
playerId int unique,
foreign key (playerId) references cricketer(id)
);


insert into jersey (jersey,playerId) values
(18,9);