SELECT cust_name 
FROM restBill T1 INNER JOIN restStaff T2 ON T1.waiter_no = T2.staff_no 
WHERE bill_total > 450 AND first_name = 'Charles'

SELECT first_name, surname
FROM restStaff
WHERE staff_no = 
(SELECT headwaiter 
FROM restBill T1 INNER JOIN restStaff T2 ON T1.waiter_no = T2.staff_no
WHERE bill_date = '160111' AND cust_name LIKE 'Nerida%' )

SELECT cust_name
FROM restBill
WHERE bill_total = (SELECT MIN(bill_total) FROM restBill)

SELECT first_name, surname, bill_no, headwaiter
FROM restStaff T1 LEFT JOIN restBill T2 ON T1.staff_no = T2.waiter_no 
WHERE bill_no IS NULL AND headwaiter IS NOT NULL




SELECT T1.cust_name, T4.first_name, T4.surname, T2.room_name

FROM restBill T1 INNER JOIN restRest_table T2
ON T1.table_no  = T2.table_no
INNER JOIN restStaff T3
ON T1.waiter_no = T3.staff_no
INNER JOIN restStaff T4
on T3.headwaiter = T4.staff_no

WHERE bill_total = (SELECT MAX(bill_total) FROM restBill)