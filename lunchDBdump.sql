#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.4.274
#
# OPTIONS:
#   sourcefilename=C:\Users\alan\Downloads\class.accdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=lunchDB
#   storageengine=MyISAM
#   dropdatabase=1
#   createtables=1
#   unicode=1
#   autocommit=1
#   transferdefaultvalues=1
#   transferindexes=1
#   transferautonumbers=1
#   transferrecords=1
#   columnlist=1
#   tableprefix=
#   negativeboolean=0
#   ignorelargeblobs=0
#   memotype=LONGTEXT
#   datetimetype=DATETIME
#

DROP DATABASE IF EXISTS `lunchDB`;
CREATE DATABASE IF NOT EXISTS `lunchDB`;
USE `lunchDB`;

#
# Table structure for table 'Department'
#

DROP TABLE IF EXISTS `Department`;

CREATE TABLE `Department` (
  `Dept_Code` VARCHAR(3) NOT NULL, 
  `Dept_Name` VARCHAR(20), 
  INDEX (`Dept_Code`), 
  PRIMARY KEY (`Dept_Code`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Department'
#

INSERT INTO `Department` (`Dept_Code`, `Dept_Name`) VALUES ('Act', 'Accounting');
INSERT INTO `Department` (`Dept_Code`, `Dept_Name`) VALUES ('Exe', 'Executive');
INSERT INTO `Department` (`Dept_Code`, `Dept_Name`) VALUES ('Fin', 'Finance');
INSERT INTO `Department` (`Dept_Code`, `Dept_Name`) VALUES ('Mkt', 'Marketing');
INSERT INTO `Department` (`Dept_Code`, `Dept_Name`) VALUES ('Per', 'Personnel');
INSERT INTO `Department` (`Dept_Code`, `Dept_Name`) VALUES ('Sal', 'Sales');
INSERT INTO `Department` (`Dept_Code`, `Dept_Name`) VALUES ('Shp', 'Shipping');
# 7 records

#
# Table structure for table 'Employee'
#

DROP TABLE IF EXISTS `Employee`;

CREATE TABLE `Employee` (
  `Emp_ID` INTEGER NOT NULL, 
  `Emp_FirstName` VARCHAR(10), 
  `Emp_LastName` VARCHAR(10), 
  `Dept_Code` VARCHAR(3), 
  `Emp_HireDate` DATETIME, 
  `Emp_CreditLimit` DECIMAL(19,4), 
  `Emp_Phone` VARCHAR(4), 
  `Emp_MgrID` INTEGER, 
  INDEX (`Dept_Code`), 
  INDEX (`Emp_ID`), 
  INDEX (`Emp_MgrID`), 
  PRIMARY KEY (`Emp_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Employee'
#

INSERT INTO `Employee` (`Emp_ID`, `Emp_FirstName`, `Emp_LastName`, `Dept_Code`, `Emp_HireDate`, `Emp_CreditLimit`, `Emp_Phone`, `Emp_MgrID`) VALUES (201, 'Susan', 'Brown', 'Exe', '1992-06-01 00:00:00', 30, '3484', NULL);
INSERT INTO `Employee` (`Emp_ID`, `Emp_FirstName`, `Emp_LastName`, `Dept_Code`, `Emp_HireDate`, `Emp_CreditLimit`, `Emp_Phone`, `Emp_MgrID`) VALUES (202, 'Jim', 'Kern', 'Sal', '1995-08-15 00:00:00', 26, '8722', 201);
INSERT INTO `Employee` (`Emp_ID`, `Emp_FirstName`, `Emp_LastName`, `Dept_Code`, `Emp_HireDate`, `Emp_CreditLimit`, `Emp_Phone`, `Emp_MgrID`) VALUES (203, 'Martha', 'Woods', 'Shp', '1997-02-01 00:00:00', 25, '7591', 201);
INSERT INTO `Employee` (`Emp_ID`, `Emp_FirstName`, `Emp_LastName`, `Dept_Code`, `Emp_HireDate`, `Emp_CreditLimit`, `Emp_Phone`, `Emp_MgrID`) VALUES (204, 'Ellen', 'Owens', 'Sal', '1996-07-01 00:00:00', 15, '6830', 202);
INSERT INTO `Employee` (`Emp_ID`, `Emp_FirstName`, `Emp_LastName`, `Dept_Code`, `Emp_HireDate`, `Emp_CreditLimit`, `Emp_Phone`, `Emp_MgrID`) VALUES (205, 'Henry', 'Perkins', 'Sal', '1998-03-01 00:00:00', 25, '5286', 202);
INSERT INTO `Employee` (`Emp_ID`, `Emp_FirstName`, `Emp_LastName`, `Dept_Code`, `Emp_HireDate`, `Emp_CreditLimit`, `Emp_Phone`, `Emp_MgrID`) VALUES (206, 'Carol', 'Rose', 'Act', '1997-10-15 00:00:00', 15, '3829', 201);
INSERT INTO `Employee` (`Emp_ID`, `Emp_FirstName`, `Emp_LastName`, `Dept_Code`, `Emp_HireDate`, `Emp_CreditLimit`, `Emp_Phone`, `Emp_MgrID`) VALUES (207, 'Dan', 'Smith', 'Shp', '1996-12-01 00:00:00', 25, '2259', 203);
INSERT INTO `Employee` (`Emp_ID`, `Emp_FirstName`, `Emp_LastName`, `Dept_Code`, `Emp_HireDate`, `Emp_CreditLimit`, `Emp_Phone`, `Emp_MgrID`) VALUES (208, 'Fred', 'Campbell', 'Shp', '1997-04-01 00:00:00', 25, '1752', 203);
INSERT INTO `Employee` (`Emp_ID`, `Emp_FirstName`, `Emp_LastName`, `Dept_Code`, `Emp_HireDate`, `Emp_CreditLimit`, `Emp_Phone`, `Emp_MgrID`) VALUES (209, 'Paula', 'Jacobs', 'Mkt', '1998-03-17 00:00:00', 15, '3357', 201);
INSERT INTO `Employee` (`Emp_ID`, `Emp_FirstName`, `Emp_LastName`, `Dept_Code`, `Emp_HireDate`, `Emp_CreditLimit`, `Emp_Phone`, `Emp_MgrID`) VALUES (210, 'Nancy', 'Hoffman', 'Sal', '1996-02-15 00:00:00', 25, '2974', 203);
# 10 records

#
# Table structure for table 'Item'
#

DROP TABLE IF EXISTS `Item`;

CREATE TABLE `Item` (
  `Item_Number` INTEGER NOT NULL, 
  `Item_Desc` VARCHAR(20), 
  `Item_Price` DECIMAL(19,4), 
  `Item_PriceIncrease` DECIMAL(19,4), 
  `Supplier_ID` VARCHAR(3), 
  PRIMARY KEY (`Item_Number`), 
  INDEX (`Supplier_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Item'
#

INSERT INTO `Item` (`Item_Number`, `Item_Desc`, `Item_Price`, `Item_PriceIncrease`, `Supplier_ID`) VALUES (1, 'Fresh Salad', 2, .25, 'Asp');
INSERT INTO `Item` (`Item_Number`, `Item_Desc`, `Item_Price`, `Item_PriceIncrease`, `Supplier_ID`) VALUES (2, 'Soup of the Day', 1.5, NULL, 'Asp');
INSERT INTO `Item` (`Item_Number`, `Item_Desc`, `Item_Price`, `Item_PriceIncrease`, `Supplier_ID`) VALUES (3, 'Sandwich', 3.5, .4, 'Asp');
INSERT INTO `Item` (`Item_Number`, `Item_Desc`, `Item_Price`, `Item_PriceIncrease`, `Supplier_ID`) VALUES (4, 'Grilled steak', 6, .7, 'Cbc');
INSERT INTO `Item` (`Item_Number`, `Item_Desc`, `Item_Price`, `Item_PriceIncrease`, `Supplier_ID`) VALUES (5, 'Hamburger', 2.5, .3, 'Cbc');
INSERT INTO `Item` (`Item_Number`, `Item_Desc`, `Item_Price`, `Item_PriceIncrease`, `Supplier_ID`) VALUES (6, 'Broccoli', 1, .05, 'Frv');
INSERT INTO `Item` (`Item_Number`, `Item_Desc`, `Item_Price`, `Item_PriceIncrease`, `Supplier_ID`) VALUES (7, 'French Fries', 1.5, NULL, 'Frv');
INSERT INTO `Item` (`Item_Number`, `Item_Desc`, `Item_Price`, `Item_PriceIncrease`, `Supplier_ID`) VALUES (8, 'Soda', 1.25, .25, 'Jbr');
INSERT INTO `Item` (`Item_Number`, `Item_Desc`, `Item_Price`, `Item_PriceIncrease`, `Supplier_ID`) VALUES (9, 'Coffee', .85, .15, 'Jbr');
INSERT INTO `Item` (`Item_Number`, `Item_Desc`, `Item_Price`, `Item_PriceIncrease`, `Supplier_ID`) VALUES (10, 'Dessert', 3, .5, 'Vsb');
# 10 records

#
# Table structure for table 'Lunch'
#

DROP TABLE IF EXISTS `Lunch`;

CREATE TABLE `Lunch` (
  `Lunch_ID` INTEGER NOT NULL, 
  `Lunch_Date` DATETIME, 
  `Emp_ID` INTEGER, 
  INDEX (`Emp_ID`), 
  INDEX (`Lunch_ID`), 
  PRIMARY KEY (`Lunch_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Lunch'
#

INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (1, '1998-11-16 00:00:00', 201);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (2, '1998-11-16 00:00:00', 202);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (3, '1998-11-16 00:00:00', 203);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (4, '1998-11-16 00:00:00', 207);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (5, '1998-11-16 00:00:00', 206);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (6, '1998-11-16 00:00:00', 210);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (7, '1998-11-25 00:00:00', 201);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (8, '1998-11-25 00:00:00', 205);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (9, '1998-11-25 00:00:00', 204);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (10, '1998-11-25 00:00:00', 207);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (11, '1998-11-25 00:00:00', 208);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (12, '1998-12-04 00:00:00', 201);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (13, '1998-12-04 00:00:00', 203);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (14, '1998-12-04 00:00:00', 205);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (15, '1998-12-04 00:00:00', 210);
INSERT INTO `Lunch` (`Lunch_ID`, `Lunch_Date`, `Emp_ID`) VALUES (16, '1998-12-04 00:00:00', 208);
# 16 records

#
# Table structure for table 'LunchItem'
#

DROP TABLE IF EXISTS `LunchItem`;

CREATE TABLE `LunchItem` (
  `LunchID` INTEGER NOT NULL, 
  `ItemNumber` INTEGER NOT NULL, 
  `LIQuantity` INTEGER, 
  INDEX (`LunchID`), 
  PRIMARY KEY (`LunchID`, `ItemNumber`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'LunchItem'
#

INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (1, 1, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (1, 3, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (1, 5, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (2, 1, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (2, 3, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (2, 4, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (2, 6, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (3, 1, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (3, 4, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (3, 7, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (3, 8, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (3, 9, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (4, 2, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (4, 3, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (4, 7, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (4, 10, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (5, 1, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (5, 2, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (5, 3, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (5, 5, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (5, 8, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (6, 3, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (6, 4, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (6, 5, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (6, 6, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (6, 7, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (7, 1, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (7, 2, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (7, 8, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (8, 1, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (8, 4, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (8, 5, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (8, 6, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (8, 8, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (8, 9, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (9, 1, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (9, 2, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (9, 3, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (9, 4, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (10, 2, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (10, 4, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (10, 7, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (10, 8, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (11, 1, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (11, 2, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (11, 3, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (11, 4, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (12, 1, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (12, 3, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (12, 5, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (12, 8, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (12, 9, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (13, 1, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (13, 2, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (13, 3, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (13, 4, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (13, 5, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (14, 1, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (14, 2, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (14, 3, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (14, 4, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (14, 5, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (15, 1, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (15, 2, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (15, 3, 2);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (15, 4, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (16, 1, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (16, 2, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (16, 3, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (16, 4, 1);
INSERT INTO `LunchItem` (`LunchID`, `ItemNumber`, `LIQuantity`) VALUES (16, 5, 1);
# 71 records

#
# Table structure for table 'Supplier'
#

DROP TABLE IF EXISTS `Supplier`;

CREATE TABLE `Supplier` (
  `Supplier_ID` VARCHAR(3) NOT NULL, 
  `Supplier_Name` VARCHAR(30), 
  PRIMARY KEY (`Supplier_ID`), 
  INDEX (`Supplier_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Supplier'
#

INSERT INTO `Supplier` (`Supplier_ID`, `Supplier_Name`) VALUES ('Arr', 'Alice & Ray\'s Restaurant');
INSERT INTO `Supplier` (`Supplier_ID`, `Supplier_Name`) VALUES ('Asp', 'A Soup Place');
INSERT INTO `Supplier` (`Supplier_ID`, `Supplier_Name`) VALUES ('Cbc', 'Certified Beef Company');
INSERT INTO `Supplier` (`Supplier_ID`, `Supplier_Name`) VALUES ('Frv', 'Frank Reed\'s Vegetables');
INSERT INTO `Supplier` (`Supplier_ID`, `Supplier_Name`) VALUES ('Fsn', 'Frank & Sons');
INSERT INTO `Supplier` (`Supplier_ID`, `Supplier_Name`) VALUES ('Jbr', 'Just Beverages');
INSERT INTO `Supplier` (`Supplier_ID`, `Supplier_Name`) VALUES ('Jps', 'Jim Parker\'s Shop');
INSERT INTO `Supplier` (`Supplier_ID`, `Supplier_Name`) VALUES ('Vsb', 'Virginia Street Bakery');
# 8 records

