# import library
library(tidyverse)
library(lubridate)

# load data
ride_data <- read.csv('202210-divvy-tripdata.csv')
head(ride_data)
glimpse(ride_data)

# convert datatype in column 'started_at' and 'ended_at' into datetime
ride_data$started_at <- as.POSIXct(ride_data$started_at)
ride_data$ended_at <- as.POSIXct(ride_data$ended_at)

# create dataset for member users
member_users <- ride_data %>% filter(member_casual == 'member')

# create dataset for casual users
casual_users <- ride_data %>% filter(member_casual == 'casual')


### ALL USERS ###
# count membership type
ride_data %>% count(member_casual)

# count bicycle type
ride_data %>% count(rideable_type)

# count start_station_id, sort ascending
options(max.print = 18)   # display output only 6 rows
ride_data %>% count(start_station_id, start_station_name, sort = TRUE)

# count end_station_id, sort ascending
options(max.print = 18)   # display output only 6 rows
ride_data %>% count(end_station_id, end_station_name, sort = TRUE)

# ride time
ride_time <- ride_data$ended_at - ride_data$started_at
mean(ride_time)
mean(ride_time)/60  # mean ride time in minutes


### CASUAL USERS ###
# count bicycle type
casual_users %>% count(rideable_type)

# count start_station_id
options(max.print = 18)   # display output up to 6 rows
casual_users %>% count(start_station_id, start_station_name, sort = TRUE)

# count end_station_id
options(max.print = 18)   # display output up to 6 rows
casual_users %>% count(end_station_id, end_station_name, sort = TRUE)

# ride time
cu_ride_time <- casual_users$ended_at - casual_users$started_at
mean(cu_ride_time)
mean(cu_ride_time)/60  # mean ride time in minutes


### MEMBER USERS ###
# count bicycle type
member_users %>% count(rideable_type)
View(member_users)

# count start_station_id
options(max.print = 18)   # display output up to 6 rows
member_users %>% count(start_station_id, start_station_name, sort = TRUE)

# count end_station_id
options(max.print = 18)   # display output up to 6 rows
member_users %>% count(end_station_id, end_station_name, sort = TRUE)

# ride time
mu_ride_time <- member_users$ended_at - member_users$started_at
mean(mu_ride_time)
mean(mu_ride_time)/60  # mean ride time in minutes
