# import library
library(tidyverse)
library(lubridate)

# load data
ride_data <- read.csv('202111-divvy-tripdata.csv')
glimpse(ride_data)

# convert datatype in column 'started_at' and 'ended_at' into datetime
ride_data$started_at <- as.POSIXct(ride_data$started_at)
ride_data$ended_at <- as.POSIXct(ride_data$ended_at)

# create dataset for member users
member_users <- ride_data %>% filter(member_casual == 'member')

# create dataset for casual users
casual_users <- ride_data %>% filter(member_casual == 'casual')



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
load('2021_11_start_station_count.rda')


# count start_time
options(max.print = 12)   # display output only 6 rows
ride_data %>% count(start_hour = hour(ride_data$started_at), sort = TRUE)

# save into dataframe
start_time_count <- ride_data %>% count(start_hour = hour(ride_data$started_at))
View(start_time_count)
save(start_time_count, file = '2021_11_start_time_count.rda')
load('2021_11_start_time_count.rda')


# count end_station_id, sort ascending
options(max.print = 18)   # display output only 6 rows
ride_data %>% count(end_station_id, end_station_name, sort = TRUE)

# save into dataframe
end_station_count <- ride_data %>% count(end_station_id, end_station_name)
View(end_station_count)
save(end_station_count, file = '2021_11_end_station_count.rda')
load('2021_11_end_station_count.rda')


# count end_time
options(max.print = 12)   # display output only 6 rows
ride_data %>% count(end_hour = hour(ride_data$ended_at), sort = TRUE)

# save into dataframe
end_time_count <- ride_data %>% count(end_hour = hour(ride_data$ended_at))
View(end_time_count)
save(end_time_count, file = '2021_11_end_time_count.rda')
load('2021_11_end_time_count.rda')



####################
### CASUAL USERS ###
####################

# calculate mean of ride time
mean(casual_users$ended_at - casual_users$started_at)
mean(casual_users$ended_at - casual_users$started_at)/60  # mean ride time in minutes

# count bicycle type
casual_users %>% count(rideable_type)


# count start_station_id, sort desc
options(max.print = 18)   # display output up to 6 rows
casual_users %>% count(start_station_id, start_station_name, sort = TRUE)

# save into dataframe
cu_start_station_count <- casual_users %>% count(start_station_id, start_station_name)
View(cu_start_station_count)
save(cu_start_station_count, file = '2021_11_cu_start_station_count.rda')
load('2021_11_cu_start_station_count.rda')


# count end_station_id, sort descending
options(max.print = 18)   # display output up to 6 rows
casual_users %>% count(end_station_id, end_station_name, sort = TRUE)

# save into dataframe
cu_end_station_count <- casual_users %>% count(end_station_id, end_station_name)
View(cu_end_station_count)
save(cu_start_station_count, file = '2021_11_cu_end_station_count.rda')
load('2021_11_cu_end_station_count.rda')


# count start_time
options(max.print = 12)   # display output only 6 rows
casual_users %>% count(start_hour = hour(casual_users$started_at), sort = TRUE)

# save into dataframe
cu_start_time_count <- casual_users %>% count(start_hour = hour(casual_users$started_at))
View(cu_start_time_count)
save(cu_start_time_count, file = '2021_11_cu_start_time_count.rda')
load('2021_11_cu_start_time_count.rda')


# count end_time
options(max.print = 12)   # display output only 6 rows
casual_users %>% count(end_hour = hour(casual_users$ended_at), sort = TRUE)

# save into dataframe
cu_end_time_count <- casual_users %>% count(end_hour = hour(casual_users$ended_at))
View(cu_end_time_count)
save(cu_end_time_count, file = '2021_11_cu_end_time_count.rda')
load('2021_11_cu_end_time_count.rda')



####################
### MEMBER USERS ###
####################

# calculate mean of ride time
mean(member_users$ended_at - member_users$started_at)
mean(member_users$ended_at - member_users$started_at)/60  # mean ride time in minutes

# count bicycle type
member_users %>% count(rideable_type)


# count start_station_id, sort desc
options(max.print = 18)   # display output only 6 rows
member_users %>% count(start_station_id, start_station_name, sort = TRUE)

# save into dataframe
mu_start_station_count <- member_users %>% count(start_station_id, start_station_name)
View(mu_start_station_count)
save(mu_start_station_count, file = '2021_11_mu_start_station_count.rda')
load('2021_11_mu_start_station_count.rda')


# count end_station_id, sort desc
options(max.print = 18)   # display output only 6 rows
member_users %>% count(end_station_id, end_station_name, sort = TRUE)

# save into dataframe
mu_end_station_count <- member_users %>% count(end_station_id, end_station_name)
View(mu_end_station_count)
save(mu_end_station_count, file = '2021_11_mu_end_station_count.rda')
load('2021_11_mu_end_station_count.rda')


# count start_time
options(max.print = 12)   # display output only 6 rows
member_users %>% count(start_hour = hour(member_users$started_at), sort = TRUE)

# save into dataframe
mu_start_time_count <- member_users %>% count(start_hour = hour(member_users$started_at))
View(mu_start_time_count)
save(mu_start_time_count, file = '2021_11_mu_start_time_count.rda')
load('2021_11_mu_start_time_count.rda')


# count end_time
options(max.print = 12)   # display output only 6 rows
member_users %>% count(end_hour = hour(member_users$ended_at), sort = TRUE)

# save into dataframe
mu_end_time_count <- member_users %>% count(end_hour = hour(member_users$ended_at))
View(mu_end_time_count)
save(mu_end_time_count, file = '2021_11_mu_end_time_count.rda')
load('2021_11_mu_end_time_count.rda')