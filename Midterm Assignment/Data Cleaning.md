# Data Cleaning and Data Transformation
## ขั้นตอนที่ 0 : เรียกใช้ library และ data set
### Libray
```{R}
library(dplyr)
library(readr)
library(assertive)
```
### Dataset
```{R}
imdb <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/030-IMDB-Movies/main/Midterm%20Assignment/imdb_top_1000.csv")
```

##  ขั้นตอนที่ 1 : Checking the types of values
#### Released_Year เป็น type character ซึ่งเราต้องการเปลี่ยนให้เป็น type numeric
```{R}
is.character(imdb$Series_Title)

is.numeric(imdb$Released_Year)
assert_is_numeric(imdb$Released_Year)

is.character(imdb$Genre)

is.numeric(imdb$IMDB_Rating)

is.numeric(imdb$Meta_score)

is.character(imdb$Director)

is.character(imdb$Star1)

is.numeric(imdb$Gross)
```
##  ขั้นตอนที่ 2 : Changing the types of values and Handling missing data and outliers
### เนื่องจากในคอลัมน์ Released_Year มีข้อมูลหนังที่มีปีที่ออกฉายเป็น "PG" เราไปเช็ตมาแล้วว่าหนังเรื่องนั้นออกฉายเมื่อปี 1995 จึง replace เป็น 1995 แทน "PG" และเนื่องจาก Released_Year เป็น type character เราจึงเปลี่ยนเป็น type numeric แทน
```{R}
imdb$Released_Year <- replace(imdb$Released_Year,imdb$Released_Year == "PG", 1995) %>% as.numeric()
```
##  ขั้นตอนที่ 3 : Checking duplicate data
### ไม่มี duplicated data
```{R}
imdb %>% duplicated() %>% table()
```

## ขั้นตอนที่ 4 : Save as CSV
```{R}
write.csv(imdb,"C:/Users/66830/Desktop/imdb_top_1000_cleaning.csv", row.names=FALSE)
```
