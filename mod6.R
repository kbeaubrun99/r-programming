#library(ggplot2)
head(airquality)
air <- data.frame(airquality)
#to remove all of the NA values
air$Ozone[is.na(air$Ozone)] <- mean(air$Ozone, na.rm = TRUE)
air$Solar.R[is.na(air$Solar.R)] <- mean(air$Solar.R, na.rm = TRUE)
head(air)
#only selecting only the first 25 values to make it a bit easier to manage
air25 <- air[1:25,]
air25
#changing the last two columns to date format
air25$Date <- as.Date(paste("1973", air25$Month, air25$Day, sep ="/"))
#increasing value to better show the data
air25$Wind <- air25$Wind*10
air25 <- air25[-c(5:6)]
air25
#melting data together for my bar graph
melt_air25 <- melt(air25, id = "Date")
print(melt_air25)

ggplot(melt_air25, aes(fill = variable, y = value, x = Date)) +
  geom_bar(position = "stack", stat = "identity") +
  ggtitle("Air Quality Stats For May") +
  ylab("Recorded Value")

