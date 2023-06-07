/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.36-MariaDB : Database - grafik
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`grafik` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `grafik`;

/*Table structure for table `sales` */

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merk` varchar(50) DEFAULT NULL,
  `penjualan` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `sales` */

insert  into `sales`(`id`,`merk`,`penjualan`) values (1,'Personal Computer',1000),(2,'Laptop',1000);

/*Table structure for table `sales_summary` */

DROP TABLE IF EXISTS `sales_summary`;

CREATE TABLE `sales_summary` (
  `tipe` varchar(50) DEFAULT NULL,
  `jan` int(11) DEFAULT NULL,
  `feb` int(11) DEFAULT NULL,
  `mar` int(11) DEFAULT NULL,
  `apr` int(11) DEFAULT NULL,
  `may` int(11) DEFAULT NULL,
  `jun` int(11) DEFAULT NULL,
  `jul` int(11) DEFAULT NULL,
  `aug` int(11) DEFAULT NULL,
  `sep` int(11) DEFAULT NULL,
  `oct` int(11) DEFAULT NULL,
  `nov` int(11) DEFAULT NULL,
  `dec` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sales_summary` */

insert  into `sales_summary`(`tipe`,`jan`,`feb`,`mar`,`apr`,`may`,`jun`,`jul`,`aug`,`sep`,`oct`,`nov`,`dec`) values ('Export',100,200,500,800,1000,1200,1150,950,850,650,400,230),('Local',220,350,620,980,1150,1300,1400,1200,1000,800,600,450);

/*Table structure for table `salespermonth` */

DROP TABLE IF EXISTS `salespermonth`;

CREATE TABLE `salespermonth` (
  `produk` varchar(50) DEFAULT NULL,
  `jan` int(11) DEFAULT NULL,
  `feb` int(11) DEFAULT NULL,
  `mar` int(11) DEFAULT NULL,
  `apr` int(11) DEFAULT NULL,
  `may` int(11) DEFAULT NULL,
  `jun` int(11) DEFAULT NULL,
  `jul` int(11) DEFAULT NULL,
  `aug` int(11) DEFAULT NULL,
  `sep` int(11) DEFAULT NULL,
  `oct` int(11) DEFAULT NULL,
  `nov` int(11) DEFAULT NULL,
  `dec` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `salespermonth` */

insert  into `salespermonth`(`produk`,`jan`,`feb`,`mar`,`apr`,`may`,`jun`,`jul`,`aug`,`sep`,`oct`,`nov`,`dec`) values ('Laptop',100,200,500,800,1000,1200,1150,950,850,650,400,230),('PC',220,350,620,980,1150,1300,1400,1200,1000,800,600,450),('Monitor',50,90,120,130,140,150,160,170,180,190,200,210),('Printer',40,45,50,55,60,65,70,75,80,85,90,95),('Scanner',500,250,300,150,400,600,800,600,400,200,400,600),('Mouse',100,100,100,100,200,300,400,500,600,700,800,1000),('Handphone',1000,2000,3000,4000,5000,6000,7000,8000,9000,10000,11000,12000),('Keyboard',200,200,200,200,200,200,200,200,200,200,200,200),('Hard Disk',300,300,300,300,300,300,400,500,600,700,750,800),('Flash Disk',400,400,400,400,400,400,400,400,400,400,400,400),('RAM',500,500,500,500,500,500,500,500,500,500,500,500),('VGA Card',400,400,300,200,250,350,450,500,150,180,200,500);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
