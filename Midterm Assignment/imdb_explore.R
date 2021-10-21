#Libray
library(dplyr)
library(readr)
library(DescTools)

#Dataset
imdb <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/030-IMDB-Movies/main/Midterm%20Assignment/imdb_top_1000_cleaning.csv")
View(imdb)

#1.หนังแนวไหนที่ได้รับคะเเนน Metascore เท่ากับ  100
imdb_100_metascore <- imdb %>% 
  select(Meta_score, Genre, IMDB_Rating)%>%
  filter(Meta_score == 100)

print(imdb_100_metascore)

#2.หนังที่มี imdb rating ตั้งแต่ 9 ขึ้นไป ชื่ออะไรและออกฉายในปีไหน
imdb_rating9 <- imdb %>% 
  select(Series_Title, Released_Year, IMDB_Rating) %>%
  filter(IMDB_Rating >= 9)

print(imdb_rating9)

#3.ประเภทหนังที่ติด top 1000 มากที่สุด 3 อันดับแรก
Genre1 <- imdb %>% select(Genre) %>%
  count(Genre,sort = TRUE) %>%
  head(Genre,n=3)

names(Genre1)[2] <- 'Count_of_Genre'

print(Genre1)

#4.ปีไหนที่มีการปล่อยหนังมากที่สุด
Years <- imdb %>% count(Released_Year , sort = TRUE)  
names(Years)[2] <-'Count_of_year'

print(Years)

#5.ผู้กำกับที่กำกับหนังติด top 1000 มากที่สุดในช่วงนี้ปี 2010 - 2020 และทำรายได้เฉลี่ยเท่าไหร่
Direct <- imdb %>%
  filter( Released_Year > 2009  & Released_Year < 2021 ) %>%
  select(Director) %>%
  summarise(Mode(Director))

print(Direct)

Denis_10_15 <-imdb %>%
  filter(Director == "Denis Villeneuve" & Released_Year > 2009  & Released_Year < 2021) %>%
  select(Gross) %>% 
  summarise(mean(Gross, na.rm = TRUE))

print(Denis_10_15)

#6.ในช่วงศตวรรษที่ 20 และศตวรรษที่ 21 หนังแนวไหนที่ทำรายได้มากที่สุดในแต่ละศตววรษ
Genre19s <- imdb %>% 
  select(Released_Year , Gross , Genre)  %>% 
  arrange(desc(Gross)) %>% 
  filter(Released_Year >= 1901 & Released_Year < 2000 ) %>%
  head(Gross,n=1)

print(Genre19s)

Genre20s <- imdb %>% 
  select(Released_Year , Gross , Genre)  %>% 
  arrange(desc(Gross)) %>% 
  filter(Released_Year >= 2001 & Released_Year < 3000) %>% 
  head(Gross,n=1)

print(Genre20s)

#7.ในช่วงศตวรรษที่ 20 นักแสดงนำคนที่ 1 ใครมีผลงานมากที่สุด
T2000 <- imdb %>% select(Star1,Released_Year)%>%
  filter(Released_Year >= 2001 & Released_Year < 3000)%>%
  count(Star1,sort = TRUE) %>%
  head(Star1,n=1)

names(T2000)[2] <- 'Count_of_Movie'

print(T2000)

#8.นักแสดงนำที่ 1 กับผู้กำกับคู่ไหนที่ทำงานร่วมกันมากที่สุด ทั้งหมดกี่เรื่อง
starNumber1 <- imdb %>% select(Star1,Director) %>%
  count(Star1,Director,sort = TRUE)%>%
  head(Star1,n=1)

names(starNumber1)[3] <- 'Number of times'

print(starNumber1)
