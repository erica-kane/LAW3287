library(openxlsx)
library(dplyr)

data = read.xlsx('data.xlsx')

data %>% 
  mutate(inc_std = case_when(inc_per == "Week" ~ inc_am,
                             inc_per == "Week (topcoded)" ~ inc_am,
                             inc_per == "Two weeks" ~ inc_am / 2,
                             inc_per == "Month" ~ inc_am / 4,
                             inc_per == "Year" ~ inc_am / 52))