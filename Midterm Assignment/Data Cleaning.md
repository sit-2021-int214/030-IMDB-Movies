# Data Cleaning and Data Transformation
## ขั้นตอนที่ 0 : ทำการเรียกใช้ตัวlibraryต่างๆ เเละ ทำการดาวห์โหลด dataset
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

##  ขั้นตอนที่ 1 : Data Transformation with dplyr
### Checking the types of values
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
### Changing the types of values and Handling missing data and outliers
```{R}
imdb$Released_Year <- replace(imdb$Released_Year,imdb$Released_Year == "PG", 1995) %>% as.numeric()
```
### Checking duplicate data
```{R}
imdb %>% duplicated() %>% table()
```

## save as CSV
```{R}
write.csv(imdb,"C:/Users/66830/Desktop/imdb_top_1000_cleaning.csv", row.names=FALSE)
```