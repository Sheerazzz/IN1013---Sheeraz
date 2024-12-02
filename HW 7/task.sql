CREATE VIEW samsBills AS
SELECT 
    restStaff.first_name, 
    restStaff.surname, 
    restBill.bill_date, 
    restBill.cust_name, 
    restBill.bill_total
FROM 
    restBill
INNER JOIN 
    restStaff ON restStaff.staff_no = restBill.waiter_no
WHERE 
    restStaff.first_name = 'Sam';



SELECT *
FROM samsBills
WHERE samsBills.bill_total > 400;



CREATE VIEW roomTotals AS
SELECT 
    restRest_table.room_name, 
    SUM(restBill.bill_total) AS total_sum
FROM 
    restRest_table
INNER JOIN 
    restRoom_management ON restRest_table.room_name = restRoom_management.room_name
INNER JOIN 
    restBill ON restBill.waiter_no = restRoom_management.staff_no
GROUP BY 
    restRest_table.room_name;
    
SELECT * FROM roomTotals;


SELECT SUM(bill_total), CONCAT(T1.first_name,' ', T1.surname) AS Headwaiter
FROM restBill 
INNER JOIN restStaff ON restBill.waiter_no = restStaff.staff_no 
INNER JOIN restStaff AS T1 ON restStaff.headwaiter = T1.staff_no
GROUP BY restStaff.headwaiter;

