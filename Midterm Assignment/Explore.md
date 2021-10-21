# 1 : เลือกหัวข้อ Dataset 
* Dataset ที่กลุ่มของพวกเราใช้นั้นเป็น Dataset IMDB Dataset of top 1000 movies ที่รวบรวมข้อมูลมาจากเว็บ IMDB โดยกลุ่มของพวกเราก็ชื่นชอบดูหนังอยู่แล้ว และเป็น Dataset ที่น่าสนใจที่จะนำมาทำเพราะมีข้อมูลข้างในที่ค่อนข้างหลากหลาย เลยมาสนใจใน Dataset นี้
* ref: IMDB Movies Dataset | Kaggle

# 2 : รายละเอียดของตัว Dataset (Data Exploration and Analysis)
IMDB Dataset of top 1000 movies นั้นเป็น dataset ที่รวบรวมข้อมูลของ URLของหนัง , ชื่อหนัง , ปีที่หนังฉาย , เรทอายุ , ระยะเวลาของหนัง , ประเภทของหนัง , IMDB_score , เรื่องย่อ , Meta_score , ชื่อผู้กำกับ , นักเเสดงนำ1/2/3เเละ4 , เเละรายได้ของหนังเรื่องนั้นๆ โดยจะมีจำนวนหนังอยู่ที่ 1000 เรื่อง 
(1000 obs. เเละมี่ 16 variables)

| variables | ความหมาย | รายละเอียด | ประเภท | ตัวอย่างข้อมูล
-|-
|Poster_Link | ชื่อของหนังสือที่ติด | ลิงค์โปสเตอร์หนัง | character | https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGde...
