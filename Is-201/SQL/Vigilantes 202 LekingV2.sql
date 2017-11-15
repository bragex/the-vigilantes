/*

Ikke tenk på om ting ser stygt ut når du skriver det inn i databasen.
Hvor skal du ellers lagre dataen? En server? Den serveren er jo databasen.
Hvor skal den statiske dataen være? I databasen. Ta varsel som eksempel:
Hvor skal teksten som varsler gir være lagret? Skal det være en person som sitter
å skriver varslene når man trenger dem? Når du skal gi en melding til studenter, 
hvordan skal programmet vite hva teksten er? En bruker skriver inn teksten som blir
lagret i en database. Når varselen dukker opp i en annens bruker program vil programmet
finne teksten i databasen og referere den.

TRENGER
Kommentering, litt spørsmål og view(se bunnen)
Visse kommentarer må også fjernes, feks det på toppen og dette jeg har skrevet her.


*/

drop database SLIT;

create database SLIT;
use SLIT;

Create table `user` (
    user_id int (5) auto_increment primary key,
    user_fname varchar(40),
    user_lname varchar(40),
    user_password varchar(40),
    user_email varchar (30),
    user_status varchar(10) default 'Student',
    user_m1 int(2) default 0,
    user_m2 int(2) default 0,
    user_m3 int(2) default 0,
    user_m4 int(2) default 0,
    user_m5 int(2) default 0
    
);

insert into `user` (user_id, user_fname, user_lname, user_password, user_email, user_status, user_m1, user_m2, user_m3, user_m4, user_m5)
values 
(1, 'Morten', 'Mygland', 'p123', 'morten@hotmail.com', 'Student', 6, 7, 8, 9, 10), 
(2, 'Benjamin', 'Sandøy', 'p123', 'benjamin@hotmail.com', 'Student', 6, 7, 8, 9, 10), 
(3, 'Kim', 'Moe', 'p123', 'kim@hotmail.com', 'Student', 6, 7, 8, 9, 10), 
(4, 'Vegar', 'Sakseid', 'p123', 'vegar@hotmail.com', 'Student', 6, 7, 8, 9, 10), 
(5, 'Brage', 'Sydskogen', 'p123', 'brage@hotmail.com', 'Student', 6, 7, 8, 9, 10), 
(6, 'Jenny', 'Kristiansen', 'p123', 'jenny@hotmail.com', 'Student', 6, 7, 8, 9, 10), 
(7, 'Tønnes', 'Røren', 'p123', 'tønnes@hotmail.com', 'Student', 6, 7, 8, 9, 10),
(8, 'Ingfrid', 'Hansen', 'p123', 'ingfrid@hotmail.com', 'Student', 6, 7, 8, 9, 10), 
(9, 'Kevin', 'Pedersen', 'p123', 'kevin@hotmail.com', 'Student', 6, 7, 8, 9, 10), 
(10, 'Hallgeir', 'Nilsen', 'p123', 'hallgeir@hotmail.com', 'Foreleser', 6, 7, 8, 9, 10);


create table lecturer (
	lecturer_id varchar(5) primary key,
    user_id int(5) unique,
    foreign key (user_id) references `user` (user_id)
);

insert into lecturer (lecturer_id, user_id)
values ('le001', 1), ('le002', 2);


create table module (
	module_id varchar(5) primary key,
    module_name varchar(20),
    module_goals text,
    module_details text,
    module_task text,
    module_deadline date
);

insert into module (module_id, module_name, module_goals, module_details, module_task, module_deadline)
values ('mo001', 'Module 1', 'Learn function', 'This is module 1', 'Make a function', '2017-06-15'), 
('mo002', 'Module 2','Learn method', 'This is module 2', 'Make a method', '2017-07-15'), 
('mo003', 'Module 3','Learn array', 'This is module 3', 'Make a array', '2017-08-15'), 
('mo004', 'Module 4','Learn testning', 'This is module 4', 'Do some testing and debuging', '2017-09-15'), 
('mo005', 'Module 5','Learn hasmap', 'This is module 5', 'Make a hashmap', '2017-10-15');


