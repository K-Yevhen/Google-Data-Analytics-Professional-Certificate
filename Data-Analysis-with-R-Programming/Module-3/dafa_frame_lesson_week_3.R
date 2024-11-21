library("tidyverse")

names <- c("Mark", "Alex", "Ivan", "Peter")
age <- c(18, 23, 20, 10 )

people <- data.frame(names, age)

head(people)
str(people)
glimpse(people)
colnames(people)

mutate(people, age_in_20 = age + 20)

# new data frame
fruit <- c("Apple", "Pear", "Lichi", "Banana", "Pomegranade")
fruit_ranks <- c("3", "1", "2", "4", "5")

fruits <- data.frame(fruit, fruit_ranks)

head(fruits)
glimpse(fruits)
str(fruits)

mutate(fruits, avg_rank = median(fruit_ranks))