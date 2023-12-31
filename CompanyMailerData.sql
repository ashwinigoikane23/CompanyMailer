create database mailerSystem;
CREATE TABLE COMPANY_MAILER_USER
(ID int NOT NULL AUTO_INCREMENT, 
NAME VARCHAR(255), 
EMAIL VARCHAR(255), 
PASSWORD VARCHAR(255), 
GENDER VARCHAR(255), 
DOB DATE, 
ADDRESSLINE VARCHAR(255), 
CITY VARCHAR(255), 
STATE VARCHAR(255), 
COUNTRY VARCHAR(255), 
CONTACT VARCHAR(255), 
REGISTEREDDATE DATE, 
AUTHORIZED VARCHAR(255),
PRIMARY KEY(ID));

   CREATE TABLE  COMPANY_MAILER_MESSAGE 
   (ID int NOT NULL AUTO_INCREMENT,
	SENDER VARCHAR(255), 
	RECEIVER VARCHAR(255), 
	SUBJECT VARCHAR(255), 
	MESSAGE VARCHAR(255), 
	TRASH VARCHAR(255), 
	MESSAGEDATE DATE,
    PRIMARY KEY(ID));