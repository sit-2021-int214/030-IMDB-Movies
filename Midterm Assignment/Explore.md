# 1 : เลือกหัวข้อ Dataset 
* Dataset ที่กลุ่มของพวกเราใช้นั้นเป็น Dataset IMDB Dataset of top 1000 movies ที่รวบรวมข้อมูลมาจากเว็บ IMDB โดยกลุ่มของพวกเราก็ชื่นชอบดูหนังอยู่แล้ว และเป็น Dataset ที่น่าสนใจที่จะนำมาทำเพราะมีข้อมูลข้างในที่ค่อนข้างหลากหลาย เลยมาสนใจใน Dataset นี้
* ref: IMDB Movies Dataset | Kaggle

# 2 : รายละเอียดของตัว Dataset (Data Exploration and Analysis)
IMDB Dataset of top 1000 movies นั้นเป็น dataset ที่รวบรวมข้อมูลของ URLของหนัง , ชื่อหนัง , ปีที่หนังฉาย , เรทอายุ , ระยะเวลาของหนัง , ประเภทของหนัง , IMDB_score , เรื่องย่อ , Meta_score , ชื่อผู้กำกับ , นักเเสดงนำ1/2/3เเละ4 , เเละรายได้ของหนังเรื่องนั้นๆ โดยจะมีจำนวนหนังอยู่ที่ 1000 เรื่อง 
(1000 obs. เเละมี่ 16 variables)

| ชื่อคอลัมน์ | รายละเอียด | ประเภท | ตัวอย่างข้อมูล |
|---------|----------|---------|------------|
|Poster_Link | ลิงค์โปสเตอร์หนัง | character | https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGde...
Series_Title | ชื่อหนัง | character | The Matrix
Released_Year | ปีที่ฉาย | character | 1999 
Certificate | เรทอายุ | character | UA 
Runtime | ระยะเวลาของหนัง | character | 136 min 
Genre | ประเภทของหนัง | character | Drama 
IMDB_Rating | คะเเนน IMDB | double | 8.8 
Overview | เรื่องย่อ | character | Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a…
Meta_score | คะเเนนรวมเฉลี่ยของสื่อ | double | 80
Director | ชื่อผู้กำกับ | character | George Lucas
Star1 | หนังแสดงนำคนที่1  | character | John Travolta
Star2 | หนังแสดงนำคนที2  | character | Morgan Freeman
Star3 | หนังแสดงนำคนที่3  | character | Bob Gunton
Star4 | หนังแสดงนำคนที่4  | character | William Sadler
Noofvotes | จำนวนคนโหวตคะเเนน | double | 2343110
Gross | รายได้ของหนัง | number | 134,966,411
