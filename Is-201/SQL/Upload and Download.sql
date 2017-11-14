/*
	Database for å laste opp og ned fil. 
*/
drop database FileDB;
create database FileDB;
 
use FileDB;
 
CREATE TABLE `contacts` (
  contact_id int(11) NOT NULL AUTO_INCREMENT,
  first_name varchar(45) DEFAULT NULL,
  last_name varchar(45) DEFAULT NULL,
  file_name varchar(128) DEFAULT NULL,
  `file` longblob,
  PRIMARY KEY (contact_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Select * from `contacts` where `contact_id` ;*/
Select * from `contacts`;
