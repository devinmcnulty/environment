df <- read.csv("C:/Users/devin/Documents/environment/EPS_07022018074319080.csv")

library(dplyr)
library(ggplot2)
library(lubridate)
library(knitr)
library(purrr)
library(tidyr)
library(stringr)

slim_df <-
  df %>%
  select(Country, Year, Value) %>%
  group_by(Country, Year) %>%
  summarise(Avg_Value = mean(Value))  %>%
  filter(Country == "Denmark")
  



slim_df %>%
  ggplot(aes(x = Country, y = Avg_Value)) +
  geom_bar(stat="identity")


slim_df %>%
  ggplot(aes(x = Year, y = Avg_Value)) +
  geom_line()

