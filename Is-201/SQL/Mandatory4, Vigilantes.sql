drop database man4;
create database man4;
use man4;

/* Creates a table for users. */
create table `user` (
	user_id varchar(5) primary key,
    user_name varchar(40),
    user_email varchar(30),
    user_number int(12)
);

insert into `user` (user_id, user_name, user_email, user_number)
values 	('us001', 'Morten', 'Morten@hotmail.com', 959595 ), ('us002', 'Benjamin', 'Benjamin@gmail.com', 969696), 
		('us003', 'Kim', 'Kim@hotmail.com', 979797 ), ('us004', 'Vegard', 'Vegard@gmail.com', 989898 ), 
		('us005', 'Brage', 'Brage@hotmail.com', 999999), ('us006', 'Jenny', 'Jenny@hotmail.com', 949494), 
		('us007', 'Tønnes', 'Tønnes@gmail.com', 939393),('us008', 'Ingfrid', 'Ingfrid@hotmail.com', 929292), 
		('us009', 'Kevin', 'Kevin@hotmail.com', 919191), ('us010', 'Halgeir', 'Halgeir@gmail.com', 909090 );

/* Creates a table for lecturers. The table helps identifying who's a lecturer. */
create table lecturer (
	lecturer_id varchar(5) primary key,
    user_id varchar(5) unique,
    foreign key (user_id) references `user` (user_id)
);

insert into lecturer (lecturer_id, user_id)
values ('le001', 'us001'), ('le002', 'us002');

/* Creates a table for modules. We store the information about the assignments here. */
create table module (
	module_id varchar(5) primary key,
    module_name varchar(20),
    module_goals text,
    module_details text,
    module_task text,
    module_deadline date,
    module_numquestions int(2)
);

/* Tenk på normalform på ressurser */

insert into module (module_id, module_name, module_goals, module_details, 
					module_task, module_deadline, module_numquestions)
values 	('mo001', 'Module 1', 'Learn function', 'This is module 1', 'Make a function', '2017-06-15', 8), 
		('mo002', 'Module 2', 'Learn method', 'This is module 2', 'Make a method', '2017-07-15', 5), 
		('mo003', 'Module 3', 'Learn array', 'This is module 3', 'Make a array', '2017-08-15', 9), 
		('mo004', 'Module 4', 'Learn testing', 'This is module 4', 'Do some testing and debuging', '2017-09-15', 4), 
		('mo005', 'Module 5', 'Learn hasmap', 'This is module 5', 'Make a hashmap', '2017-10-15', 6),
        ('mo006', 'Module 6', 'Learn stuff', 'This is module 6', 'Spesifikk oppgave', '2017-10-15', 3);

/* Creates a table for resources for modules */
create table moduleResources(
	mr_id int auto_increment primary key,
    mr_resources varchar(50),
    module_id varchar(5),
    foreign key (module_id) references module(module_id)
);

insert into moduleResources (mr_resources, module_id)
values ('LINKLINK','mo001'), ('LINKLINK','mo001'), ('LINKLINK','mo001'), ('LINKLINK','mo002'),
	   ('LINKLINK','mo002'), ('LINKLINK','mo002'), ('LINKLINK','mo002'), ('LINKLINK','mo003'),
       ('LINKLINK','mo003'), ('LINKLINK','mo003'), ('LINKLINK','mo003'), ('LINKLINK','mo003'),
       ('LINKLINK','mo004'), ('LINKLINK','mo004'), ('LINKLINK','mo004'), ('LINKLINK','mo004'),
       ('LINKLINK','mo004'), ('LINKLINK','mo005'), ('LINKLINK','mo005'), ('LINKLINK','mo005'),
       ('LINKLINK','mo005'), ('LINKLINK','mo006'), ('LINKLINK','mo006'), ('LINKLINK','mo006');

/* Creates a table for students. It exists to identify the students. */
create table student (
	student_id varchar(5) primary key,
    user_id varchar(5) unique,
    foreign key (user_id) references `user` (user_id)
);

insert into student (student_id, user_id)
values ('st001', 'us003'), ('st002', 'us004'), ('st003', 'us005'), ('st004', 'us006'), 
	   ('st005', 'us007'), ('st006', 'us008'), ('st007', 'us009'), ('st008', 'us010');

/* Creates a table for assigments. This is where the students' assigments are stored. */
create table submit (
	submit_id varchar(5) primary key,
    submit_file varchar(10),
    submit_date date,
    module_id varchar(5),
    student_id varchar(5),
    foreign key (module_id) references module (module_id),
    foreign key (student_id) references student (student_id)
);

