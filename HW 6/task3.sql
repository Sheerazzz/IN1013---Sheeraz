SELECT first_name , surname 
FROM restStaff
WHERE staff_no = (SELECT staff_no 
FROM restBill
WHERE cust_name = "Tanya Singh")

SELECT room_date 
FROM restRoom_management 
WHERE room_name = "Green" AND headwaiter = "010" AND room_date LIKE "1602%"

SELECT first_name, surname
FROM restStaff
WHERE headwaiter = (SELECT headwaiter 
FROM restStaff 
WHERE first_name = "Zoe")

SELECT cust_name, bill_total, first_name, surname
FROM restBill INNER JOIN restStaff
ON restBill.waiter_no = restStaff.staff_no)
ORDER BY bill_total DESC;

SELECT first_name , surname 
FROM restStaff 
WHERE staff_no = 
(SELECT waiter_no 
FROM restBill
WHERE bill_no = "00014" OR bill_no = "00017")

SELECT first_name, surname
FROM restBill T1 INNER JOIN restRest_table T2
ON T1.table_no  = T2.table_no
INNER JOIN restStaff T3
ON T1.waiter_no = T3.staff_no
WHERE room_name = 'Blue' AND bill_date = '160312'









