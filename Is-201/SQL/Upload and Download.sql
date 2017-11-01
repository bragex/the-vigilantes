/*
	Database for å laste opp fil. 
*/
drop database FileDB;
create database FileDB;
 
use FileDB;
 
CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `file_name` varchar(128) DEFAULT NULL,
  `file` longblob,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Select * from `contacts` where `contact_id` ;*/
Select * from `contacts`;


/*
File download database. Laste ned fil som elev/forelleser laster opp. 
*/

/*drop database FileDW;
create database FileDW;
 
use FileDW;

Create table fileDW (
	fileDW_id int (20) primary key null auto_increment,
    fileDW_name varchar (150) default null,
    fileDW_data longblob
) Engine=InnoDB Default charset=latin1;

Select * from fileDW;*/