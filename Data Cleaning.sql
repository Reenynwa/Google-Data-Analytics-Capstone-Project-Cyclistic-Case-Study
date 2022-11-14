--I created a new table called bike_years to merge all the data for the past 12 months( September 2021- September 2022)
--Using CREATE TABLE FUNCTION , INSERT INTO  and UNION  to merge distinct  THE rows.


/*Data Cleaning*/


CREATE TABLE dbo.bike_years 
(
ride_id nvarchar(50) not null , 
rideable_type nvarchar(50) not null,
started_at datetime2(7) not null, 
ended_at datetime2(7) not null ,  
member_casual nvarchar(50) not null
)

INSERT INTO dbo.bike_years
(ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual)
(
SELECT  
ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual
FROM dbo.Sep_2022

UNION

SELECT
ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual
FROM dbo.Aug_2022 

UNION

SELECT
ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual
FROM dbo.Jul_2022

UNION

SELECT
ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual
FROM dbo.Jun_2022

UNION

SELECT 
ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual
FROM dbo.May_2022

UNION

SELECT  
ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual
FROM dbo.April_2022

UNION

select ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual
FROM dbo.march_2022

UNION

SELECT 
ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual
FROM dbo.Feb_2022

UNION 

SELECT 
ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual
FROM dbo.Jan_2022

UNION

SELECT 
ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual
FROM dbo.Dec_2021

UNION

SELECT 
ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual
FROM dbo.Nov_2021

UNION

SELECT 
ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual
FROM dbo.Oct_2021


UNION 

SELECT 
ride_id, 
rideable_type,
started_at,
ended_at,  
member_casual
FROM dbo.Sep_2021 
);


--Retrieving the munites spent by each rider using the DATEDIFF AND DATENAME FUNCTION
SELECT
ride_id, 
rideable_type,
started_at,
ended_at, 
DATEDIFF ( minute , started_at ,  ended_at)  as ride_length_min, 
DATENAME(weekday, started_at) as weekday ,
DATENAME( month, started_at) as month,
YEAR( started_at) as year,
member_casual
INTO dbo.bike_minutes
FROM  dbo.bike_years ; 



--1440 minutes equates to 24 hours 
--Retrieving rides that are more than 24 hours 
-- 5,811 riders hired their bike for  more than 24 hours 
SELECT * 
INTO dbo.bike_above_24hrs
FROM bike_minutes
WHERE ride_length_min  > 1440 ;
 

-- Retrieving rides that only has rheir ride_length in 24 hours, this will be the main table for analysis 
SELECT * 
INTO dbo.bike_in_24hrs
FROM bike_minutes
WHERE ride_length_min between  1 and 1440 ;






