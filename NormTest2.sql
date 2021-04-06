/* NORM QUERY 2 */
SELECT REGB.ClientID AS “Client”, COUNT(*) AS “Total bookings”, AVG(PY.AmountPaid) AS “Average booking cost”, MAX(PY.AmountPaid) AS “Maximum paid”, MIN(PY.AmountPaid) AS “Minimum paid”
FROM BOOKING_BIG BK
INNER JOIN RECURRENT_BOOKING_BIG RECB ON BK.BookingID = RECB.BookingID
INNER JOIN REGULAR_BOOKING_BIG REGB ON RECB.RegBookID = REGB.RegBookID
INNER JOIN PAYMENT_BIG PY ON PY.BookingID = BK.BookingID
GROUP BY ClientID;