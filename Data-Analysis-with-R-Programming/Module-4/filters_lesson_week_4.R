---
  title: 'Lesson 3: Filters and Plots'
---
  
library(ggplot2)
library(tidyverse)

hotel_bookings <- read_csv("hotel_bookings.csv")

head(hotel_bookings)
colnames(hotel_bookings)

ggplot(data = hotel_bookings) + geom_point(mapping = aes(x = lead_time, y = children))
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = hotel, fill = market_segment))
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = hotel)) + facet_wrap(~market_segment)

onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="" & 
                                  hotel_bookings$market_segment==""))

View(onlineta_city_hotels)

onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

View(onlineta_city_hotels_v2)

ggplot(data = onlineta_city_hotels_v2) +
  geom_point(mapping = aes(x = lead_time, y = children))