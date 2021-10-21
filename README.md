# Group30-IMDB Movies Dataset   :movie_camera:

Original Datasets from: https://www.kaggle.com/harshitshankhdhar/imdb-dataset-of-top-1000-movies-and-tv-shows

### About's Student Survey Datasets

This dataset is about's IMDB information of top 1000 movies and tv shows. This dataset has 1000 observations with 16 variables. It includes
1. Poster_Link - Link of the poster that imdb using
2. Series_Title - Name of the movie
3. Released_Year - Year at which that movie released
4. Certificate - Certificate earned by that movie
5. Runtime - Total runtime of the movie
6. Genre - Genre of the movie
7. IMDB_Rating - Rating of the movie at IMDB site
8. Overview - mini story/ summary
9. Meta_score - Score earned by the movie
10. Director - Name of the Director
11. Star1 - Name of the Stars
12. Star2 - Name of the Stars
13. Star3 - Name of the Stars
14. Star4 - Name of the Stars
15. Noofvotes - Total number of votes
16. Gross - Money earned by that movie

## Overview
เป็นการวิเคราะห์ข้อมูลเชิงสถิติเกี่ยวกับ ความรู้และความพร้อมของนักศึกษาต่อการเรียนรู้รายวิชา INT214 พฤติกรรมความชื่นชอบของนักศึกษา ข้อมูลเกี่ยวกับนักศึกษา โดยได้มีการสำรวจข้อมูลนักศึกษาชั้นปีที่ 2 โดยใช้เครื่องมือ Google Forms และนำมาทำความสะอาดและวิเคราะห์โดยใช้ภาษา R และใช้เครื่องมือ Google Studio ในการทำ Dashboard ของข้อมูล นอกจากนี้ได้มีการวิเคราะห์เพื่อหาความสัมพันธ์ของข้อมูล และตั้งสมมุติฐาน

### Question
สิ่งที่ต้องการจะทราบ :
เราเลยตั้งคำถามกันมาทั้งหมด 8 ข้อ ดังนี้
1.) หาว่าหนังแนวไหนบ้างได้รับคะเเนน Metascore =100
2.) หนังที่มี imdb rating ตั้งแต่ 9 ขึ้นไป ชื่ออะไรและออกฉายในปีไหน
3.) ประเภทหนังที่ติด top 1000 มากที่สุด 3 อันดับแรก
4.) ปีไหนที่มีการปล่อยหนังมากที่สุด
5.) ผู้กำกับที่กำกับหนังติด top 1000 มากที่สุดในช่วงนี้ปี 2010 - 2020 และทำรายได้เฉลี่ยเท่าไหร่
6.) ในช่วงศตวรรษที่ 19 และศตวรรษที่ 20 หนังแนวไหนที่ทำรายได้มากที่สุดในแต่ละศตววรษ
7.) ในช่วงศตวรรษที่ 20 นักแสดงนำคนที่ 1 ใครมีผลงานมากที่สุด
8.) นักแสดงนำที่ 1 กับผู้กำกับคู่ไหนที่ทำงานร่วมกันมากที่สุด ทั้งหมดกี่เรื่อง

### Steps

1. Define a question
2. Collect Data by using survey method
3. Export Data from Google sheet
4. Explore Data from Original Data
5. Data Cleaning and Data Transformation
6. Exploratory Data Analysis

### Tools

- R Language
- R Studio Desktop

## Table of Contents

1. [Define a question]()
2. [Data Cleaning and Data Transformation]()
3. [Exploratory Data Analysis]()

## Resources

### Important Files in Repository

- [clean-data.R](./clean-data.R) : Data Cleaning and Data Transformation
- [SurveyINT214_original.csv](./SurveyINT214_original.csv): Original Dataset

### References



## About Us

งานนี้เป็นส่วนของวิชา INT214 Statistics for Information technology <br/> ภาคเรียนที่ 1 ปีการศึกษา 2564 คณะเทคโนโลยีสารสนเทศ มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี

### Created by

Team: Noob Riot

1. ธันณวัฒน์ ชูดำ     StudentID: 63130500142
2. วิศรุต อำไพสุวรรณ     StudentID: 63130500146
3. ณัฐพล ชูศรีวัน     StudentID: 63130500154
4. ทศวรรษ สมตัว     StudentID: 63130500155
5. ศุภกร ไพรสกุลเดชา     StudentID: 63130500158

### Instructor

- ATCHARA TRAN-U-RAIKUL
- JATAWAT XIE (Git: [safesit23](https://github.com/safesit23))
