# Cyclistic Bike-Sharing
This repository contains capstone project of Google Data Analytics course - Case Study 1: Cyclistic Bike-Sharing.

## About the company
**Cyclistic** is a bike-sharing company located in Chicago and has been operating since 2016. The company has a large cycling network with total 692 stations across the city and 5,824 bicycles equipped with lock and geotracking tool. There are 2 types of memberships available for users: casual rider and annual member.

## Scenario
The analyst team wants to understand how casual riders and annual members use Cyclistic bikes differently. From the insight, the team will design a new marketing strategy to convert casual riders into annual members.

## Datasets
For this project, I use 1-year Cyclistic riding data from November 2021 to October 2022. Datasets are available in this [link](https://divvy-tripdata.s3.amazonaws.com/index.html).

## Tools
I use 3 tools to complete this project:
1. **R** to load, clean, transform, and analyze data.
2. **Microsoft Excel** to save outputs from R and create tables.<br />
3. **Microsoft Power BI** to create visualization and report. <br />Actually, we should use **Tableau** for this project because that is the visualization tool taught in this course. But based on my experience, I prefer using Power BI. Also, for visualization and report, there is no much difference between Tableau and Power BI.

## R Code
Because the size of each dataset is quite large - more than 100 MB for each monthly dataset, so I analyzed each dataset separately in each R-file. At the end, there are 12 R-files contain analysis for each month. But, I only upload 1 R-file here because the code in files are same except for dataset file name.

#### Libraries
I use 2 libraries for this analysis:
* `tidyverse` for general analysis
* `lubridate` for date/time analysis.

## Insight & Reports
### Tables (Excel)
![Total Rides per Month](https://github.com/salmiah-ls/Cyclistic-Bike-Sharing/blob/main/images/table_total_rides.png)
![Membership per Month](https://github.com/salmiah-ls/Cyclistic-Bike-Sharing/blob/main/images/table_membership.png)
![Average Ride Time](https://github.com/salmiah-ls/Cyclistic-Bike-Sharing/blob/main/images/table_avg_ride_time2.png)
<br /><br />
![Classic Bike](https://github.com/salmiah-ls/Cyclistic-Bike-Sharing/blob/main/images/table_classic_bike.png)
![Electric Bike](https://github.com/salmiah-ls/Cyclistic-Bike-Sharing/blob/main/images/table_electric_bike.png)
![Docked Bike](https://github.com/salmiah-ls/Cyclistic-Bike-Sharing/blob/main/images/table_docked_bike.png)
<br /><br />

### Charts (Power BI)
<li>Total Rides based on Membership and Bike Type</li>
<img src="https://github.com/salmiah-ls/Cyclistic-Bike-Sharing/blob/main/images/chart_total_rides.png"></img>
<li>Amount of Bike Type based on Membership</li>
<img src="https://github.com/salmiah-ls/Cyclistic-Bike-Sharing/blob/main/images/bike_type.png"></img>
<li>Bike Type Percentage for 1 Year based on Membership</li>
<img src="https://github.com/salmiah-ls/Cyclistic-Bike-Sharing/blob/main/images/bike_type_percentage.png"></img>

### Tables (Power BI)
<li>Favorite Start/End Stations based on Membership</li>
<img src="https://github.com/salmiah-ls/Cyclistic-Bike-Sharing/blob/main/images/table2_start_end_stations.png"></img>
<li>Average Ride Time (in minutes) and Favorite Start/End Time based on Membership</li>
<img src="https://github.com/salmiah-ls/Cyclistic-Bike-Sharing/blob/main/images/table2_start_end_avg_time.png"></img>

### Insight
- In general, number of member-users was larger than casual-users, except in summer months. As shown in the table and chart above, in July 2022, number of casual-users was only slightly lower than number of member-users.
- Number of casual-users reached its peak during summer months: June, July (maximum) and August.
- There were 2 types of bike for member-users: classic and electric; while casual users had 3 options: classic, electric, and docked.
- Average ride-time for casual-users was longer than member-users. Casual-users rode their bike for 23 to 33 minutes, while member-users only for 11 to 13 minutes.
- For casual-users, their favorite start and end station was Streeter Dr and Grand Ave; while for member-users, it varied based on months.
- Both casual-users and member-users has similar favorite for start and end hour i.e. at 17 p.m. Since their average ride-time was less than 1 hour, so most of the users rode their bike starting at 17.00 p.m and finished before 18.00 p.m.

## Action - Marketing Strategy
- Based on analysis above, we can see that casual-users reached maximum number at summer time, from June, July and August; they started and ended their rides at Streeter Dr and Grand Ave Station; between 17.00 p.m to 18.00 p.m.
- Therefore Cyclistic Company should make event to promote the benefit of membership to these casual-users on either June, July (best month), or August, in Streeter Dr and Grand Ave Station, at 17.00 p.m. to 18.00 p.m.

## Further Analysis
### <li>20 Most Popular Start Station</li> 
<img src="https://github.com/salmiah-ls/Cyclistic-Bike-Sharing/blob/main/images/start_stations_top20.png" width="800"><br />
### <li>Popular Start Time</li>
<img src="https://github.com/salmiah-ls/Cyclistic-Bike-Sharing/blob/main/images/start_time_all.png" width="800"></img>
