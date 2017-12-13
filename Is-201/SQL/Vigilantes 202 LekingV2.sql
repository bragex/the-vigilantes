
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

insert into `user` (user_fname, user_lname, user_password, user_email, user_status, user_m1, user_m2, user_m3, user_m4, user_m5)
values 
('Morten', 'Mygland', 'p123', 'morten@hotmail.com', 'Student', 10, 10, 10, 10, 10), 
('Benjamin', 'Sandøy', 'p123', 'benjamin@hotmail.com', 'Student', 5, 5, 5, 5, 5), 
('Kim', 'Moe', 'p123', 'kim@hotmail.com', 'Student', 10, 9, 8, 9, 10), 
('Vegar', 'Sakseid', 'p123', 'vegar@hotmail.com', 'Student', 10, 9, 8, 9, 8), 
('Brage', 'Sydskogen', 'p123', 'brage@hotmail.com', 'Student', 1, 5, 7, 0, 10), 
('Jenny', 'Kristiansen', 'p123', 'jenny@hotmail.com', 'Student', 8, 8, 8, 8, 8), 
('Tønnes', 'Røren', 'p123', 'tønnes@hotmail.com', 'Student', 10, 10, 10, 9, 10),
('Ingfrid', 'Hansen', 'p123', 'ingfrid@hotmail.com', 'Student', 0, 0, 0, 0, 0), 
('Kevin', 'Pedersen', 'p123', 'kevin@hotmail.com', 'Student', 7, 7, 7, 7, 7), 
('Hallgeir', 'Nilsen', 'p123', 'hallgeir@hotmail.com', 'Foreleser', 6, 7, 8, 9, 10);


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
	feedback_id int auto_increment primary key,
    feedback_content text,
    feedback_points int,
    feedback_date timestamp,
    submit_id int unique,
    foreign key (submit_id) references submit (submit_id)
);

insert into feedback (feedback_content, feedback_date, feedback_points, submit_id)
values ('This was good', current_timestamp,8,1), ('This was bad', current_timestamp,2, 2), 
('Need more work', current_timestamp,5,3), ('Excellent', current_timestamp,10,4), 
('Give up', current_timestamp,1,5);


create table blog (
	blog_id varchar(5) primary key,
    blog_title varchar(20),
    blog_content text,
    blog_datePosted date,
    student_id varchar(5),
    foreign key (student_id) references student (student_id)
);

insert into blog (blog_id, blog_title, blog_content, blog_datePosted, student_id)
values ('bl001', 'blog 1', 'Ones upon a time', '2017-06-17', 'st001'), 
('bl002', 'blog 2', 'There was a boy/girl', '2017-07-17', 'st002'), 
('bl003', 'blog 3', 'who was destined', '2017-08-17', 'st003'), 
('bl004', 'blog 4', 'to fail the course', '2017-09-17', 'st004'),
('bl005', 'blog 5', 'then they had a little cry', '2017-10-17', 'st005'), 
('bl006', 'blog 6', ' but then they relaized', '2017-11-17', 'st006'),
('bl007', 'blog 7', 'they had to get their shit togheter', '2017-12-17', 'st007'), 
('bl008', 'blog 8', 'and do it again and pass', '2018-01-17', 'st008');
