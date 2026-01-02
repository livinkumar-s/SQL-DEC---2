use database1;

select * from cricketer;
select * from jersey;

insert into jersey (jersey,playerId) values (10,9);

select cricketer.name, jersey.jersey from cricketer inner join jersey 
on cricketer.id=jersey.playerId;

select * from cricketer left join jersey 
on cricketer.id=jersey.playerId;

select * from cricketer right join jersey 
on cricketer.id=jersey.playerId;

select c.name, j.jersey, c.email, c.noOfCenturies
 from cricketer c inner join jersey j 
on c.id=j.playerId where c.noOfCenturies>50;

CREATE TABLE color(
id int primary key auto_increment,
color varchar(10)
);

insert into color (color) values ('red'),('green'),('blue');

select * from color;
select * from size;

select color.color, size.size from color cross join size;

select c.name,j.jersey from cricketer c cross join
jersey j;

CREATE TABLE rating(
id int primary key auto_increment,
rating int not null,
actressId int not null
);

insert into rating (rating,actressId) values 
(9,1),(8,2),(10,4);

select * from actresslist;
select * from latestmovie;
select * from rating;

select * from actressList a right join latestmovie l on l.actressId=a.id;

insert into latestmovie (movie,actressId) values ("mysaa",1),("hi nana",4),
("toxic",2),("Jananayagan",10),("F1",9);

select * from actressList a right join latestmovie l on l.actressId=a.id
union
select * from actressList a left join latestmovie l on l.actressId=a.id;



select a.name,l.movie,r.rating from actressList a left join latestmovie l on l.actressId=a.id
left join rating r on a.id=r.actressId
union
select a.name,l.movie,r.rating from actressList a right join latestmovie l on l.actressId=a.id
right join rating r on a.id=r.actressId;

