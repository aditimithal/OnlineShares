OnlineNewsPopularity <- read.csv("C:/Users/Juhi/Downloads/ML Minor Project 1/OnlineNewsPopularity/OnlineNewsPopularity.csv")
View(OnlineNewsPopularity)

#transform(OnlineNewsPopularity, shares = as.numeric(shares))
#boxplot(OnlineNewsPopularity$shares)

share <- OnlineNewsPopularity$shares
summary(share)
# Min.   1st Qu.  Median   Mean     3rd Qu.    Max.
#  1      946     1400     3395     2800      843300

boxplot(share) # Not helpful
plot(share)  # Getting better

plot(share, ylim = c(0, 2800)) # Trying to limit till third quartile does not help
plot(share, ylim = c(0, 800000))
plot(share, ylim = c(0, 700000))
plot(share, ylim = c(0, 600000)) # Reaching there
plot(share, ylim = c(0, 500000)) # Almost there
plot(share, ylim = c(0, 450000)) # Success!

# Outliers: shares above 450000

#cleaning the data
data_clean <- subset(OnlineNewsPopularity, shares < 450000)
View(data_clean)

write.csv(file = "C:/Users/Juhi/Downloads/ML Minor Project 1/OnlineNewsPopularity_CleanData", x = data_clean)
