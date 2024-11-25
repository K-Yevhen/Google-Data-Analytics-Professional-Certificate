---
  title: "Lesson 3: Cleaning data"
---

install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

# loading libraries for data cleaning
library(tidyverse)
library(skimr)
library(janitor)

# importing csv data
booking_df <- read.csv("hotel_bookings.csv")

# exploring data
head(booking_df)
str(booking_df)
colnames(booking_df)
glimpse(booking_df)
skim_without_charts(booking_df)

# selecting specific columns for analyzing
trimmed_df <- booking_df %>%
  select('hotel', 'is_canceled', 'lead_time') %>%
  rename(hotel_type = hotel)

head(trimmed_df)
skim_without_charts(trimmed_df)


# selecting columns and combining
combining_df <- booking_df %>%
  select('arrival_date_year', 'arrival_date_month') %>%
  unite('arrival_month_year',c('arrival_date_month', 'arrival_date_year'), sep = " ")

head(combining_df)

combining_v2 <- booking_df %>%
  mutate(guests = adults + children + babies)

head(combining_v2)


# summarizing

summarizing <- booking_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))

head(summarizing)