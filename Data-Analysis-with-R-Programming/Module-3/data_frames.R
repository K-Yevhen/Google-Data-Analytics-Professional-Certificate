library(ggplot2)
library(tidyverse)

# loading data
data(diamonds)

# showing data specifics 
View(diamonds)
head(diamonds)
str(diamonds)
colnames(diamonds)

mutate(diamonds, carat_2 = carat * 100)