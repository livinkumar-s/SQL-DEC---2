use database1;

create table playerList(
id int primary key auto_increment,
name varchar(10)
);

insert into cricketplayers (playerName) 
values ("Kohli"),("MSD"),("Rohit");

select * from playerList;

ALTER TABLE playerlist ADD email 
varchar(50) AFTER playerName;

ALTER TABLE playerlist add email varchar(50), 
add DOB date;
ALTER TABLE playerlist add score int;

ALTER TABLE playerlist MODIFY name varchar(50);

ALTER TABLE playerlist CHANGE name playerName varchar(50);

DROP TABLE size;
DROP database databaseone;

ALTER TABLE playerlist DROP COLUMN score;
ALTER TABLE playerlist DROP COLUMN DOB;
ALTER TABLE playerlist DROP COLUMN email;

ALTER TABLE playerlist RENAME TO cricketPlayers;


ALTER TABLE cricketPlayers ADD UNIQUE (playerName);


select * from cricketer;

create view cricketerEmail AS SELECT email,isActive FROm
cricketer;

insert into cricketer (email, name, noOfCenturies, isActive)
value ("yuvrajsingh@gmail.com","yuvraj singh",34,0);

SELECT * FROM cricketeremail;