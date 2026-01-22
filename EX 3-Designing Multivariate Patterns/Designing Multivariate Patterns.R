# Lab Exercise by Student: 23BAD109
library(ggplot2)
library(GGally)
library(dplyr)
# Read healthcare dataset
health_data <- read.csv("3.healthcare_data (1).csv")
# View first few rows
head(health_data)
health_data <- health_data %>%
  health_data <- health_data %>%
  mutate(Age_Group = cut(
    Age,
    breaks = c(0, 30, 45, 60, 100),
    labels = c("Young", "Middle-aged", "Senior", "Elderly")
  ))
ggpairs(
  health_data,
  columns = c("Age", "BMI", "Glucose_Level", "Blood_Pressure"),
  aes(color = Age_Group, alpha = 0.6),
  title = "Scatter Plot Matrix of Health Indicators"
)
cor_matrix <- cor(
  health_data[, c("Age", "BMI", "Glucose_Level", "Blood_Pressure")],
  use = "complete.obs"
)
print(cor_matrix)
my_roll_no <- "23BAD109"
print(paste("Lab completed by roll number:", my_roll_no))






