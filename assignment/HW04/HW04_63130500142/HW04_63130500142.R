#Part 1: Explore the dataset
#Library
library(dplyr)
library(readr)
library(stringr)
library(ggplot2)

#Dataset
superStore <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")
glimpse(superStore)
View(superStore)

#Part 2: Learning function from Tidyverse
keepState <- superStore %>% select(State) %>% head(20)
str_count(keepState, "California")

#Part 3: Transform data with dplyr and finding insight the data
#1. สินค้าใดบ้างที่ทำยอดขายรวมได้ต่ำที่สุด 5 อันดับแรก
superStore %>% 
  select(`Product ID`, `Product Name`, Sales) %>%
  group_by(`Product ID`, `Product Name`) %>%
  summarise(Total_Sales = sum(Sales, na.rm = TRUE)) %>%
  arrange(Total_Sales) %>%
  head(5)

#2. จำนวนสินค้าแต่ละประเภทที่มีคนสั่งในวันที่ 01/03/2015
superStore %>% select(`Order Date`, Category) %>% filter(`Order Date` == "01/03/2015") %>% table()

#3. รัฐที่มียอดขายสินค้าประเภท Office Supplies รวมกันต่ำกว่า 1000
superStore %>% 
  filter(Category == "Office Supplies") %>%
  select(State, Category, Sales) %>%
  group_by(State) %>%
  summarise(Total_Sales = sum(Sales, na.rm = TRUE)) %>%
  filter(Total_Sales < 1000)

#4. คนที่สั่งซื้อสิ้นค้านิยมการจัดส่งสินค้าแบบใดมากที่สุด
superStore %>% select(`Ship Mode`) %>% table()

#5. 5 เมืองในรัฐ Pennsylvania ที่ซื้อสินค้าประเภท Furniture มากที่สุด 
superStore %>%
  filter(State == "Pennsylvania", Category == "Furniture") %>%
  select(City, Category) %>%
  group_by(City) %>%
  count(Category, sort = TRUE) %>%
  head(5)

#6. ยอดขายรวมของสิ้นค้าแต่ละ ประเภทย่อย มีทั้งหมดเท่าไร(เรียงจำนวนยอดขายจากมากไปน้อย)
superStore %>%
  select(`Sub-Category`, Sales) %>%
  group_by(`Sub-Category`) %>%
  summarise(Total_Sales = sum(Sales, na.rm = TRUE)) %>%
  arrange(desc(Total_Sales))

##Part 4: Visualization with GGplot2
#graph1
sales_sub_graph <- ggplot(superStore,aes(x=`Sub-Category`)) + 
  geom_bar(fill="#5CB3FF") + 
  ggtitle("Number of Sales Sub-Category") +
  xlab("Sub-Category") + 
  ylab("Number of sales")

#graph2
philly_pie <- data.frame(superStore %>% 
                           filter(State == "Pennsylvania", Category == "Furniture") %>%
                           select(City, Category) %>%
                           group_by(City) %>%
                           count(Category, sort = TRUE) %>%
                           head(5))

ggplot(philly_pie, aes(x = "", y = n, fill = City)) +
  geom_col(color = "black") +
  geom_text(aes(label = n),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y") +
  scale_fill_brewer() +
  theme(axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_rect(fill = "#ebf2ff"),
        plot.background = element_rect(fill = "#ebf2ff"),
        legend.background = element_rect(fill = "#ebf2ff"))
    