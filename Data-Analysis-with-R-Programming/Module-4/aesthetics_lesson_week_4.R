---
  title: 'Lesson 3: Aesthetics and Visualizations'
---

library(ggplot2)

hotel_bookings <- read_csv("hotel_bookings.csv")

head(hotel_bookings)
colnames(hotel_bookings)

ggplot(data = hotel_bookings) + geom_bar(mapping=aes(distribution_channel)) + facet_wrap(~deposit_type)