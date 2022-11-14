/*Analyze*/

--Data exploration by descriptive analysis 


--The average ride length of each ridership, casual 23 minutes and memeber 17 munites 
SELECT member_casual ,
AVG(ride_length_min) AS Avg_ride_length 
FROM dbo.bike_in_24hrs
GROUP BY  member_casual


--The total average ride length for all  members  is 12 mins 
SELECT
AVG(ride_length_min) AS Avg_ride_length
FROM dbo.bike_in_24hrs
WHERE member_casual = 'member'



--The  total average ride length for all casual is 23 mins 
SELECT
AVG(ride_length_min) AS Avg_ride_length 
FROM dbo.bike_in_24hrs
WHERE member_casual = 'casual'


--The total rides observed within a 24 hours range, for all through the year is 6 million +
--rows, however the member riders took over 1 million more rides than the casual riders
SELECT 
member_casual,
COUNT (*) AS total_rides
FROM dbo.bike_in_24hrs  
GROUP BY member_casual



--The docked bikes  means the bicycle that is designed to be locked from unauthorrized use by being locked, 
--and from the analysis below the casual riders bikes are the bikes that are mostly docked, in a day 
--The analysis returns the total num of rides performed by each rideable type and rider type in 24 hours
--The classic bike for members has the highest total number of rides (2046156) with in 24hrs range in a year.

SELECT rideable_type, 
      member_casual,
COUNT (*) AS num_of_rides
FROM dbo.bike_in_24hrs  
GROUP BY  rideable_type, member_casual
order by num_of_rides DESC



--The avg ride length in mins for each rideble type category in 24 hrs
--Average ride  time of casual vs member is 24 minutes and 13 munites respectively 
--This means that casual gets to ride longer times than the members.
SELECT  rideable_type,
AVG(ride_length_min) AS Avg_ride_length_min ,
    member_casual,
COUNT (*) AS num_of_rides
FROM dbo.bike_in_24hrs  
GROUP BY rideable_type, member_casual
ORDER BY Avg_ride_length_min DESC

--This analysis returns the ride_length in munites for each day categorised by each rideable type
SELECT
rideable_type,
weekday,
AVG(ride_length_min) AS Avg_ride_length_min ,
 member_casual
FROM dbo.bike_in_24hrs  
GROUP BY rideable_type, member_casual, weekday
ORDER BY Avg_ride_length_min DESC

--There's no much difference between the total minutes riders spent in weekend vs the weekdays both the members and casuals

SELECT
rideable_type,
CASE 
WHEN weekday = 'Sartuday' THEN 'weekend'
 WHEN weekday = 'Sunday' THEN  'weekend'
 ELSE
    'weekday'
 END AS  weekday,
 SUM(ride_length_min) AS sum_ride_min,
 member_casual
FROM dbo.bike_in_24hrs
GROUP BY weekday, member_casual, rideable_type
ORDER BY  sum_ride_min DESC 

