/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - applet
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`applet` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `applet`;

/*Table structure for table `agent` */

DROP TABLE IF EXISTS `agent`;

CREATE TABLE `agent` (
  `visit_num` int(20) default NULL,
  `cname` varchar(30) default NULL,
  `name` varchar(20) default NULL,
  `phone` varchar(15) default NULL,
  `email` varchar(30) default NULL,
  `os` varchar(50) default NULL,
  `ctype` varchar(50) default NULL,
  `other` varchar(50) default NULL,
  `remark` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `agent` */

insert  into `agent`(`visit_num`,`cname`,`name`,`phone`,`email`,`os`,`ctype`,`other`,`remark`) values (63491,'Nishant','pooja','9024347004','arun@gmail.com','mac','printer','','pending'),(37268,'Nishant','Avi','9024347004','nishant.mathur555@gmail.com','mac','windowactivation','',''),(22532,'Rahul','pooja','9024347004','nishant.mathur555@gmail.com','linux','windowactivation','product key problem','open'),(51291,'Nishant','pooja','98202585','arun@gmail.com','linux','printer','product key problem','forward'),(74581,'Nishant mathur','thomas mars','9024347004','nishant.mathur555@gmail.com','linux','printer','dont know','forward'),(85439,'Nishant mathur','monu','946653434','yogi143thakur@gmail.com','windows','popup','product key problem','open'),(97231,'Shiv Kumar','Nishant Maythur','9024347004','nishant@gmail.com','linux','windowactivation','product key missing','open'),(27492,'Vicky rao','Nishant Maythur','9024347004','nishant@gmail.com','mac','popup','product key missing',''),(43597,'Vicky rao','Nishant Maythur','9024347004','nishant@gmail.com','mac','printer','its okay','open call '),(43663,'Shiv Kumar','Nishant Maythur','9024347004','nishant@gmail.com','windows','hardware','its okay','open'),(73763,'Shiv Kumar','Nishant Maythur','9024347004','nishant@gmail.com','windows','windowactivation','okay','open');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`,`usertype`) values ('nishu','nm123','admin');

/*Table structure for table `visit` */

DROP TABLE IF EXISTS `visit`;

CREATE TABLE `visit` (
  `visit_num` int(11) default NULL,
  `name` varchar(30) default NULL,
  `remote` varchar(30) default NULL,
  `email` varchar(100) default NULL,
  `phone` varchar(20) default NULL,
  `address` varchar(200) default NULL,
  `country` varchar(50) default NULL,
  `state` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `pur_date` varchar(30) default NULL,
  `raise_ticket` varchar(30) default NULL,
  `issue` varchar(5000) default NULL,
  `mode` varchar(20) default NULL,
  `amt` varchar(30) default NULL,
  `bank` varchar(200) default NULL,
  `status` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `visit` */

insert  into `visit`(`visit_num`,`name`,`remote`,`email`,`phone`,`address`,`country`,`state`,`city`,`pur_date`,`raise_ticket`,`issue`,`mode`,`amt`,`bank`,`status`) values (74362,'nishant','#123456789','arun@gmail.com','9024347004','','','','','2016-11-11','Aman','','debit','$1000','','close');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
