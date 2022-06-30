# Exercise Work for data manioulation 
#Please write the code for each question below.

# Q1. Import the file "cholest.xlsx" in R  and keep as cholest objet.
library(readxl)
setwd("/C:/Users/bhatt/OneDrive/Desktop/desktop_files/program/R_work/Data_anal_workshop/R-basics")
cholest <- read_excel("cholest.xlsx")
View(cholest)

#all the questions should be solved using cholest object.
# Q2. select first two variables and keep as cholest1 object.
glimpse(cholest)
cholest1 <- select(cholest, chol, age)

#Q3. Rename the variable sex as gender
cholest1 <- cholest %>%
  select(1:5) %>%
    rename(gender = sex)
  view(cholest1)

# Q4. generate new variable "exercise_hour" by multipling exercise varible by 60

cholest1 <- cholest%>%
  select(1:5) %>%
    mutate(exercise_hour = exercise * 60)
view(cholest1)

#  Q5. generate the new varibale status by the folling condition 
# if chol>= 5.5  then "high" otherwise "low"

cholest1 <- cholest %>%
  select(1:5) %>%
    mutate(status = ifelse(chol>=5.5, "high","low"))
view(cholest1)
