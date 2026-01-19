# Lab Exercise by Student: 23BAD109

library(ggplot2)
library(dplyr)
library(lubridate)

# Read the ecommerce dataset
ecommerce <- read.csv("2.ecommerce_transactions.csv")
head(ecommerce)

# Histogram of Transaction Amounts
ggplot(ecommerce, aes(x = Transaction_Amount)) +
  geom_histogram(bins = 30, fill = "skyblue", color = "black") +
  labs(
    title = "Histogram of Transaction Amounts",
    x = "Transaction Amount",
    y = "Frequency"
  ) +
  theme_minimal()

# Boxplot of Transaction Amounts
ggplot(ecommerce, aes(y = Transaction_Amount)) +
  geom_boxplot(fill = "orange") +
  labs(
    title = "Boxplot of Transaction Amounts",
    y = "Transaction Amount"
  ) +
  theme_minimal()

# Convert Transaction_Date to Date format and extract Month
ecommerce$Transaction_Date <- as.Date(ecommerce$Transaction_Date)
ecommerce$Month <- month(ecommerce$Transaction_Date, label = TRUE)

# Summarize total sales by month
monthly_sales <- ecommerce %>%
  group_by(Month) %>%
  summarise(Total_Sales = sum(Transaction_Amount))

# Heatmap of Monthly Sales Intensity
ggplot(monthly_sales, aes(x = Month, y = 1, fill = Total_Sales)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "lightyellow", high = "red") +
  labs(
    title = "Heatmap of Monthly Sales Intensity",
    x = "Month",
    y = "",
    fill = "Total Sales"
  ) +
  theme_minimal() +
  theme(axis.text.y = element_blank(),
        axis.ticks.y = element_blank())

# Roll number
my_roll_no <- "23BAD109"
print(paste("Lab completed by roll number:", my_roll_no))
