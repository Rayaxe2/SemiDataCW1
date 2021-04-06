/* DNORM QUERY 2 */
SELECT ClientID AS “Client”, COUNT(*) AS “Total bookings”, AVG(AmountPaid) AS “Average booking cost”, MAX(AmountPaid) AS “Maximum paid”, MIN(AmountPaid) AS “Minimum paid”
FROM BOOKING_DNORM_BIG
WHERE ClientID IS NOT NULL
GROUP BY ClientID;