# Load dataset with safe variable name
df <- read.csv("7.social_media_interactions.csv")

# View structure to confirm columns
str(df)

# RAW PLOT – shows overplotting problem
plot(df$Likes, df$Comments,
     main="Raw Plot - Overplotting",
     xlab="Likes",
     ylab="Comments")

# Alpha Blending Technique
plot(df$Likes, df$Comments,
     col=rgb(0,0,1,0.1),
     pch=16,
     main="Alpha Blending",
     xlab="Likes",
     ylab="Comments")

# Jittering Technique
plot(jitter(df$Likes), jitter(df$Comments),
     col=rgb(1,0,0,0.2),
     pch=16,
     main="Jittering Technique",
     xlab="Likes",
     ylab="Comments")

# Aggregation using Hexbin
library(hexbin)

hb <- hexbin(df$Likes, df$Comments)

plot(hb, main="Hexbin Aggregation - Social Media Data")

# Roll number display
my_roll_no <- "23BAD109"
print(paste("Lab completed by roll number:", my_roll_no))
