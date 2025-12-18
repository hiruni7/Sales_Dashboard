-- Total bookings by route
SELECT route, COUNT(*) AS total_bookings
FROM flight_bookings
GROUP BY route
ORDER BY total_bookings DESC;

-- Monthly booking trends
SELECT 
  MONTH(booking_date) AS month,
  COUNT(*) AS total_bookings
FROM flight_bookings
GROUP BY MONTH(booking_date)
ORDER BY month;

-- Revenue by travel class
SELECT travel_class, SUM(revenue) AS total_revenue
FROM flight_bookings
GROUP BY travel_class;