/* Submit_file is for the file name. We used the names for simplicity. */
insert into submit (submit_id, submit_file, submit_date, module_id, student_id)
values 	('su001', 'fi001', '2017-06-14', 'mo001', 'st001'), 
		('su002', 'fi002', '2017-07-14', 'mo001', 'st002'), 
		('su003', 'fi003', '2017-08-14', 'mo002', 'st001'),
		('su004', 'fi004', '2017-09-14', 'mo002', 'st004'), 
		('su005', 'fi005', '2017-10-14', 'mo003', 'st005'),
		('su006', 'fi006', '2017-11-14', 'mo003', 'st006'), 
		('su007', 'fi007', '2017-12-14', 'mo004', 'st007'),
		('su008', 'fi008', '2018-01-14', 'mo003', 'st007'),
		('su009', 'fi009', '2018-02-14', 'mo005', 'st008'),
		('su010', 'fi010', '2018-03-14', 'mo003', 'st008');

/* Creates a table that stores feedback on assignments done by students. */
create table feedback (
	feedback_id varchar(5) primary key,
    feedback_content text,
    feedback_date date,
    feedback_points int(2),
    submit_id varchar(5),
    foreign key (submit_id) references submit (submit_id)
);

insert into feedback (feedback_id, feedback_content, feedback_date, feedback_points, submit_id)
values 	('fe001','This was good','2017-06-16', 1,'su001'), ('fe002','This was bad','2017-07-16', 2,'su002'), 
		('fe003', 'Need more work', '2017-08-16', 3, 'su003'), ('fe004', 'Excellent', '2017-09-16', 4, 'su004'), 
		('fe005', 'Give up', '2017-10-16', 5, 'su005');

/* Creates a table for the blog. */
create table blog (
	blog_postID varchar(5) primary key,
    blog_title varchar(20),
    blog_content text,
    blog_datePosted date,
    student_id varchar(5),
    foreign key (student_id) references student (student_id)
);

insert into blog (blog_postID, blog_title, blog_content, blog_datePosted, student_id)
values 	('bl001', 'blog 1', 'Ones upon a time', '2017-06-17', 'st001'), 
		('bl002', 'blog 2', 'There was a boy/girl', '2017-07-17', 'st002'), 
		('bl003', 'blog 3', 'who was destined', '2017-08-17', 'st003'), 
        ('bl004', 'blog 4', 'to fail the course', '2017-09-17', 'st004'),
		('bl005', 'blog 5', 'then they had a little cry', '2017-10-17', 'st005'), 
		('bl006', 'blog 6', ' but then they relaized', '2017-11-17', 'st006'),
		('st007', 'blog 7', 'they had to get their shit together', '2017-12-17', 'st007'), 
		('st008', 'blog 8', 'and do it again and pass', '2018-01-17', 'st008');

/* Creates a table for standardized notifications. */
create table notification (
	notif_id varchar(20) primary key,
    notif_text text
);

insert into notification (notif_id,notif_text)
values ('no-submit','Hva nå enn vi skriver her kommer til å vise som en varsel i programmet'),
	   ('no-feedback','Denne varselen er for feedback'),
       ('no-module','Denne er for modul');

/* Creates a table that connects certain events to a notification. */
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

insert into notifConnections (notifCon_id, module_id, submit_id, feedback_id, notif_id)
values ('nc001', null, 'su001', null, 'no-submit'),
	   ('nc002', 'mo001', null, null, 'no-module'),
	   ('nc003', null, null, 'fe001', 'no-feedback');

/* MANDATORY 4 */
create table `comment` (
	comment_id varchar(5) primary key,
    comment_content text,
    comment_dateposted date,
    user_id varchar(5),
    foreign key (user_id) references `user`(user_id)
);

insert into `comment` (comment_id, comment_content, comment_dateposted, user_id)
values ('co001', 'Oioi! Dette var kos', '2017-10-25', 'us005'), 
	   ('co002', 'Godt å høre!', '2017-10-25', 'us001'),
	   ('co003', 'Hjelp!', '2017-10-25', 'us006'),
       ('co004', 'HJEEEEEELP!!', '2017-10-25', 'us006'),
       ('co005', 'Ser greit ut', '2017-10-26', 'us003'),
       ('co006', 'Bræææ', '2017-10-26', 'us002'),
       ('co007', 'Gjør det, gjør det gjennomfør det!', '2017-10-26', 'us004'),
       ('co008', 'Tihi', '2017-10-26', 'us009'),
       ('co009', 'Gulrotkake e best', '2017-10-26', 'us002'),
       ('co010', 'Hylvedde', '2017-10-26', 'us007'),
       ('co011', 'SNEISEN', '2017-10-26', 'us002'),
       ('co012', 'TestTest', '2017-10-26', 'us006');
       
create table commentModule (
	comment_id varchar(5),
    module_id varchar(5),
    foreign key (comment_id) references `comment`(comment_id),
    foreign key (module_id) references module(module_id),
    primary key (comment_id, module_id)
);

insert into commentModule (comment_id, module_id)
values ('co005','mo001'),('co006','mo001'),('co007','mo001');

create table commentSubmit (
	comment_id varchar(5),
    submit_id varchar(5),
    foreign key (comment_id) references `comment`(comment_id),
    foreign key (submit_id) references submit(submit_id),
    primary key (comment_id, submit_id)
);

