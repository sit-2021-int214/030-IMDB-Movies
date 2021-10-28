install.packages("tidyverse")
library(tidyverse)
library(lubridate)

SuperStore <-read.csv("https://raw.githubusercontent.com/sit-2021-int214/030-IMDB-Movies/main/assignment/HW04/HW04_63130500154/train.csv")

View(SuperStore)
glimpse(SuperStore)

SuperStore$Order.Date <- as.Date(dmy(SuperStore$Order.Date))
SuperStore$Ship.Date <- as.Date(dmy(SuperStore$Ship.Date))

SuperStore %>% distinct(Customer.Name)

SuperStore %>% group_by(Ship.Mode) %>% count(Ship.Mode, sort = TRUE)

SuperStore %>% select(Product.Name, Sales) %>% group_by(Product.Name) %>% summarise(Sales = sum(Sales)) %>% arrange(desc(Sales)) %>% head(5)

SuperStore %>% filter(City == 'Akron') %>% count(Sub.Category, sort = TRUE) %>% head(State, n = 5)

SuperStore %>% select(Customer.Name, Order.Date, Sub.Category) %>% filter(Order.Date == as.Date("2018-01-01"))

SuperStore %>% mutate(month = month(Order.Date, label = TRUE, abbr = FALSE)) %>% group_by(month) %>% summarise(Sales = sum(Sales))

SuperStore %>% filter(between(Ship.Date, as.Date("2016-01-01"), as.Date("2017-01-01"))) %>%  group_by(Category) %>% count(Sub.Category, sort = TRUE) %>% head(3)

SuperStore %>%  mutate(year = year(Ship.Date)) %>% ggplot(aes(x = year)) + geom_bar(fill = "#99CC99") + ggtitle("Number of shiped item by year") + xlab("Year") + ylab("Number")

SuperStore %>% mutate(year = year(Order.Date)) %>% group_by(year) %>% summarise(total_Sales = sum(Sales)) %>% ggplot(aes(x = year, y = total_Sales, )) + geom_bar(fill="#D292D1", stat = "identity") + scale_y_continuous(labels = scales::unit_format(unit = "K" , scale = 1e-3)) + ggtitle("Count of State") + xlab("Year") + ylab("Number")

