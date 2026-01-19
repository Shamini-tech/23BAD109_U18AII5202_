# Lab Exercise by Student: 23BAD109
library(ggplot2)
library(dplyr)
# Read student performance data
data <- read.csv("1.student_performance.csv")
head(data)
# Calculate average of internal tests
data <- data %>%
  mutate(Average_Internal = (Internal_Test1 + Internal_Test2) / 2)
head(data)

# Subject-wise average internal marks
subject_avg <- data %>%
  group_by(Subject) %>%
  summarise(Avg_Marks = mean(Average_Internal))
subject_avg
# Bar plot: Subject-wise average internal marks
ggplot(subject_avg, aes(x = Subject, y = Avg_Marks, fill = Subject)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Subject-wise Average Internal Marks",
    x = "Subject",
    y = "Average Marks"
  ) +
  theme_minimal()
# Average marks across internal tests
test_avg <- data %>%
  summarise(
    Internal_Test1 = mean(Internal_Test1),
    Internal_Test2 = mean(Internal_Test2)
  )
test_avg_long <- data.frame(
  Test = c("Internal Test 1", "Internal Test 2"),
  Average = c(test_avg$Internal_Test1, test_avg$Internal_Test2)
)
# Line plot: Performance trend across internal tests
ggplot(test_avg_long, aes(x = Test, y = Average, group = 1)) +
  geom_line() +
  geom_point(size = 3) +
  labs(
    title = "Performance Trend Across Internal Tests",
    x = "Test",
    y = "Average Marks"
  ) +
  theme_minimal()
# Grade distribution
grade_dist <- data %>%
  group_by(Final_Grade) %>%
  summarise(Count = n())
# Pie chart: Grade distribution
ggplot(grade_dist, aes(x = "", y = Count, fill = Final_Grade)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Grade Distribution") +
  theme_void()
my_roll_no <- "23BAD109"
print(paste("Lab completed by roll number:", my_roll_no))
