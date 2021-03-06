DROP TABLE REGULAR_BOOKING_DNORM_BIG;
DROP TABLE CLIENTS_DNORM_BIG;
DROP TABLE CARS_DNORM_BIG;
DROP TABLE DRIVER_REVENUE_DNORM_BIG;
DROP TABLE BOOKING_DNORM_BIG;
DROP TABLE EMPLOYEE_INCIDENTS_DNORM_BIG;
DROP TABLE SHIFT_DNORM_BIG;
DROP TABLE EMPLOYEE_DNORM_BIG;

/*INSERT THE DNORMALIZED TABLE'S DATA INTO THE SOON TO BE LARGER DNORMALISED TABLE*/
CREATE TABLE REGULAR_BOOKING_DNORM_BIG AS SELECT * FROM REGULAR_BOOKING_DNORM;
CREATE TABLE CLIENTS_DNORM_BIG AS SELECT * FROM CLIENTS_DNORM;
CREATE TABLE CARS_DNORM_BIG AS SELECT * FROM CARS_DNORM;
CREATE TABLE DRIVER_REVENUE_DNORM_BIG AS SELECT * FROM DRIVER_REVENUE_DNORM;
CREATE TABLE BOOKING_DNORM_BIG AS SELECT * FROM BOOKING_DNORM;
CREATE TABLE EMPLOYEE_INCIDENTS_DNORM_BIG AS SELECT * FROM EMPLOYEE_INCIDENTS_DNORM;
CREATE TABLE SHIFT_DNORM_BIG AS SELECT * FROM SHIFT_DNORM;
CREATE TABLE EMPLOYEE_DNORM_BIG AS SELECT * FROM EMPLOYEE_DNORM;

/* INCREASE EXPONENTIALLY */
SET SERVEROUTPUT ON;

DECLARE
cntr NUMBER := 0;
BEGIN
    FOR loop_counter IN 1..13 /*Adjust to indicate the amount of growth you want*/
LOOP
cntr := cntr  + 1;
INSERT INTO BOOKING_DNORM_BIG SELECT * FROM BOOKING_DNORM_BIG;
INSERT INTO REGULAR_BOOKING_DNORM_BIG SELECT * FROM REGULAR_BOOKING_DNORM_BIG;
INSERT INTO SHIFT_DNORM_BIG SELECT * FROM SHIFT_DNORM_BIG;
INSERT INTO CARS_DNORM_BIG SELECT * FROM CARS_DNORM_BIG;
INSERT INTO DRIVER_REVENUE_DNORM_BIG SELECT * FROM DRIVER_REVENUE_DNORM_BIG;
INSERT INTO EMPLOYEE_INCIDENTS_DNORM_BIG SELECT * FROM EMPLOYEE_INCIDENTS_DNORM_BIG;
INSERT INTO CLIENTS_DNORM_BIG SELECT * FROM CLIENTS_DNORM_BIG;
INSERT INTO EMPLOYEE_DNORM_BIG SELECT * FROM EMPLOYEE_DNORM_BIG;
END LOOP;
dbms_output.put_line('Executed: ' || cntr) ;
END;
/
