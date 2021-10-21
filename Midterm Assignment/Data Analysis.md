# Data Analysis

## 1.) หาว่าหนังแนวไหนบ้างได้รับคะเเนน Metascore =100
### Code : 
```{R}
Genre_Metascore100 <- imdb %>% 
  select(Genre, Meta_score,)%>%
  filter(Meta_score == 100)
print(Genre_Metascore100)
```
### Result :Result : จะมีประเภทของหนังที่ได้รับคะเเนน Metascore  100 มี 
1. Crime, Drama 
2. Drama, Romance, War 
3. Mystery, Thriller 
4. Adventure, Biography, Drama  
5. Mystery, Romance, Thriller 
6. Drama, Mystery 
7. Drama, Mystery, Romance 
8. Drama, Film-Noi 
9. Drama, Film-Noir, Romance 

```{R}
   Genre                       		Meta_score
   <chr>                            		     <dbl>
 1 Crime, Drama                       	      100
 2 Drama, Romance, War                	      100
 3 Mystery, Thriller                  	      100
 4 Adventure, Biography, Drama                100
 5 Mystery, Romance, Thriller 	              100
 6 Drama, Mystery                             100
 7 Drama, Mystery, Romance                    100
 8 Drama                                      100
 9 Drama                                      100
10 Drama, Film-Noir                           100
11 Drama                                      100
12 Drama, Film-Noir, Romance                  100

```

## 2.) หนังที่มี imdb rating ตั้งแต่ 9 ขึ้นไป ชื่ออะไรและออกฉายในปีไหน 
### Code : 
```{R}
IMDB9 <- imdb %>% 
  select(Series_Title, Released_Year, IMDB_Rating) %>%
  filter(IMDB_Rating >= 9)
  print(IMDB9)
```
### Result : จะมีหนังที่ได้คะแนนตั้งแต่ 9 ขึ้นไป มี 1. The Shawshank Redemption ออกฉายในปี 1994
2. The Godfather: Part II ออกฉายในปี 1974 
3.The Godfather ออกฉายในปี 1972 
4.The Dark Knight ออกฉายในปี 2008
5. 12 Angry Men ออกฉายในปี 1957
```{R}
  Series_Title                                  Released_Year                   IMDB_Rating
    <chr>                                                 <dbl>                  <dbl>                 
1 The Shawshank Redemption	                               1994			              9.3     
2 The Godfather: Part II		                               1974			              9.0
3 The Godfather			                                       1972			              9.2
4.The Dark Knight			                                     2008			              9.0
5.12 Angry Men			                                       1957			              9.0

```

## 3.) ประเภทหนังที่ติด top 1000 มากที่สุด 3 อันดับแรก 
### Code : 
```{R}
Genre1 <- imdb %>% select(Genre) %>%
  count(Genre,sort = TRUE) %>%
  head(Genre,n=3) 
names(Genre1)[2] <- 'Count_of_Genre'
print(Genre1)
```
### Result :จะมีประเภท Drama ที่ติดมากที่สุดคือ 85 เรื่อง และลำดับที่ 2 คือ Drama, Romance มีทั้งหมด 37 เรื่อง และ Comedy, Drama ที่เป็นลำดับที่ 3 โดยมีทั้งหมด 35 เรื่อง
```{R}
 Genre           	  Count_of_Genre
  <chr>          		 <int>
1 Drama       	        85
2 Drama, Romance    	  37
3 Comedy, Drama         35
   
```

