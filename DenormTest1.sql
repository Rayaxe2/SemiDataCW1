/* DNORM QUERY 1 */
SELECT EmployeeID AS “Employee ID”, EmpFName AS “First Name”, EmpLName AS “Last Name”
FROM SHIFT_DNORM_BIG 
WHERE ShiftType IN ('NIGHT','AFTERNOON')
GROUP BY EmployeeID, EmpFName, EmpLName  
ORDER BY EmployeeID;