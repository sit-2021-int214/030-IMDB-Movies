เย้ๆๆ
030_YAY
### Step to do:
Declaration variables:
p0
xbar
n
sd 
α (default is 0.05)
State the hypothesis
Select Level of significance (alpha α)
Select Test statistic (This formula for one population)
``` z/t <- (xbar - u0) / (sd/sqrt(n)) ```
``` z <- (pbar-p0) / sqrt((p0\*(1-p0))/n) ```
Finding P-value approach or Critical Value approach
P-value for Z: ``` pvalue <- pnorm(z) ```
Critical Value for Z:```  zalpha <- qnorm(alpha) ```
P-value for T: ``` pvalue <- pt(q, df,lower.tail = TRUE) ```
talpha for T: ``` talpha <- qt(p, df, lower.tail = TRUE) ```
Compare P-value with alpha or z/t with zalpha/talpha
Conclusion
### Part: 1
นักวิจารณ์หนังให้ความเห็นว่าภาพยนตร์แนว Drama ส่วนใหญ่ ควรได้คะแนน  IMDb ไม่เกิน 8.2 คะแนน จากกลุ่มตัวอย่างหนัง Drama 85 เรื่อง โดยคะแนนเฉลี่ยในกลุ่มตัวอย่างคือ  7.98
### Step 0 Assign variables
```
n <- 85
xbar <- 7.98
sd <- 0.305
u0 <- 8.2
```
### Step 1 State the hypothesis
```
H0: μ ≤  8.2
Ha: μ > 8.2
```
 
### Step 2: Level of significance
```
alpha <- 0.05
```
 
### Step 3: Test statistic
 
```
z <- (xbar - u0) / (sd/sqrt(n))
```
Result
```
-6.650163
```
 
### Step 4: Finding P-value approach or Critical Value approach
#### P-value approach
 
```
pvalue <- 1-pnorm(z)
```
Result
```
1
```
#### Critical Value approach
```
zalpha <- qnorm(1-alpha)
```
Result
```
1.644854
```
 
### Step 5: Compare
 
```
# Using p-value approach
if(pvalue<=alpha){
  print("Reject H0")
}else{
  print("Not reject H0")
}
 
# Using critical value
if(z>=zalpha){
  print("Reject H0")
}else{
  print("Not reject H0")
}
```
Result
```
P-value approach : "Not reject H0"
Critical value approach : "Not reject H0"
```
 
### Step 6: Conclusion
 
จะได้ข้อสรุปว่าภาพยนตร์แนว Drama ส่วนใหญ่จะมีคะแนน IMDB ไม่เกิน 8.2 คะแนน
 
 
 
 
 

