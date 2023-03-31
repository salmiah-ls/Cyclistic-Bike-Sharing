# import library
library(tidyverse)
library(lubridate)

# load data
ride_data <- read.csv('202111-divvy-tripdata.csv')
glimpse(ride_data)

# convert datatype in column 'started_at' and 'ended_at' into datetime
ride_data$started_at <- as.POSIXct(ride_data$started_at)
ride_data$ended_at <- as.POSIXct(ride_data$ended_at)

# create dataset for member users and save the dataframe for later usage
member_users <- ride_data %>% filter(member_casual == 'member')
save(member_users, file = 'member_users_2022_10.rda')

# create dataset for casual users and save the dataframe for later usage
casual_users <- ride_data %>% filter(member_casual == 'casual')
save(casual_users, file = 'casual_users_2022_10.rda')



#################
### ALL USERS ###
#################

# calculate mean of ride time
mean(ride_data$ended_at - ride_data$started_at)
mean(ride_data$ended_at - ride_data$started_at)/60  # mean ride time in minutes

# count membership type
ride_data %>% count(member_casual)

# count bicycle type
ride_data %>% count(rideable_type)


# count start_station_id, sort ascending
options(max.print = 18)   # display output only 6 rows
ride_data %>% count(start_station_id, start_station_name, sort = TRUE)

# save into dataframe for futher analysis
start_station_count <- ride_data %>% count(start_station_id, start_station_name)
View(start_station_count)
save(start_station_count, file = '2021_11_start_station_count.rda')


# count end_station_id, sort ascending
options(max.print = 18)   # display output only 6 rows
ride_data %>% count(end_station_id, end_station_name, sort = TRUE)

# save into dataframe
end_station_count <- ride_data %>% count(end_station_id, end_station_name)
View(end_station_count)
save(end_station_count, file = '2021_11_end_station_count.rda')


# count start_time
options(max.print = 12)   # display output only 6 rows
ride_data %>% count(start_hour = hour(ride_data$started_at), sort = TRUE)

# save into dataframe
start_time_count <- ride_data %>% count(start_hour = hour(ride_data$started_at))
View(start_time_count)
save(start_time_count, file = '2021_11_start_time_count.rda')


# count end_time
options(max.print = 12)   # display output only 6 rows
ride_data %>% count(end_hour = hour(ride_data$ended_at), sort = TRUE)

# save into dataframe
end_time_count <- ride_data %>% count(end_hour = hour(ride_data$ended_at))
View(end_time_count)
save(end_time_count, file = '2021_11_end_time_count.rda')
