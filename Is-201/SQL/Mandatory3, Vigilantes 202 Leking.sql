/*

Ikke tenk på om ting ser stygt ut når du skriver det inn i databasen.
Hvor skal du ellers lagre dataen? En server? Den serveren er jo databasen.
Hvor skal den statiske dataen være? I databasen. Ta varsel som eksempel:
Hvor skal teksten som varsler gir være lagret? Skal det være en person som sitter
å skriver varslene når man trenger dem? Når du skal gi en melding til studenter, 
hvordan skal programmet vite hva teksten er? En bruker skriver inn teksten som blir
lagret i en database. Når varselen dukker opp i en annens bruker program vil programmet
finne teksten i databasen og referere den.

*/

drop database SLIT;

create database SLIT;
use SLIT;

Create table `user` (
	user_id varchar (5) primary key,
    user_username varchar (40),
    user_fname varchar(40),
    user_lname varchar(40),
    user_email varchar (30),
    user_number int (20)
);

insert into `user` (user_id, user_username, user_fname, user_lname, user_email, user_number)
values ('us001', 'Morten', 'Morten', 'Mygland', 'morten@hotmail.com', 959595 ), ('us002', 'Benjamin', 'Benjamin', 'Sandøy', 'benjamin@hotmail.com', 969696), 
('us003', 'Kim', 'Kim', 'Moe', 'kim@hotmail.com', 979797 ), ('us004', 'Vegar', 'Vegar', 'Sakseid', 'vegar@hotmail.com', 989898 ), 
('us005', 'Brage', 'Brage', 'Sydskogen', 'brage@hotmail.com', 999999), ('us006', 'Jenny', 'Jenny', 'Kristiansen', 'jenny@hotmail.com', 949494), 
('us007', 'Tønnes', 'Tønnes', 'Røren', 'tønnes@hotmail.com', 939393),('us008', 'Ingfrid', 'Ingfrid', 'Hansen', 'ingfrid@hotmail.com', 929292), 
('us009', 'Kevin', 'Kevin', 'Pedersen', 'kevin@hotmail.com', 919191), ('us010', 'Hallgeir', 'Hallgeir', 'Nilsen', 'hallgeir@hotmail.com', 909090 );


create table lecturer (
	lecturer_id varchar(5) primary key,
    user_id varchar(5) unique,
    foreign key (user_id) references `user` (user_id)
);

insert into lecturer (lecturer_id, user_id)
values ('le001', 'us001'), ('le002', 'us002');


Create table module (
	module_id varchar (5) primary key,
    module_name varchar (40),
    module_points int default 0,
    module_goals varchar (200),
    module_details varchar (50),
    module_task varchar (50),
    module_deadline date
    
);

insert into module (module_id, module_name, module_points, module_goals, module_details, module_task, module_deadline)
values ('mo001', 'Module 1', 0, 'Learn function', 'This is module 1', 'Make a function', '2017-06-15'), 
('mo002', 'Module 2',0,'Learn method', 'This is module 2', 'Make a method', '2017-07-15'), 
('mo003', 'Module 3',0,'Learn array', 'This is module 3', 'Make a array', '2017-08-15'), 
('mo004', 'Module 4',0,'Learn testning', 'This is module 4', 'Do some testing and debuging', '2017-09-15'), 
('mo005', 'Module 5',0,'Learn hasmap', 'This is module 5', 'Make a hashmap', '2017-10-15');


/*
create table student (
	student_id varchar(5) primary key,
    student_points int(3),
    user_id varchar(5) unique,
    foreign key (user_id) references `user` (user_id)
);

insert into student (student_id, student_points, user_id)
values ('st001', 0, 'us003'), ('st002', 0, 'us004'), ('st003', 0, 'us005'), ('st004', 0, 'us006'), 
('st005', 0, 'us007'), ('st006', 0, 'us008'), ('st007', 0, 'us009'), ('st008', 0, 'us010');
*/
create table points (
    user_id varchar(5) ,
    module_id varchar(5),
    p_points int default 0,
    foreign key (user_id) references `user` (user_id),
    foreign key (module_id) references module (module_id)
);

insert into points (user_id, module_id, p_points)
values ('us001','mo001', 5), ('us001','mo002', 6), ('us001','mo003', 7), ('us001','mo004', 8), ('us001','mo005', 9),
	   ('us002','mo001', 5), ('us002','mo002', 6), ('us002','mo003', 7), ('us002','mo004', 8), ('us002','mo005', 9),
       ('us003','mo001', 9), ('us003','mo002', 8), ('us003','mo003', 7), ('us003','mo004', 6), ('us003','mo005', 5),
       ('us004','mo001', 5), ('us004','mo002', 6), ('us004','mo003', 7), ('us004','mo004', 8), ('us004','mo005', 9),
       ('us005','mo001', 5), ('us005','mo002', 6), ('us005','mo003', 7), ('us005','mo004', 8), ('us005','mo005', 9),
       ('us006','mo001', 5), ('us006','mo002', 6), ('us006','mo003', 7), ('us006','mo004', 8), ('us006','mo005', 9),
       ('us007','mo001', 5), ('us007','mo002', 6), ('us007','mo003', 7), ('us007','mo004', 8), ('us007','mo005', 9);

create table submit (
	submit_id varchar(5) primary key,
    submit_file varchar(10),
    submit_date date,
    module_id varchar(5),
    student_id varchar(5),
    foreign key (module_id) references module (module_id),
    foreign key (student_id) references student (student_id)
);

/*Submit_file is for the file name. We used the names for simplicity*/
insert into submit (submit_id, submit_file, submit_date, module_id, student_id)
values ('su001', 'fi001', '2017-06-14', 'mo001', 'st001'), 
('su002', 'fi002', '2017-07-14', 'mo001', 'st002'), 
('su003', 'fi003', '2017-08-14', 'mo002', 'st003'),
('su004', 'fi004', '2017-09-14', 'mo002', 'st004'), 
('su005', 'fi005', '2017-10-14', 'mo003', 'st005'),
('su006', 'fi006', '2017-11-14', 'mo003', 'st006'), 
('su007', 'fi007', '2017-12-14', 'mo004', 'st007'),
('su008', 'fi008', '2018-01-14', 'mo004', 'st007'),
('su009', 'fi009', '2018-02-14', 'mo005', 'st008'),
('su010', 'fi010', '2018-03-14', 'mo005', 'st008');


create table feedback (
	feedback_id varchar(5) primary key,
    feedback_content text,
    feedback_date date,
    submit_id varchar(5),
    foreign key (submit_id) references submit (submit_id)
);

insert into feedback (feedback_id, feedback_content, feedback_date, submit_id)
values ('fe001','This was good','2017-06-16','su001'), ('fe002','This was bad','2017-07-16','su002'), 
('fe003', 'Need more work', '2017-08-16', 'su003'), ('fe004', 'Excellent', '2017-09-16', 'su004'), 
('fe005', 'Give up', '2017-10-16', 'su005');


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

/*

Another way of finding notifications is to have one ID in the table, and
have fields with the notification text.

*/


SELECT user_fname, user_lname, user_email, p_points FROM user, points
where user.user_id = points.user_id