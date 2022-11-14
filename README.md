# Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study
Identify trends and understand how company's future success depends on maximizing the number of annual memberships by converting the casual riders into annual members.

Google Data Analytics Capstone Project: Cyclistic Case Study
How does a Bike-Share Navigate Speedy Success

 
![image](https://user-images.githubusercontent.com/100621086/201753062-b3dd3ddb-1dca-4dbb-afaf-9e8571d7ee3a.png)



Industry Focus: Sales and Marketing 
Problem Statement: Maximizing the number of annual members to bring future growth by converting the casual riders to annual members.
Business Use Case or what the team needs to understand:
a) How casual riders and annual members use Cyclistic bikes differently.
b) From the above insights , as a Junior Data Analyst I will design a new marketing strategy that will convert casual riders into annual members.
Specific Metrics: Design marketing strategies aimed at converting casual riders into annual members.
Deliverables: The presentation that outlines our recommendations.



INTRODUCTION

Welcome to the Cyclistic bike-share analysis, in this case study, I will be working as a Junior Data analyst working with the marketing analyst team at the Cyclistic company in Chicago. The marketing director and Manager  believes the company's future success depends on maximizing the number of annual memberships by converting the casual riders into annual members.
Cyclistic offers reclining bikes, hand tricycles and cargo, making bike-share more inclusive to people with disabilities and riders who can use the standard two-wheeled bike, 30% of the riders use them to commute to work and 8% use them for assistive options while majority opt for traditional bikes.
Cyclistic marketing strategy had relied on building general awareness and appealing to expand the consumer segments  and this was made possible by flexibility of the pricing plans, Single-ride passes, full day passes (  known as Casual Riders)  and annual memberships  ( Cyclistic Member).
Based on the financial analysis the annual members are more profitable than the casual riders even though the pricing flexibility attracts more customers. But the marketing Manager Moreno believes Maximizing the number of annual members will  bring future growth by converting the casual riders to annual members rather than creating a marketing campaign that targets all new customers giving that casual riders are already aware of the options available.
In order to achieve the above goal, the marketing analyst team has agreed to design another marketing strategy that converts casual riders into annual members and in order to do this, the team are interested in analyzing the cyclistic historical bike trip data to identify trends and ask the following questions:

ASK 

Business task
How the annual members and casual riders use the cyclistic bikes differently.

Stakeholders expectation: Lily Monero, the marketing director and manager of marketing analyst team expectation is to Design marketing strategies aimed at converting casual riders into annual members.

Key objectives
1) How do the annual members and casual riders use the cyclitic bikes differently
2)Why would casual riders buy cysclistic annual memberships
3) How can cysclistic use digital media to influence casual riders to become members



PREPARE

(Data source)
I will use the cyclistics historical data to analyze and identify trends Cyclistic trip data from the last 12 months.

Data Ethics and Privacy 
The data has been made available by Motivate International inc. under this license. 
The Data is also a public data that can be used to explore how different customer types are using the cyclistic bikes
 
Data Anonymization 
The data privacy issues prohibit you from using the riders personally identifiable information., this means that you won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the cyclistic service area or if they have purchased multiple single passes.

Data Organization and Description
Creating a folder with the name  Cyclistic Exercise
Download a 12 months data set, by extract the Zip files  from September 2021- September 2022.
Each file contains 12 to 13 columns containing rider id, ridership type , location etc.



PROCESS

In this step I choose to use SQL for data cleaning , because of the limitation from excel,  I performed the analysis by verifying the number of dataset I need for this case study , 6 million + rows was verified, I removed all null data and selected the rows I needed for the analysis to avoid deviating from the business task.

I used MySQL, to combine the 12 months dataset into one table,
Firstly I imported all the 12 months dataset into MySQL.  

Created a table called dbo.bike_years using the CREATE TABLE FUNCTION.
The INSERT, UNION, SELECT was used to combine the 12 different data set into the existing table  dbo.bike_years which resulted to a total of 6 million + rows.(6,584,382)
During this process I selected the specific columns needed to answer the stakeholders question
 
 

 
 
MySQL code for data can be found here
 
ANALYZE

After the Data cleaning step, I continued with the analysis process where I performed descriptive analysis, performed calculations and identify trends and relationships that answers the business questions.

This analysis returns the ride_length in minutes for each day categorized by each rideable type.
 
 
 
 
 

 


MySQL code for data can be found here



 
SHARE

I will be creating an interactive dashboard and a power point presentation to clearly share my insights with the stakeholders.
 
Follow this link for an interactive dashboard 

The Insights
The most Popular time of the year
The statistical exploration of the dataset showed that the month of July both for members and casuals made more trips, this can be related to the fact that July is a summer month and most of the riders rents the bike for leisure purposes.


 
 

Casual Riders

The cyclitic entertain more casual riders during weekends (Sunday and Saturday), the casuals first renting is always in the morning from the 10 am but on weekdays the peak renting time is from 4pm - 6pm and can be deduced that most casual riders prefer to ride cyclitic bike back home instead of taking a taxi. Since the riders mostly rent on weekends, this might be due to the fact that the casual riders mostly make sport trips, errand or even leisure trips

 


Member Riders
Converting casuals to member-ship riders would be a great deal for cyclistic bike share, Member riders takes trips  during weekdays than weekends, this means that the  riders that opt for the membership subscription are mostly people that got a job,  a business or are students, because they record a good number  of riders at the early hours of the day, and records its peak at 5pm which can be deduced  that the riders makes use of the bike to commute from work or go for their night shifts. 
 

 
ACT AND RECOMMENDATIONS

Having identified some trends the recommendations will not be focused on attracting new customers even though the pricing flexibility attracts new customers, but it will be focused on how to maximize the number of annual members in order to bring future growth by converting casual riders to annual members. 
As a Junior Data Analyst, I will be giving these 3 possible recommendations.
 
1.	Developing A Digital Marketing Campaign Strategy Partnership: According to the analysis, casual riders rent bikes on weekends for the purpose of likely touring the city or engage in other leisure activities. This can be a pointer for cyclistic bike to partner with local tourist centers and parks, place an advertisement on their platform or website, and also leverage other digital marketing platforms that can have perks such as a rider will be eligible to convert to an annual member If the rider has completed a certain number of rides on the casual subscription card, this will persuade some of the casual riders in this category to subscribe to annual membership.


2.	Notifications And Email Reminders: 
This strategy will not only notify eligible casual riders for the discounted membership subscription, but will also notify all casual riders that there is a chance to opt for a discounted membership subscription if you complete a certain number of rides, which will increase the rate at which casual riders rent bikes, as well as persuade non-eligible to meet the required criteria, and the notification should come frequently during weekends.

3.	Creating A Free Membership Pass on Weekends:
Finally, because casual riders rent mostly on weekends, it would be interesting if cyclistic issued a free membership pass between 4pm and 5pm with unlimited rides on weekends, as this could persuade casual riders to subscribe to an annual membership subscription, and it would not cause any loss to cyclistic bike share because member riders rarely make trips on weekends.
