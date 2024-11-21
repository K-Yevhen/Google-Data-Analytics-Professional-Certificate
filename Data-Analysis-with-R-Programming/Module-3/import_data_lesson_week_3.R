library(tidyverse)

booking_df <- read_csv("hotel_bookings.csv")

head(booking_df)
str(booking_df)
colnames(booking_df)

new_df <- select(booking_df, 'adr', adults)

head(new_df)

mutate(new_df, total = `adr` / adults)