insert into commentSubmit (comment_id, submit_id)
values ('co001', 'su001'), ('co002', 'su001'), ('co003', 'su002'), ('co004', 'su001'),
	   ('co008', 'su003'), ('co009', 'su004'), ('co010', 'su003'), ('co011', 'su005'),
       ('co004', 'su005');


/* 1)Define a “view” that only gives read access to a user’s modules and that shows the
number of hand-ins each user has. */
CREATE VIEW opg1 AS
    SELECT 
        `user`.user_name, submit.module_id, total_deliveries
    FROM
        (SELECT 
            user_name, COUNT(submit.submit_id) AS total_deliveries
        FROM
            `user`, student, submit
        WHERE
            `user`.user_id = student.user_id
                AND student.student_id = submit.student_id
        GROUP BY `user`.user_name) AS td_table,
        `user`,
        student,
        submit
    WHERE
        `user`.user_id = student.user_id
            AND student.student_id = submit.student_id
            AND `user`.user_name = td_table.user_name
    GROUP BY submit.submit_id
    ORDER BY `user`.user_name;

/* 2)Write a query that lists all modules which does not have hand-ins. */
select module_name
from module
where module_id not in(select module_id from submit);

/* 3)Make an overview of all student users’ tests and results, where you write the number
of questions for each test. */
select user_name, module_name, feedback_points, module_numquestions
from `user`, student, submit, feedback, module
where `user`.user_id = student.user_id
and student.student_id = submit.student_id
and submit.submit_id = feedback.submit_id
and submit.module_id = module.module_id;

/* 4)List all users who have “Gmail” as email address. */
select * from `user`
where user_email like '%@gmail%';

/* 5)Show an overview of which modules have most comments on the hand-ins, sort
according to descending number of comments. */
SELECT 
    module_name, COUNT(`comment`.comment_id) AS comment_amount
FROM
    module,
    submit,
    commentSubmit,
    `comment`
WHERE
    module.module_id = submit.module_id
        AND submit.submit_id = commentSubmit.submit_id
        AND commentSubmit.comment_id = `comment`.comment_id
GROUP BY module.module_id
ORDER BY comment_amount DESC;

/* 6)Elaborate the query in question 5 to only include modules that have 3 comments or
more. */
SELECT 
    module_name, COUNT(`comment`.comment_id) AS comment_amount
FROM
    module,
    submit,
    commentSubmit,
    `comment`
WHERE
    module.module_id = submit.module_id
        AND submit.submit_id = commentSubmit.submit_id
        AND commentSubmit.comment_id = `comment`.comment_id
GROUP BY module.module_id
HAVING COUNT(`comment`.comment_id) >= 3
ORDER BY comment_amount DESC;

/* 7)Write a query to show all the modules that have “Program” in the name, with number
of questions. */
select module_name, module_numquestions
from module
where module_name like '%Program%';

/* 8)What is the average number of resources in the modules taken by user X? (Select a
particular user). */
SELECT 
    `user`.user_name, counted / divise as average_resources
FROM
    (SELECT 
        `user`.user_name,
            COUNT(mr_resources) AS counted,
            oioi.divise
    FROM
        (SELECT 
        COUNT(submit.submit_id) AS divise, student.student_id
    FROM
        `user`, student, submit
    WHERE
        `user`.user_id = student.user_id
            AND student.student_id = submit.student_id
    GROUP BY student.student_id) AS oioi, `user`, student, submit, module, moduleResources
    WHERE
        `user`.user_id = student.user_id
            AND moduleResources.module_id = module.module_id
            AND student.student_id = submit.student_id
            AND submit.module_id = module.module_id
            AND student.student_id = oioi.student_id
    GROUP BY `user`.user_name) AS counts,
    `user`,
    student,
    submit,
    module,
    moduleResources
WHERE
    `user`.user_name = counts.user_name
    AND `user`.user_id = student.user_id
            AND moduleResources.module_id = module.module_id
            AND student.student_id = submit.student_id
            AND submit.module_id = module.module_id
            AND student.student_id = 'st004'
GROUP BY `user`.user_name;

/* 9)What is “outer join” used for? Give an example. 

Outer joins return all rows matching your statements, depending on what type of join you do.
A left join returns all rows matching your statements in the left table. It also returns
those rows in the right table. However, a left join also shows null fields in the right table 
as long as their is a row returned from the left table. Right join does the opposite.

A full outer join find all rows in both tables, so you could have null values in both tables. 

The query below selects all the rows in the left table (submit).
It also selects all the matching and non-matching rows in the right table (feedback).
It selects all the hand-ins and the feedback connected to it, which may be null.

*/
select user_name, submit.submit_id, feedback.feedback_id, feedback_content, feedback_points
from submit
left outer join feedback on submit.submit_id = feedback.submit_id
join student on submit.student_id = student.student_id
join `user` on student.user_id = `user`.user_id;






















