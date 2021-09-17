
SAT <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/SAT_original.csv")

library(dplyr)
View(SAT)
glimpse(SAT)

SAT %>% duplicated() %>% sum()

SAT %>% filter(duplicated(SAT)) 

sat_score <- SAT %>% distinct()

sat_score %>% filter(math_score)
