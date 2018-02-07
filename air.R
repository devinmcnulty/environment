df <- read.csv("C:/Users/devin/Documents/environment/EPS_07022018074319080.csv")

library(dplyr)
library(ggplot2)
library(lubridate)
library(knitr)
library(purrr)
library(tidyr)
library(stringr)


df %>%
  ggplot(aes(x = Country, y = Value)) +
  geom_bar(stat="identity")