create table student (
	student_id varchar(5) primary key,
    user_id int(5) unique,
    foreign key (user_id) references `user` (user_id)
);

insert into student (student_id, user_id)
values ('st001', 3), ('st002', 4), ('st003', 5), ('st004', 6), 
('st005', 7), ('st006', 8), ('st007', 9), ('st008', 10);

create table points (
    user_id int(5) ,
    module_id varchar(5),
    p_points int default null,
    foreign key (user_id) references `user` (user_id),
    foreign key (module_id) references module (module_id),
    constraint p_cpk primary key (user_id,module_id)
);

insert into points (user_id, module_id, p_points)
values (8,'mo001', 5), (8,'mo002', 6), (8,'mo003', 7), (8,'mo004', 8), (8,'mo005', 9),
	   (9,'mo001', 5), (9,'mo002', 6), (9,'mo003', 7), (9,'mo004', 8), (9,'mo005', 9),
       (3,'mo001', 9), (3,'mo002', 8), (3,'mo003', 7), (3,'mo004', 6), (3,'mo005', 5),
       (4,'mo001', 5), (4,'mo002', 6), (4,'mo003', 7), (4,'mo004', 8), (4,'mo005', 9),
       (5,'mo001', 5), (5,'mo002', 6), (5,'mo003', 7), (5,'mo004', 8), (5,'mo005', 9),
       (6,'mo001', 5), (6,'mo002', 6), (6,'mo003', 7), (6,'mo004', 8), (6,'mo005', 9),
       (7,'mo001', 5), (7,'mo002', 6), (7,'mo003', 7), (7,'mo004', 8), (7,'mo005', 9);


create table submit (
    submit_id int auto_increment primary key,
    submit_name varchar(30),
    submit_file longblob,
    submit_date date,
    module_id varchar(5),
    student_id varchar(5),
    foreign key (module_id) references module (module_id),
    foreign key (student_id) references student (student_id)
);

insert into submit (submit_name, submit_file, submit_date, module_id, student_id)
values ('test1', 'fi001', '2017-06-14', 'mo001', 'st001'), 
('test2', 'fi002', '2017-07-14', 'mo001', 'st002'), 
('test3', 'fi003', '2017-08-14', 'mo002', 'st003'),
('test4', 'fi004', '2017-09-14', 'mo002', 'st004'), 
('test5', 'fi005', '2017-10-14', 'mo003', 'st005'),
('test6', 'fi006', '2017-11-14', 'mo003', 'st006'), 
('test7', 'fi007', '2017-12-14', 'mo004', 'st007'),
('test8', 'fi008', '2018-01-14', 'mo003', 'st007'),
('test9', 'fi009', '2018-02-14', 'mo005', 'st008'),
('test10', 'fi010', '2018-03-14', 'mo003', 'st008');


create table feedback (
	feedback_id varchar(5) primary key,
    feedback_content text,
    feedback_date date,
    submit_id int,
    foreign key (submit_id) references submit (submit_id)
);

insert into feedback (feedback_id, feedback_content, feedback_date, submit_id)
values ('fe001','This was good','2017-06-16',1), ('fe002','This was bad','2017-07-16', 2), 
('fe003', 'Need more work', '2017-08-16', 3), ('fe004', 'Excellent', '2017-09-16', 4), 
('fe005', 'Give up', '2017-10-16', 5);


create table blog (
	blog_id varchar(5) primary key,
    blog_title varchar(20),
    blog_content text,
    blog_datePosted date,
    student_id varchar(5),
    foreign key (student_id) references student (student_id)
);

insert into blog (blog_id, blog_title, blog_content, blog_datePosted, student_id)
values ('bl001', 'blog 1', 'Ones upon a time', '2017-06-17', 'st001'), ('bl002', 'blog 2', 'There was a boy/girl', '2017-07-17', 'st002'), 
('bl003', 'blog 3', 'who was destined', '2017-08-17', 'st003'), ('bl004', 'blog 4', 'to fail the course', '2017-09-17', 'st004'),
('bl005', 'blog 5', 'then they had a little cry', '2017-10-17', 'st005'), 
('bl006', 'blog 6', ' but then they relaized', '2017-11-17', 'st006'),
('st007', 'blog 7', 'they had to get their shit togheter', '2017-12-17', 'st007'), 
('st008', 'blog 8', 'and do it again and pass', '2018-01-17', 'st008');


