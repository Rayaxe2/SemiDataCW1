/* DENORMALIZED TABLE */
DROP TABLE REGULAR_BOOKING_DNORM;
DROP TABLE CLIENTS_DNORM;
DROP TABLE CARS_DNORM;
DROP TABLE DRIVER_REVENUE_DNORM;
DROP TABLE BOOKING_DNORM;
DROP TABLE EMPLOYEE_INCIDENTS_DNORM;
DROP TABLE SHIFT_DNORM;
DROP TABLE EMPLOYEE_DNORM;

CREATE TABLE BOOKING_DNORM (
BOOKINGID CHAR(9) NOT NULL, 
OPERATORID CHAR(9),
DRIVERID CHAR(9),
REGBOOKID CHAR(9),
CLIENTID CHAR(9),
DATEBOOKED DATE,
PICKUPDATE DATE,
PICKUPADDRESS VARCHAR(255),
DROPOFFADDRESS VARCHAR(255),
NOOFPASSENGERS NUMBER(2),
CUSTOMERPHONENO CHAR(11),
PAYMENTMETHOD VARCHAR(10),
PAYMENTDATE DATE,
PAYEESFIRSTNAME VARCHAR(255),
PAYEESLASTNAME VARCHAR(255),
CARDNO VARCHAR(16),
EXPIRYDATE DATE,
CVV CHAR(3),
AMOUNTPAID NUMBER(8,2)
);
 
CREATE TABLE SHIFT_DNORM (
SHIFTID CHAR(9) NOT NULL,
EMPLOYEEID CHAR(9),
EMPFNAME VARCHAR(255),
EMPLNAME VARCHAR(255),
EMPLOYEETYPE VARCHAR(20),
SHIFTDATE DATE,
SHIFTTYPE VARCHAR(20)
);
CREATE TABLE CARS_DNORM (
REGISTRATIONNO CHAR(7) NOT NULL,
DRIVERID CHAR(9),
REGISTRATIONYEAR INTEGER,
MILEAGE VARCHAR(10),
LATESTMOTDATE DATE,
NOOFSEATS VARCHAR(10),
CARSTATUS VARCHAR(30),
OWNERID VARCHAR(9)
);
 
CREATE TABLE DRIVER_REVENUE_DNORM (
REVENUEID CHAR(9) NOT NULL,
DRIVERID CHAR(9),
REVENUEDATE DATE,
GROSSTAKINGS NUMBER(8,2),
PAIDTOCOMPANY NUMBER(8,2),
NETEARNINGS NUMBER(8,2)
);
 
CREATE TABLE EMPLOYEE_DNORM (
NINUMBER CHAR(9) NOT NULL,
ADDRESS VARCHAR2(255),
POSTCODE VARCHAR(20),
CITY VARCHAR(50),
FIRSTNAME VARCHAR(255),
LASTNAME VARCHAR(255),
PPHONENO CHAR(11),
SPHONENO CHAR(11),
SEX CHAR(1),
DOB DATE,
EMAIL VARCHAR2(255),
HIREDATE DATE,
DRIVERLICENSEID CHAR(9),
PAYTYPE VARCHAR(9),
PAYVALUE NUMBER(9),
SALARY NUMBER(8,2),
TAXCODE VARCHAR(20)
);
 
CREATE TABLE REGULAR_BOOKING_DNORM (
REGBOOKID CHAR(9) NOT NULL,
CLIENTID CHAR(9),
BOOKINGFREQUENCY VARCHAR(7),
STARTDATE DATE,
DURATION VARCHAR(10),
NOOFPASSENGERS  NUMBER(2)
);

CREATE TABLE CLIENTS_DNORM (
CLIENTID CHAR(9) NOT NULL,
CLIENTTYPE VARCHAR(15),
CONTACTFNAME VARCHAR(255),
CONTACTLNAME VARCHAR(255),
PPHONENO CHAR(11),
SPHONENO CHAR(11),
CORPERATIONNAME VARCHAR(50),
EMAIL VARCHAR2(400)
);
 
CREATE TABLE EMPLOYEE_INCIDENTS_DNORM (
INCIDENTID CHAR(9) NOT NULL,
NINUMBER CHAR(9),
INCIDENTTYPE VARCHAR2(20),
INCIDENTNOTES VARCHAR2(4000),
INCIDENTDATE DATE
);
