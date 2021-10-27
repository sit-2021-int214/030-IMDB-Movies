install.packages("dplyr")
install.packages("readr")
install.packages("stringr")
install.packages("ggplot2")
lnstall.packages("assertive")
install.packages("tidyverse")

library(dplyr)
library(readr)
library(stringr)
library(ggplot2)
library(assertive)
library(DescTools)
library(tidyverse)

SuperStore <-read.csv("https://raw.githubusercontent.com/sit-2021-int214/030-IMDB-Movies/main/assignment/HW04/HW04_63130500154/train.csv")
View(SuperStore)

glimpse(SuperStore)


SuperStore[3,7]
SuperStore[1:4,1:3]
 
Q1 <- SuperStore %>% select(Customer.Name,State,Sales) %>% 
  filter(SuperStore$State =="Indiana",Sales>=1000) %>%
  arrange(desc(Sales))
print(Q1)

Q2 <- SuperStore %>% select(Customer.Name,Category,Sub.Category) %>%
  filter(Category =='Technology',Sub.Category=='Phones') %>%
  head(Q2,n=10)
print(Q2)

Q3 <- SuperStore %>% select(Customer.Name,Order.Date,Ship.Date) %>%
  filter(Order.Date =='01/04/2017',SuperStore$Ship.Date =='03/04/2017')
print(Q3)

Q4 <- SuperStore %>% select(Customer.Name) %>%
  filter(Customer.Name == 'Adam Shillingsburg') %>%
  count(Customer.Name) 
  names(Q4)[2] <-'Count_of_Buy'
print(Q4)

Q5 <- SuperStore %>% select(Customer.Name) %>%
  count(Customer.Name,sort = TRUE)%>%
  head(Q5,n=10)
  names(Q5)[2] <-'ranked' 
print(Q5)

Q6 <- SuperStore %>% select(Order.Date) %>%
  count(Order.Date,sort = TRUE) %>%
  head(Q6,n=3)
  names(Q6)[2] <-'Count_of_OrderDate'
  print(Q6)

bar1 <- SuperStore %>% head(20) %>% ggplot(aes(x=State)) + 
  geom_bar(fill="#f68060", alpha=.6, width=.4) + ggtitle("Count of State") + ylab("Sum of State")
  bar1

bar2 <- SuperStore %>% head(50)%>% ggplot(aes(x=Region)) + 
  geom_bar(fill="#f68060", alpha=.6, width=.4) + ggtitle("Count of Region") + ylab("Sum of Region") 
bar2

