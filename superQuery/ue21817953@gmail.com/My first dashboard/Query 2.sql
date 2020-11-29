SELECT t0.hour, t0.speed FROM (SELECT
  EXTRACT(HOUR FROM pickup_datetime) hour,
  ROUND(AVG(trip_distance / TIMESTAMP_DIFF(TIMESTAMP(dropoff_datetime),
  TIMESTAMP(pickup_datetime),SECOND))*3600, 1) speed
  
FROM
 `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2018`
WHERE
  trip_distance > 0
  AND fare_amount/trip_distance BETWEEN 2 AND 10
   AND dropoff_datetime > pickup_datetime

GROUP BY 1
ORDER BY 1) AS t0 LIMIT 100