#Turn data into vectors
Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

#Convert vectors into data frame for boxplots
hospital_df <- data.frame(Frequency, BP, First, Second, FinalDecision)
boxplot(BP~First, data = hospital_df, 
        xlab="First Assessment (0 = Good, 1 = Bad)", ylab="Blood Pressure")
boxplot(BP~Second, data = hospital_df, 
        xlab = "Second Assessment (Low = 0, High = 1)", ylab = "Blood Pressure")
boxplot(BP~FinalDecision, data = hospital_df, 
        xlab = "Final Decision (Low = 0, High = 1)", ylab = "Blood Pressure")

#histograms for data frame
hist(Frequency, main = "Frequency of Hospital Visits")
hist(BP, main = "Blood Pressure")
hist(First, main = "First Assessment", xlab = "0 = Good, 1 = Bad")
hist(Second, main = "Second Assessment", xlab = "Low = 0, High = 1")
hist(FinalDecision, main = "Final Decision", xlab = "Low = 0, High = 1")
