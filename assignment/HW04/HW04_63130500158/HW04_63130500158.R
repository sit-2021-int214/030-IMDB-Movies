install.packages("tidyverse")
library(tidyverse)

Superstore <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/030-IMDB-Movies/main/assignment/HW04/HW04_63130500158/SuperstoreSales.csv")
View(Superstore)
glimpse(Superstore)

#Part 2
Superstore %>%
  select(`Sub-Category`) %>%
  mutate(`Sub-Category` = fct_lump(`Sub-Category`, n = 5)) %>%
  count(`Sub-Category`)

#Part 3
Article1  <- Superstore %>%
  select(`Product Name`) %>%
  filter(Superstore$State == "Colorado",Superstore$Category == "Technology")
print(Article1)
  
Article2 <- Superstore %>%
  select(`Product Name`,`Order Date`) %>%
  filter(`Order Date` == "14/02/2016" | `Order Date` == "13/04/2017") %>%
  arrange(desc(`Order Date`)) 
print(Article2)

Article3 <- Superstore %>% select(`City`) %>%
  count(`City`,sort = TRUE) %>%
  head(`City`,n = 5) 
names(Article3)[2] <- 'Count_of_City'
print(Article3)

Article4 <- Superstore %>% 
  select(`Category`,`Sales`) %>% 
  group_by(`Category`) %>% 
  summarise(min = min(`Sales`),max = max(`Sales`))
print(Article4)

Article5.1 <- Superstore %>% 
  select(`Customer Name`) %>% 
  filter(Superstore$Sales == max(Superstore$Sales))

Article5.2 <- Superstore %>%
  filter(`Customer Name` == "Sean Miller") %>%
   summarize(mean(`Sales`))
print(Article5.2)  

Article6 <- Superstore %>%
  select(`Customer Name`) %>% 
  group_by(`Customer Name`) %>% 
  count(Superstore$`Ship Mode`,sort = TRUE) %>%
  head(Superstore$`Ship Mode`,n = 5) 
  names(Article6)[2] <- 'Ship Mode'
  names(Article6)[3] <- 'Count_of_mode'
print(Article6)
  
#Part 4
Graph1 <- Superstore %>% 
  mutate(`Sub-Category` = fct_lump(`Sub-Category`, n = 7))  %>% 
  ggplot(aes(x=`Sub-Category`)) + 
  geom_bar(fill="#C1D7D0") + ggtitle("Amount of Sub-Category") + ylab("Sum of Sub-Category")
print(Graph1)

Graph2 <- Superstore %>% 
  filter(Sales > 5000 ) %>% 
  ggplot(aes(x = Region , y=Sales)) + 
  geom_point(aes(color = Region) ) + 
  ggtitle ("The number of product price more than 5000 in each region.")
print(Graph2) 



