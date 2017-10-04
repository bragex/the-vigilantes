Create database SLIT;

Use SLIT;


Create table `user` (
	user_id varchar (5) primary key,
    user_name varchar (40),
    user_email varchar (30),
    user_number int (20)

);

insert into `user` (user_id, user_name, user_email, user_number)
values ('us001', 'Morten', 'Morten@hotmail.com', 959595 ), ('us002', 'Benjamin', 'Benjamin@hotmail.com', 969696), 
('us003', 'Kim', 'Kim@hotmail.com', 979797 ), ('us004', 'Vegard', 'Vegard@hotmail.com', 989898 ), 
('us005', 'Brage', 'Brage@hotmail.com', 999999), ('us006', 'Jenny', 'Jenny@hotmail.com', 949494), 
('us007', 'Tønnes', 'Tønnes@hotmail.com', 939393),('us008', 'Ingfrid', 'Ingfrid@hotmail.com', 929292), 
('us009', 'Kevin', 'Kevin@hotmail.com', 919191), ('us010', 'Halgeir', 'Halgeir@hotmail.com', 909090 );

Create table learningplan (
	lp_id varchar (5) primary key,
    lp_goals varchar (200)
    
);

insert into learningplan (lp_id, lp_goals)
values ('lp001', 'Do the tasks nicely');

Create table module (
	module_id varchar (5) primary key,
    module_name varchar (40),
    module_detalis varchar (50),
    module_task varchar (50),
    module_deadline date,
    lp_id varchar (5),
    foreign key (lp_id) references learningplan (lp_id)
);

insert into module (module_id, module_name, module_detalis, module_task, module_deadline, lp_id)
values ('mo001', 'Module 1', 'This is module 1', 'Make a function', '2017-06-15', 'lp001'), 
('mo002', 'Module 2', 'This is module 2', 'Make a method', '2017-07-15', 'lp001'), 
('mo003', 'Module 3', 'This is module 3', 'Make a array', '2017-08-15', 'lp001'), 
('mo004', 'Module 4', 'This is module 4', 'Do some testing and debuging', '2017-09-15', 'lp001'), 
('mo005', 'Module 5', 'This is module 5', 'Make a hashmap', '2017-10-15', 'lp001');




Create table lecturer (
	lecturer_id varchar (5) primary key,
    lp_id varchar (5),
    user_id varchar (5),
    foreign key (lp_id) references learningplan (lp_id),
    foreign key (user_id) references `user` (user_id)
);

Create table feedback (
	feedback_id varchar (5) primary key,
    feedback_content varchar (50),
    feedback_date date
);

Create table `status` (
	status_id varchar (5) primary key,
    status_status boolean
);

Create table submit (
	submit_id varchar (5) primary key,
    submit_file varchar (10),
    submit_date date,
    status_id varchar (5),
    feedback_id varchar (5),
    module_id varchar (5),
    foreign key (status_id) references `status` (status_id),
    foreign key (feedback_id) references feedback (feedback_id),
    foreign key (module_id) references module (module_id)
);

Create table progress (
	progress_id varchar (5) primary key,
    progress_points int (3)
);

Create table blog (
	blog_id varchar (5) primary key,
    blog_title varchar (20),
    blog_content varchar (30),
    blog_datePosted date  
);


Create table student (
	student_id varchar (5) primary key,
    progress_id varchar (5),
    blog_id varchar (5),
    submit_id varchar (5),
    user_id varchar (5),
    foreign key (progress_id) references progress (progress_id),
    foreign key (blog_id) references blog (blog_id),
    foreign key (submit_id) references submit (submit_id),
    foreign key (user_id) references `user` (user_id)
);