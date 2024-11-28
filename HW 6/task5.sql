SELECT COUNT(bill_no) AS bill_count, bill_date, first_name, surname
FROM restStaff T1
LEFT JOIN restBill T2 ON T2.waiter_no = T1.staff_no
GROUP BY bill_date, waiter_no
HAVING COUNT(bill_no) >= 2;

SELECT COUNT (room_name) AS amount, table_no, room_name
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name

if u wanted to count: 
SELECT room_name, COUNT(room_name)
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name


SELECT SUM(bill_total), room_name
FROM restRoom_management INNER JOIN restBill ON restRoom_management.room_date = restBill.bill_date
GROUP BY room_name



SELECT SUM(bill_total) , T3.first_name, T3.surname
FROM restBill T1 INNER JOIN restStaff T2 ON T1.waiter_no = T2.staff_no
                   INNER JOIN restStaff T3 ON T2.headwaiter = T3.staff_no
GROUP BY T2.headwaiter
ORDER BY bill_total DESC

SELECT cust_name, AVG(bill_total) AS 'Average Spend'
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) > 400

SELECT COUNT(bill_no) AS bill_count, bill_date, first_name, surname
FROM restStaff T1
LEFT JOIN restBill T2 ON T2.waiter_no = T1.staff_no
GROUP BY bill_date, waiter_no
HAVING COUNT(bill_no) >= 3;

