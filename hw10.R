numbers <- c(800.64, 217.53, 74.58, 498.6, 723.11, 69.43, 
             40.15, 58.61, 364.63, 44.31, 216.41, 157.92, 
             1044.4, 82.3, 90.21, 59.09, 361.38, 37.32, 
             311.34, 90.84, 580.64, 274.31, 215.06, 202.99)
#standard error is standard deviation/square root of # of samples
stdError <- sd(numbers)/sqrt(length(numbers))
stdError

# Calculate Standard Error in R if there are missing values
#product_tests <- c(15,13,12,35,12,12,11,13,12,13,15,11,13,12,15, NA, NA, NA)
#product_tests
#sd(product_tests, na.rm=TRUE)/sqrt(length(na.omit(product_tests)))

cutpoint975 <- mean(numbers) + 2 * stdError
cutpoint975