create table notification (
	notif_id varchar(20) primary key,
    notif_text text
);

insert into notification (notif_id,notif_text)
values ('no-submit','Hva nå enn vi skriver her kommer til å vise som en varsel i programmet'),
	   ('no-feedback','Denne varselen er for feedback'),
       ('no-module','Denne er for modul');


create table notifConnections (
	notifCon_id varchar(5) primary key,
    module_id varchar(5),
    submit_id varchar(5),
    feedback_id varchar(5),
    notif_id varchar(20),
    foreign key (module_id) references module(module_id),
    foreign key (submit_id) references submit(submit_id),
    foreign key (feedback_id) references feedback(feedback_id),
    foreign key (notif_id) references notification(notif_id)
);

CREATE TABLE m1 (
m1_id int,
user_id int(5),
m1_points varchar(5) null,
foreign key (user_id) references `user` (user_id),
constraint m1_cpk primary key (m1_id, user_id)
);
insert into m1 (m1_id, user_id, m1_points)
values(1, 1, '8'), (1, 2, '9'), (1, 3, '9'), (1, 4, '10'), (1, 5, '10'), (1, 6, '6'), (1, 7, '2');

CREATE TABLE m2 (
m2_id int,
user_id int(5),
m2_points varchar(5) null,
foreign key (user_id) references `user` (user_id),
constraint m2_cpk primary key (m2_id, user_id)
);
insert into m2 (m2_id, user_id, m2_points)
values(2, 1, '6'), (2, 2, '7'), (2, 3, '7'), (2, 4, '2'), (2, 5, '3'), (2, 6, '9'), (2, 7, '10');

CREATE TABLE m3 (
m3_id int,
user_id int(5),
m3_points varchar(5) null,
foreign key (user_id) references `user` (user_id),
constraint m3_cpk primary key (m3_id, user_id)
);
insert into m3 (m3_id, user_id, m3_points)
values(3, 1, '5'), (3, 2, '9'), (3, 3, '6'), (3, 4, '7'), (3, 5, '8'), (3, 6, '6'), (3, 7, '8');

CREATE TABLE m4 (
m4_id int,
user_id int(5),
m4_points varchar(5) null,
foreign key (user_id) references `user` (user_id),
constraint m4_cpk primary key (m4_id, user_id)
);
insert into m4 (m4_id, user_id, m4_points)
values(4, 1, '9'), (4, 2, '8'), (4, 3, '10'), (4, 4, '9'), (4, 5, '10'), (4, 6, '9'), (4, 7, '10');

CREATE TABLE m5 (
m5_id int,
user_id int(5),
m5_points varchar(5) null,
foreign key (user_id) references `user` (user_id),
constraint m5_cpk primary key (m5_id, user_id)
);
insert into m5 (m5_id, user_id, m5_points)
values(5, 1, '6'), (5, 2, '7'), (5, 3, '5'), (5, 4, '6'), (5, 5, '7'), (5, 6, '6'), (5, 7, '5');

/*
----------------------------------------------------------------------------------------------------------------------------------
Opprett database med verdi kjør til hit.
Query nedenfor her
*/


select user.user_fname, m3.m3_points
from user, m3
where user.user_id  = m3.user_id;

SELECT user_fname, user_lname, user_email, m1_points, m2_points, m3_points, m4_points, m5_points
FROM user, m1, m2, m3, m4, m5
where user.user_id = m1.user_id 
and user.user_id = m2.user_id
and user.user_id = m3.user_id
and user.user_id = m4.user_id
and user.user_id = m5.user_id;

SELECT user_fname, user_lname, user_email, user_m1, user_m2, user_m3, user_m4, user_m5 FROM user;

insert into `user` (user_fname, user_lname, user_password, user_email)
values 
('Bob', 'Bobbsen', 'p123', 'bob@hotmail.com')