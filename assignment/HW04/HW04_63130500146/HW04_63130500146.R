#library
library(readr)
library(ggplot2)
library(dplyr)
library(forcats)

#dataset
com_sci <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/prog_book.csv")
#explore
glimpse(com_sci)

#Part2
fct_count(factor(com_sci$Type))

#Part3
#1
# ??????????????????????????????????????????????????????????????????????????????????????????????????????
com_sci$Price <- replace(com_sci$Price , 1:271 , round(com_sci$Price , 0))

Average_Price <- com_sci %>% group_by(Type)  %>%  summarise(mean(Price , na.rm = TRUE))
names(Average_Price)[2] <- 'Average'
Average_Price

#2
No_Reviews <-com_sci %>% filter(Reviews == 0) %>% select(Book_title , Type , Price)
print(No_Reviews)

#3
High_Rating <- com_sci %>% 
  filter(Rating > 3.5 & Reviews > 1000) %>% 
  select(Book_title , Description , Type , Price)
print(High_Rating)

#4
com_sci %>% filter(Number_Of_Pages > 3000) %>% select(Book_title , Number_Of_Pages , Type , Price)

#5
top_10 <- com_sci %>% arrange(desc(Rating)) %>% select(Book_title , Type , Price) %>% head(10)
print(top_10)

#6
Avg_Rating <- com_sci %>% group_by(Type) %>% summarise(mean(Rating , na.rm = TRUE)) 
names(Avg_Rating)[2] <- 'Average'

Avg_Rating$Average<-round(Avg_Rating$Average , 2)

count <- fct_count(factor(com_sci$Type))
names(count)[1] <- 'Type'
names(count)[2] <- 'count'

merge(Avg_Rating , count) 


#Part4
#1
Type <- com_sci %>% ggplot(aes( y = Type)) + geom_bar() 
Type <-Type + geom_text(aes(label = ..count..) , stat = "count" , position =  position_stack(vjust = 0.5) , color = "white" )

Type 


#2
page_graph <- com_sci %>% 
  filter(Number_Of_Pages < 3000 ) %>% 
  ggplot(aes(x = Price , y=Number_Of_Pages)) + geom_point(aes(color = Type), position = 'jitter' ) + ylab("Pages")

page_graph
