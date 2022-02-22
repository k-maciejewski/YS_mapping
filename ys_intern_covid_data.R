# create and clean COVID-19 data
# for Young Scholars intern projects July 2021
# Attribute to: "COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University" 
# or "JHU CSSE COVID-19 Data" for short, and the url: https://github.com/CSSEGISandData/COVID-19.
# Kaitlin Maciejewski

library(tidyverse)

us_covid_confirmed <- read.csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_US.csv") %>% 
  janitor::clean_names() %>% 
  pivot_longer(cols = starts_with("x"), # pivot to longer form on all columns starting with x (dates)
               names_to = c("x","date"), # separate into two columns to remove leading x
               names_sep = "x",
               values_to = "confirmed") %>% # the values in each old column will now be in a column called "confirmed"
  select(-x) %>% # removed the extra column
  separate(col = date,
           into = c("month", "day", "year"), # separate month, day, year, by "_"
           sep = "_") %>% 
  mutate(yr20 = paste0("20", year), # prefix of 20xx for all years
  date = as.Date(ISOdate(year = yr20, month = month, day = day))) # concatenate back and create as a date formatted column


us_covid_deaths <- read.csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_US.csv") %>% 
  janitor::clean_names() %>% 
  pivot_longer(cols = starts_with("x"),
               names_to = c("x","date"),
               names_sep = "x",
               values_to = "deaths") %>% # call this one deaths instead
  select(-x) %>% 
  separate(col = date,
           into = c("month", "day", "year"),
           sep = "_") %>% 
  mutate(yr20 = paste0("20", year), 
         date = as.Date(ISOdate(year = yr20, month = month, day = day)))

us_covid_joined <- left_join(us_covid_confirmed, us_covid_deaths) # join them all together

write.csv(x = us_covid_joined, 
          file = here::here("..", "us_covid_joined_07062021.csv"))
