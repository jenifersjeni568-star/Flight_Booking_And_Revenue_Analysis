---1. Total Booking Records---
SELECT COUNT(*) AS total_bookings
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE";


---2. Total Revenue---
SELECT SUM("fare") AS total_revenue
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE";


---3. Average Fare---
SELECT AVG("fare") AS average_fare
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE";


---4. Minimum Fare---
SELECT MIN("fare") AS minimum_fare
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE";


---5. Maximum Fare---
SELECT MAX("fare") AS maximum_fare
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE";


---6. Airline-wise Booking Count---
SELECT "airline", COUNT(*) AS booking_count
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE"
GROUP BY "airline"
ORDER BY booking_count DESC;


---7. Airline-wise Revenue---
SELECT "airline", SUM("fare") AS total_revenue
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE"
GROUP BY "airline"
ORDER BY total_revenue DESC;


---8. Route-wise Booking Count---
SELECT "route", COUNT(*) AS booking_count
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE"
GROUP BY "route"
ORDER BY booking_count DESC;


---9. Booking Status Distribution---
SELECT "bookingstatus", COUNT(*) AS booking_count
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE"
GROUP BY "bookingstatus"
ORDER BY booking_count DESC;


---10. Revenue by Booking Status---
SELECT "bookingstatus", SUM("fare") AS total_revenue
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE"
GROUP BY "bookingstatus"
ORDER BY total_revenue DESC;


---11. Average Passenger Age---
SELECT AVG("age") AS average_age
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE";


---12. Age Range in the Dataset---
SELECT MIN("age") AS minimum_age,
       MAX("age") AS maximum_age
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE";


---13. Payment Method Distribution---
SELECT "payment_method", COUNT(*) AS booking_count
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE"
GROUP BY "payment_method"
ORDER BY booking_count DESC;


---14. Payment Method Revenue---
SELECT "payment_method", SUM("fare") AS total_revenue
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE"
GROUP BY "payment_method"
ORDER BY total_revenue DESC;


---15. Departure City Booking Count---
SELECT "departure_city", COUNT(*) AS booking_count
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE"
GROUP BY "departure_city"
ORDER BY booking_count DESC;


---16. City-wise Revenue---
SELECT "departure_city", SUM("fare") AS total_revenue
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE"
GROUP BY "departure_city"
ORDER BY total_revenue DESC;


---17. Top 10 Highest Fare Bookings---
SELECT *
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE"
ORDER BY "fare" DESC
LIMIT 10;


---18. Confirmed Booking Records---
SELECT COUNT(*) AS confirmed_bookings
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE"
WHERE "bookingstatus" = 'Confirmed';


---19. Cancelled Booking Records---
SELECT COUNT(*) AS cancelled_bookings
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE"
WHERE "bookingstatus" = 'Cancelled';


---20. Completed Booking Records---
SELECT COUNT(*) AS completed_bookings
FROM "AwsDataCatalog"."YOUR_DATABASE"."YOUR_FLIGHT_TABLE"
WHERE "bookingstatus" = 'Completed';
