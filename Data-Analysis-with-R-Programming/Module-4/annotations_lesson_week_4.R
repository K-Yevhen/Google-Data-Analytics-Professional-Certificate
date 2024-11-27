---
  title: 'Lesson 4: Annotating and Saving'
---

library(ggplot2)
library(tidyverse)

hotel_bookings <- read_csv("hotel_bookings.csv")

# exploring data
head(hotel_bookings)
colnames(hotel_bookings)
str(hotel_bookings)
glimpse(hotel_bookings)

# data viz of hotel bookings
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title = "Market segments between city hotels")

# variable about time frame
mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

# final version of viz <- added specific info into plot
ggplot(data = hotel_bookings) + 
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) + 
  theme(axis.text.x = element_text(angle = 45))  +
  labs(title = "Comparison of market segments by hotel type for hotel bookings",
       caption = paste0("Data from: ", mindate, " to ", maxdate),
       x="Market Segment", y="Number of Bookings")

# saving plots
ggsave('hotel_booking_chart.png', width=7,
       height=7)
