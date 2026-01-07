use database1;

create table students(
stu_id int primary key auto_increment,
name varchar(50) not null,
mark int check (mark<=100),
dept varchar(50) not null
);

insert into students (name,mark,dept)
values 
("Raj",88,"ECE"),
("Anu",90,"ECE"),
("Rani",78,"ECE"),
("Kamal",99,"CSE"),
("Priyanka",100,"CSE"),
("Hariharan",22,"CSE"),
("Gayathri",55,"Civil"),
("Sandhiya",99,"Civil"),
("Hendry",55,"Civil");

select * from students;



select * from students;

select avg(mark) from students;

select * from students 
where mark>(select avg(mark) from students);


select mark from students where dept="ECE";

select * from students 
where 
mark > ALL (select mark from students where dept="ECE");


SELECT * FROM students s WHERE mark > (
    SELECT AVG(mark) FROM students where dept=s.dept
);


select name, mark, (select avg(mark) from students
where dept=s.dept) as averageMark from students s;
