# Cyclistic Bike-Sharing
This repository contains capstone project of Google Data Analytics course - Case Study 1: Cyclistic Bike-Sharing.

## About the company
**Cyclistic** is a bike-sharing company located in Chicago and has been operating since 2016. The company has a large cycling network with total 692 stations across the city and 5,824 bicycles equipped with lock and geotracking tool. There are 2 types of memberships available for users: casual rider and annual member.

## Scenario
The analyst team wants to understand how casual riders and annual members use Cyclistic bikes differently. From the insight, the team will design a new marketing strategy to convert casual riders into annual members.

## Datasets
For this project, I use 1-year Cyclistic riding data from November 2021 to October 2022. Datasets are available in this [link](https://divvy-tripdata.s3.amazonaws.com/index.html).

## Tools
I use 2 tools to complete this project:
1. **R** to load, clean, transform, and analyze data.
2. **Microsoft Excel** to save outputs from R and create visualization.

## R Code
Because the size of each dataset is quite large - more than 100 MB for each monthly dataset -, so I analyzed each dataset separately in each R-file. At the end, there are 12 R-files contain analysis for each month, and 1 R-file contains analysis for 1 year. But, for monthly analysis, I only upload 1 R-file because the code in all R-files are same except for dataset file name.

#### Libraries
I use 2 libraries for this analysis `tidyverse` and `lubridate`.
