/* NORM QUERY 1 */
SELECT SHIFT_BIG.EmployeeID AS “Employee ID”, EMPLOYEE_BIG.FirstName AS “First Name”, EMPLOYEE_BIG.LastName AS “Last Name”
FROM SHIFT_BIG
INNER JOIN EMPLOYEE_BIG ON SHIFT_BIG.EmployeeID = EMPLOYEE_BIG.NINumber
WHERE SHIFT_BIG.ShiftType IN ('NIGHT','AFTERNOON') 
GROUP BY SHIFT_BIG.EmployeeID, EMPLOYEE_BIG.FirstName, EMPLOYEE_BIG.LastName 
ORDER BY SHIFT_BIG.EmployeeID;