## 4.) ปีไหนที่มีการปล่อยหนังมากที่สุด 
### Code : 
```{R}
Years <- imdb %>% count(Released_Year , sort = TRUE)  
names(Years)[2] <-'Count_of_year'
print(Years)
```
### Result :ปีทึ่มีการฉายหนังมากที่สุดคือปี 2014 จำนวนทั้งหมด 32 เรื่อง และ ปี 2009 จำนวน 31 เรื่องตามลำดับ
```{R}
Released_Year	Count_of_year
       <dbl>		 <int>
 1	     2014		  32
 2	     2004			31
 3	     2009			29
 4	     2013			28
 5	     2016			28
 6	     2001			27
 7	     2006			26
 8	     2007			26
 9	     2015			25
10	     2012			24
# ... with 90 more rows
    
```
## 5.) ผู้กำกับที่กำกับหนังติด top 1000 มากที่สุดในช่วงนี้ปี 2010 -  2020 และทำรายได้เฉลี่ยเท่าไหร่
### Code : 
```{R}
Direct <- imdb %>%
  filter( Released_Year > 2009  & Released_Year < 2021 ) %>%
  select(Director) %>%
  summarise(Mode(Director))
print(direct)


Denis_10_15 <-imdb %>%
  filter(Director == "Denis Villeneuve" & Released_Year > 2009  & Released_Year < 2021) %>%
  select(Gross) %>% 
  summarise(mean(Gross, na.rm = TRUE))
print(Denis_10_15)

```
### Result : ผู้กำกับที่กำกับหนังติด top 1000 ในปี 2010 - 2020 คือ Denis Villeneuve
```{R}
 `Mode(Director)`
  <chr>           
1 Denis Villeneuve

### Result : โดยผู้กำกับที่มีชื่อว่า Denis Villeneuve กำกับหนังที่ ติด top 1000 ในปี 2010 - 2020 มีรายได้เฉลี่ย เท่ากับ 61,469,798 $
```{R}
`mean(Gross, na.rm = TRUE)`
                       <dbl>
1                   61469798.

```

## 6.) ในช่วงศตวรรษที่ 19 และศตวรรษที่ 20 หนังแนวไหนที่ทำรายได้มากที่สุดในแต่ละศตววรษ
### Code : 
```{R}
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
```
### Result : หนังประเภท Drama, Romance เป็นหนังที่ได้รับความนิยมมากที่สุดในศตรวรรษที่ 19
```{R}
Released_Year		          Gross			Genre         
       <dbl>			        <dbl>			<chr>         
1     1997		        659325379 	  Drama, Romance

### Result : หนังประเภท Action, Adventure, Sci-Fi เป็นหนังที่ได้รับความนิยมมากที่สุดในศตรวรรษที่ 20
```{R}
Released_Year		       Gross			    Genre                    
         <dbl>		    	<dbl>			    <chr>                    
1	       2015		       936662225 	   Action, Adventure, Sci-Fi

```

## 7.) ในช่วงศตวรรษที่ 20 นักแสดงนำคนที่ 1 ใครมีผลงานมากที่สุด
### Code : 
```{R} 
    T2000 <- imdb %>% select(Star1,Released_Year)%>%
  filter(Released_Year >= 2001 & Released_Year < 3000)%>%
  count(Star1,sort = TRUE) %>%
  head(Star1,n=1)
names(T2000)[2] <- 'Count_of_Movie'
print(T2000)
```
###Result : ในช่วงศตวรรษที่ 20 นักแสดงนำคนที่ 1 ที่มีผลงานมากที่สุด คือ Leonardo DiCaprio ซึ่งมีจำนวนทั้งหมด  8 ครั้ง
```{R}
Star1                          Count_of_Movie
  <chr>                         <int>
1 Leonardo DiCaprio              8

```

## 8.) นักแสดงนำที่ 1 กับผู้กำกับคู่ไหนที่ทำงานร่วมกันมากที่สุด ทั้งหมดกี่เรื่อง
### Code : 
```{R} 
starNumber1 <- imdb %>% select(Star1,Director) %>%
 count(Star1,Director,sort = TRUE)%>%
 head(Star1,n=1)
names(starNumber1)[3] <- 'Number of times'
print(starNumber1)
```
###Result : นักเเสดงนำที่ 1 และผู้กำกับที่มีการร่วมงานกันมากที่สุดคือ
```{R}
  Star1                            Director       `Number of times`
  <chr>                             <chr>                   <int>
1 Toshirô Mifune                   Akira Kurosawa             7

```

