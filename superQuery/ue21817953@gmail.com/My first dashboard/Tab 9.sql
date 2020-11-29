SELECT COUNT(*) 
FROM
 `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2018`
WHERE
  trip_distance > 0
  AND fare_amount/trip_distance BETWEEN 2 AND 10
   AND dropoff_datetime > pickup_datetime
   AND pickup_datetime BETWEEN '2018-04-01T00:00:00' AND '2018-06-30T23:59:59'