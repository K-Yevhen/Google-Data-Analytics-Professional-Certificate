---
  title: 'C7M4L2A1: You and GGPlot'
---
library(ggplot2)
  
# importing data
hotel_bookings <- read_csv("hotel_bookings.csv")

# exploring
head(hotel_bookings)
colnames(hotel_bookings)

ggplot(data=hotel_bookings) + geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_week_nights , y = children))