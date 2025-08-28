
library(ggplot2)


df <- read.csv("heart.csv")


mean_age <- mean(df$age, na.rm = TRUE)
median_age <- median(df$age, na.rm = TRUE)
var_age <- var(df$age, na.rm = TRUE)

print(paste("Mean Age:", mean_age))
print(paste("Median Age:", median_age))
print(paste("Variance of Age:", var_age))

ggplot(df, aes(x = factor(sex))) +
  geom_bar(fill = "skyblue") +
  labs(title="Gender Distribution", x="Sex (0=Female, 1=Male)", y="Count")
