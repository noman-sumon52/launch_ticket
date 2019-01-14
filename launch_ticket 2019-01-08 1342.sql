-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema launch_ticket
--

CREATE DATABASE IF NOT EXISTS launch_ticket;
USE launch_ticket;

--
-- Definition of table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `catid` int(11) NOT NULL auto_increment,
  `catname` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`catid`,`catname`,`description`) VALUES 
 (6,'AC','Lauxarious Cabin'),
 (7,'VIP','Special Cabin'),
 (8,'Double','2 Persone Are Allowed'),
 (9,'Single Table','1 Person Are Allowed'),
 (10,'General','Every one persone');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Definition of table `endtime`
--

DROP TABLE IF EXISTS `endtime`;
CREATE TABLE `endtime` (
  `endtimeid` int(11) NOT NULL auto_increment,
  `etime` varchar(45) default NULL,
  PRIMARY KEY  (`endtimeid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `endtime`
--

/*!40000 ALTER TABLE `endtime` DISABLE KEYS */;
INSERT INTO `endtime` (`endtimeid`,`etime`) VALUES 
 (1,'6: 00 PM'),
 (2,'6: 30 PM'),
 (3,'7: 00 PM'),
 (4,'7: 30 PM'),
 (5,'8: 00 PM'),
 (6,'8: 30 PM'),
 (7,'9: 00 PM'),
 (8,'9:30 PM');
/*!40000 ALTER TABLE `endtime` ENABLE KEYS */;


--
-- Definition of table `farechart`
--

DROP TABLE IF EXISTS `farechart`;
CREATE TABLE `farechart` (
  `fareid` int(10) unsigned NOT NULL auto_increment,
  `fromstationid` varchar(45) default NULL,
  `tostationid` varchar(45) default NULL,
  `comname` varchar(45) default NULL,
  `fareamt` double default NULL,
  `passtypeid` varchar(45) default NULL,
  PRIMARY KEY  (`fareid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farechart`
--

/*!40000 ALTER TABLE `farechart` DISABLE KEYS */;
/*!40000 ALTER TABLE `farechart` ENABLE KEYS */;


--
-- Definition of table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `feedid` int(11) NOT NULL auto_increment,
  `passid` int(11) default NULL,
  `subject` varchar(45) default NULL,
  `detailsfeed` varchar(450) default NULL,
  `location` varchar(45) default NULL,
  `feddate` date default NULL,
  PRIMARY KEY  (`feedid`)
) ENGINE=InnoDB AUTO_INCREMENT=1233 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`feedid`,`passid`,`subject`,`detailsfeed`,`location`,`feddate`) VALUES 
 (1,1,'Eid Celebration','Today is Eid Day. Huray, We Are happy for this day.','Dhaka','2018-12-18'),
 (2,2,'Vote','asdf','asdf','2018-12-19'),
 (3,3,'Vote','asdf','asdf','2018-12-19'),
 (44,5,'234','234','234','2018-12-19'),
 (1231,3,'Vote','asdf','asdf','2018-12-19'),
 (1232,5,'Vote','asdf','123','2018-12-19');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Definition of table `fromstation`
--

DROP TABLE IF EXISTS `fromstation`;
CREATE TABLE `fromstation` (
  `fromstationid` int(11) NOT NULL auto_increment,
  `fromstname` varchar(45) default NULL,
  PRIMARY KEY  (`fromstationid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fromstation`
--

/*!40000 ALTER TABLE `fromstation` DISABLE KEYS */;
INSERT INTO `fromstation` (`fromstationid`,`fromstname`) VALUES 
 (1,'Dhaka'),
 (2,'Fatullah'),
 (3,'Char Gourabde'),
 (4,'Boga'),
 (5,'Patuakhali'),
 (6,'Barishal'),
 (7,'Bhola'),
 (8,'Mohon'),
 (9,'Jhalokhati'),
 (10,'Hatia'),
 (11,'Monpura');
/*!40000 ALTER TABLE `fromstation` ENABLE KEYS */;


--
-- Definition of table `launchinfo`
--

DROP TABLE IF EXISTS `launchinfo`;
CREATE TABLE `launchinfo` (
  `launchid` int(10) NOT NULL auto_increment,
  `fromstationid` int(11) default NULL,
  `tostationid` int(11) default NULL,
  `starttimeid` int(11) default NULL,
  `endtimeid` int(11) default NULL,
  `launchnumber` varchar(45) default NULL,
  `launchname` varchar(45) default NULL,
  `catid` varchar(45) default NULL,
  `dayoff` varchar(45) default NULL,
  PRIMARY KEY  USING BTREE (`launchid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `launchinfo`
--

/*!40000 ALTER TABLE `launchinfo` DISABLE KEYS */;
INSERT INTO `launchinfo` (`launchid`,`fromstationid`,`tostationid`,`starttimeid`,`endtimeid`,`launchnumber`,`launchname`,`catid`,`dayoff`) VALUES 
 (1,1,2,1,8,'101','MV Tipu','6','2018-12-31'),
 (2,1,3,1,5,'102','MV Farhan','7','2018-12-31'),
 (3,1,1,1,1,'103','MV Parabat 11','6','2018-12-31'),
 (4,2,2,1,1,'104','MV Kalam Khan','6','Friday'),
 (5,1,2,2,1,'105','MV Coco','6','Saturday');
/*!40000 ALTER TABLE `launchinfo` ENABLE KEYS */;


--
-- Definition of table `launchsubtbl`
--

DROP TABLE IF EXISTS `launchsubtbl`;
CREATE TABLE `launchsubtbl` (
  `launchsubid` int(10) unsigned NOT NULL auto_increment,
  `launchid` int(11) default NULL,
  `catid` varchar(45) default NULL,
  `describtion` varchar(45) default NULL,
  `qty` int(11) default NULL,
  `rate` double default NULL,
  PRIMARY KEY  (`launchsubid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `launchsubtbl`
--

/*!40000 ALTER TABLE `launchsubtbl` DISABLE KEYS */;
INSERT INTO `launchsubtbl` (`launchsubid`,`launchid`,`catid`,`describtion`,`qty`,`rate`) VALUES 
 (1,1,'6','Revir Side',6,5000),
 (2,1,'7','Revir Side',3,4000),
 (3,1,'8','Revir Side',25,2000),
 (4,1,'9','Revir Side',46,1100),
 (5,2,'6','Revir Side',6,5000),
 (6,2,'7','Revir Side',3,4000),
 (7,2,'8','Revir Side',25,2000),
 (8,2,'9','Revir Side',46,1100),
 (9,3,'6','Revir Side',50,5000);
/*!40000 ALTER TABLE `launchsubtbl` ENABLE KEYS */;


--
-- Definition of table `noticeinfo`
--

DROP TABLE IF EXISTS `noticeinfo`;
CREATE TABLE `noticeinfo` (
  `noticeid` int(11) NOT NULL auto_increment,
  `description` varchar(255) default NULL,
  `noticesubject` varchar(255) default NULL,
  PRIMARY KEY  (`noticeid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noticeinfo`
--

/*!40000 ALTER TABLE `noticeinfo` DISABLE KEYS */;
INSERT INTO `noticeinfo` (`noticeid`,`description`,`noticesubject`) VALUES 
 (1,'This is inform to All of passengers of Patuakhali, that The MV Awlad 7 are the new Launch in the rute. all are invited','EID Celebaretion'),
 (2,'This is inform to you the all passengers, from today you have go to your destination by only 150 TK','Special Rotation ');
/*!40000 ALTER TABLE `noticeinfo` ENABLE KEYS */;


--
-- Definition of table `passengerinfo`
--

DROP TABLE IF EXISTS `passengerinfo`;
CREATE TABLE `passengerinfo` (
  `passid` int(11) NOT NULL auto_increment,
  `passaddress` varchar(255) default NULL,
  `passage` int(11) default NULL,
  `passgender` varchar(255) default NULL,
  `passgmail` varchar(255) default NULL,
  `passname` varchar(255) default NULL,
  `passstatus` varchar(255) default NULL,
  `fromstationid` int(11) default NULL,
  `tostationid` int(11) default NULL,
  `starttimeid` int(11) default NULL,
  `endtimeid` int(11) default NULL,
  `ticketpurdate` date default NULL,
  `tickettakendate` date default NULL,
  PRIMARY KEY  (`passid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengerinfo`
--

/*!40000 ALTER TABLE `passengerinfo` DISABLE KEYS */;
INSERT INTO `passengerinfo` (`passid`,`passaddress`,`passage`,`passgender`,`passgmail`,`passname`,`passstatus`,`fromstationid`,`tostationid`,`starttimeid`,`endtimeid`,`ticketpurdate`,`tickettakendate`) VALUES 
 (1,'Dhaka',23,'Male','noman@gmail.com','Abdullah Al Noman','Non Govt',1,2,1,2,'2018-12-31','2018-12-31'),
 (2,'malibag',24,'Male','sarkar@test.com','Sarkar Sujan','Non Govt',1,2,2,4,'2018-12-19','2018-12-28');
/*!40000 ALTER TABLE `passengerinfo` ENABLE KEYS */;


--
-- Definition of table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation` (
  `reservid` int(11) NOT NULL auto_increment,
  `emailid` varchar(45) default NULL,
  `launchid` int(11) default NULL,
  `fromstationid` int(11) default NULL,
  `tostationid` int(11) default NULL,
  `starttimeid` int(11) default NULL,
  `endtimeid` int(11) default NULL,
  `launchname` varchar(45) default NULL,
  `launchnumber` varchar(45) default NULL,
  `ptn` int(10) unsigned default NULL,
  `resstatus` varchar(45) default NULL,
  `passid` int(10) unsigned default NULL,
  `resdate` varchar(45) default NULL,
  `catid` varchar(45) default NULL,
  `qty` int(11) default NULL,
  `describtion` varchar(45) default NULL,
  PRIMARY KEY  (`reservid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` (`reservid`,`emailid`,`launchid`,`fromstationid`,`tostationid`,`starttimeid`,`endtimeid`,`launchname`,`launchnumber`,`ptn`,`resstatus`,`passid`,`resdate`,`catid`,`qty`,`describtion`) VALUES 
 (1,'noman@gmail.com',1,1,1,3,2,'MV Parabat 11','103',164823,'Ordered',12,'2012-12-29',NULL,NULL,''),
 (2,'sarkar@gail.com',3,1,1,4,2,'MV Tipu','102',664335,'Ordered',17,'2012-12-31',NULL,NULL,''),
 (3,'noman@test.com',3,1,1,1,6,'MV Parabat 11','103',34061,'order',0,'2019/01/08',NULL,NULL,''),
 (4,'noman@test.com',3,1,1,1,6,'MV Parabat 11','103',12824,'order',0,'2019/01/08',NULL,NULL,''),
 (5,'noman@test.com',3,1,1,1,6,'MV Parabat 11','103',68502,'order',0,'2019/01/08',NULL,NULL,''),
 (6,'noman@test.com',3,1,1,1,6,'MV Parabat 11','103',35892,'order',2,'2019/01/08',NULL,NULL,''),
 (7,'noman@test.com',3,1,1,1,6,'MV Parabat 11','103',17199,'order',3,'2019/01/08',NULL,NULL,''),
 (8,'noman@test.com',3,1,1,1,6,'MV Parabat 11','103',79741,'order',4,'2019/01/08',NULL,NULL,''),
 (9,'noman@test.com',3,1,1,1,6,'MV Parabat 11','103',54707,'order',9,'2019/01/08',NULL,NULL,''),
 (10,'noman@test.com',3,1,1,1,6,'MV Parabat 11','103',78620,'order',10,'2019/01/08',NULL,NULL,''),
 (11,'noman@test.com',3,1,1,1,6,'MV Parabat 11','103',83044,'order',0,'2019/01/08',NULL,NULL,''),
 (12,'noman@test.com',3,1,1,1,6,'MV Parabat 11','103',64036,'order',5,'2019/01/08','6',2,NULL),
 (13,'noman@test.com',3,1,1,1,6,'MV Parabat 11','103',23823,'order',14,'2019/01/08','6',2,'Revier Side');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;


--
-- Definition of table `reservationdetails`
--

DROP TABLE IF EXISTS `reservationdetails`;
CREATE TABLE `reservationdetails` (
  `resdetilid` int(10) NOT NULL auto_increment,
  `reservid` int(10) default NULL,
  `launchname` varchar(45) default NULL,
  `catid` int(10) default NULL,
  `fromstationid` int(10) default NULL,
  `tostationid` int(10) default NULL,
  `journeydate` date default NULL,
  PRIMARY KEY  USING BTREE (`resdetilid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservationdetails`
--

/*!40000 ALTER TABLE `reservationdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservationdetails` ENABLE KEYS */;


--
-- Definition of table `scheduletbl`
--

DROP TABLE IF EXISTS `scheduletbl`;
CREATE TABLE `scheduletbl` (
  `scheduleid` int(11) NOT NULL auto_increment,
  `starttime` varchar(45) default NULL,
  `endtime` varchar(45) default NULL,
  PRIMARY KEY  (`scheduleid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheduletbl`
--

/*!40000 ALTER TABLE `scheduletbl` DISABLE KEYS */;
INSERT INTO `scheduletbl` (`scheduleid`,`starttime`,`endtime`) VALUES 
 (1,'7:00 PM','9:00 PM'),
 (2,'7:00 PM','7:30 PM'),
 (3,'7:00 PM','8:00 PM'),
 (4,'7:00 PM','8:30 PM'),
 (5,' 7:30 PM','8:00 PM'),
 (6,'7:30 PM','8:30 PM'),
 (7,'7:30 PM','9:00 PM'),
 (8,'8:00 PM','8:30 PM'),
 (9,'8:00 PM','9:00 PM'),
 (10,'8:30 PM','9:00 PM');
/*!40000 ALTER TABLE `scheduletbl` ENABLE KEYS */;


--
-- Definition of table `starttime`
--

DROP TABLE IF EXISTS `starttime`;
CREATE TABLE `starttime` (
  `starttimeid` int(11) NOT NULL auto_increment,
  `stime` varchar(45) default NULL,
  PRIMARY KEY  (`starttimeid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `starttime`
--

/*!40000 ALTER TABLE `starttime` DISABLE KEYS */;
INSERT INTO `starttime` (`starttimeid`,`stime`) VALUES 
 (1,'6: 00 PM'),
 (2,'6: 30 PM'),
 (3,'7: 00 PM'),
 (4,'7: 30 PM'),
 (5,'8: 00 PM'),
 (6,'8: 30 PM'),
 (7,'9: 00 PM'),
 (8,'9: 30 PM');
/*!40000 ALTER TABLE `starttime` ENABLE KEYS */;


--
-- Definition of table `tostation`
--

DROP TABLE IF EXISTS `tostation`;
CREATE TABLE `tostation` (
  `tostationid` int(11) NOT NULL auto_increment,
  `tostname` varchar(45) default NULL,
  PRIMARY KEY  (`tostationid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tostation`
--

/*!40000 ALTER TABLE `tostation` DISABLE KEYS */;
INSERT INTO `tostation` (`tostationid`,`tostname`) VALUES 
 (1,'Barishal'),
 (2,'Patuakhali'),
 (3,'Boga'),
 (4,'Char Gourabde'),
 (5,'Fatullah'),
 (6,'Dhaka');
/*!40000 ALTER TABLE `tostation` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `emailid` varchar(255) NOT NULL,
  `phone` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`emailid`,`phone`,`username`) VALUES 
 ('111','+88111','111'),
 ('123','+88123','123'),
 ('a','+88a','a'),
 ('noman@test.com','+88123','Noman'),
 ('q','+88q','q'),
 ('qq','+88qq','qq'),
 ('test@test.com','+88123','Noman'),
 ('zzz','+88zz','zzz');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userrole`
--

/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` (`emailid`,`password`,`role`,`status`) VALUES 
 ('111','111','ROLE_USER','True'),
 ('123','123','ROLE_USER','True'),
 ('a','a','ROLE_USER','True'),
 ('noman@test.com','123','ROLE_ADMIN','True'),
 ('q','q','ROLE_USER','True'),
 ('qq','qq','ROLE_USER','True'),
 ('test@test.com','123','ROLE_USER','True'),
 ('zzz','zz','ROLE_USER','True');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
