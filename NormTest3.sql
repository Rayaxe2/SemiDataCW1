/* NORM QUERY 3  */
UPDATE EMPLOYEE_BIG
SET 
NINumber = rownum,
Address = '123 street',
PostCode = rownum,
FirstName = 'Name1',
LastName = 'Name2',
PPhoneNo = '01234567891',
SPhoneNo = '01234567891',
SEX = 'F',
DOB = TO_DATE('02-NOV-2020', 'DD-MON-YYYY'),
Email = 'example@email.com',
HireDate  = TO_DATE('02-NOV-2020', 'DD-MON-YYYY');