library(ggplot2)

# Load dataset
accidents <- read.csv("4.traffic_accidents.csv")

# Convert Accident_Type to factor
accidents$Accident_Type <- as.factor(accidents$Accident_Type)

# Convert Severity to ordered factor
accidents$Severity <- factor(
  accidents$Severity,
  levels = c("Minor", "Serious", "Fatal"),
  ordered = TRUE
)

# Create frequency per location
acc_freq <- aggregate(
  Accident_ID ~ Location + Severity + Accident_Type,
  data = accidents,
  FUN = length
)

colnames(acc_freq)[4] <- "Frequency"

# Plot
ggplot(acc_freq, aes(x = Location, y = Frequency)) +
  geom_point(
    aes(
      color = Severity,
      size = Frequency,
      shape = Accident_Type
    ),
    alpha = 0.7
  ) +
  scale_color_manual(
    values = c("Minor" = "yellow", "Serious" = "orange", "Fatal" = "red")
  ) +
  scale_size_continuous(range = c(3, 10)) +
  labs(
    title = "Accident Severity and Frequency by Location",
    x = "Location",
    y = "Accident Frequency",
    color = "Severity",
    shape = "Accident Type"
  ) +
  theme_minimal()

# Roll number at end
my_roll_no <- "23BAD109"
print(paste("Lab completed by roll number:", my_roll_no))
