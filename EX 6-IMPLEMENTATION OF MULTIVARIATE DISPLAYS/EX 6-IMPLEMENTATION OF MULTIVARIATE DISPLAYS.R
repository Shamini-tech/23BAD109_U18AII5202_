install.packages(c("GGally", "ggplot2", "lattice"))
library(GGally)
library(ggplot2)
library(lattice)
retail <- read.csv("6.retail_business.csv")
str(retail)
ggparcoord(
  data = retail,
  columns = c("Sales", "Profit"),
  groupColumn = "Customer_Segment",
  scale = "standardize",
  alphaLines = 0.4
) +
  ggtitle("Parallel Coordinates: Sales vs Profit by Segment") +
  theme_minimal()
ggplot(retail, aes(x = Sales, y = Profit,
                   size = Sales, color = Region)) +
  geom_point(alpha = 0.6) +
  scale_size_continuous(range = c(3, 12)) +
  ggtitle("Bubble Chart: Sales vs Profit by Region") +
  theme_minimal()
ggplot(retail, aes(x = Sales, y = Profit, color = Customer_Segment)) +
  geom_point(alpha = 0.6) +
  facet_wrap(~ Region) +
  ggtitle("Trellis Display: Sales vs Profit by Region") +
  theme_minimal()
my_roll_no <- "23BAD109"
print(paste("Lab completed by roll number:", my_roll_no))



