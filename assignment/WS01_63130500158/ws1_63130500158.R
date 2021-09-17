sat_score  <- read.csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/SAT_original.csv")

# Step 1
glimpse(sat_score)
#Rows: 485 and Columns: 5

# Step 2
is_character(sat_score$math_score)

sat_score$math_score <- as.numeric(sat_score$math_score)
# change character to numeric
sat_score$reading_score <- as.numeric(sat_score$reading_score)
# change character to numeric
sat_score$writing_score <- as.numeric(sat_score$writing_score)
# change character to numeric

# Step 3
sat_score %>% duplicated() %>% table()
#FALSE 478  TRUE 7
sat_score %>% duplicated() %>% sum()
#7

# Step 4
sat_score <- sat_score %>% distinct()
glimpse(sat_score)
#Rows: 478 and Columns: 5