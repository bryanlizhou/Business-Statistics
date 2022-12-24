# Bryan Zhou
# 12/23/2022


# Chapter 3 Supplementary Problems
# page 89-91

# 3.47
# The 2000 U.S. Census aslo asked for each person's age.
# Suppose that a sample of 40 households taken from the census data showed the age of the 
# first person record on the census form to be as the follows.
# Compute P10, P80, Q1, the interquartile range, and the range for these data

age <- c(42, 29, 31, 38, 55, 27, 28,
         33, 49, 70, 25, 21, 38, 47,
         63, 22, 38, 52, 50, 41, 19,
         22, 29, 81, 52, 26, 35, 38,
         29, 31, 48, 26, 33, 42, 58,
         40, 32, 24, 34, 25)

# P10, P80

quantile(age, c(.10, .80))

# Q1 and Q3
summary(age)

quantile(age) # or use the quntile() again

# interquartile range (IQR)

IQR(age)

# range
# the range() only returns the min and max value, not the actual range value
# the actual range value is the difference of the two.

range(age)

# min. is 19 and max. is 81
# range: 81-19 = 62

# 3.50
# We show the companies with the largest oil refining capacity in the world according
# to the Petroleum Intelligence Weekly. Use these population data and answer the questions.

company <- c("ExxonMobile", "Royal Dutch/Shell", "China Pectrochemical", "Petroleos de Venezuela",
             "Saudi Arabian Oil", "BP Amoco", "Chevron", "Petrobras", "Texaco", "Petroleos Mexicanos (Pemex)", "National Iranian Oil")

# barrels per day in 1,000s)
capacity <- c(6300, 3791, 2867, 2437, 1970, 1965, 1661, 1540, 1532, 1520, 1092)

# Petroleum Intelligence Weekly (PIW)
# create a data frame
PIW <- data.frame(company, capacity)

# data structure
str(PIW)

# spreadsheet or table 
View(PIW)

# a. What are the values of the mean and the median?

# Can also use the mean() and median() function
 summary(PIW$capacity)
 
# b. What are the values of the range and interquartile range?
 
 range(PIW$capacity)
 
 # range: 6300-1092 = 5208
 
# IQR
 IQR(PIW$capacity)
 
 # c. What are the values of variance and standard deviation for these data?
 
 # variance (sample variance)
 
 var(PIW$capacity)
 
 # standard deviation
 
 sd(PIW$capacity)
 
 
 # d. What is the z score for Texaco? What is the z score for ExxonMobile? Interpret these z scores.
 
 z <- (PIW$capacity-mean(PIW$capacity))/sd(PIW$capacity)
 
 z
 
 # The z-score for ExxonMobile is 2.597455824 and Texaco is -0.598587884

 
# e. Calculate the Pearsonian coefficient fo skewness and comment on the skewness of this distribution.
 
 # need to install library moments for the skewness() function.
 
 install.packages("moments")
 
 library(moments)
 
skewness(PIW$capacity)

# 3.54
# Determine the Pearson product-moment correlation coefficient for the following data.

x <- c(1, 10, 9, 6, 5, 3, 2)
y <- c(8, 4, 4, 5, 7, 7, 9)

correlation <- cor(x, y, method ="pearson")

# The value is -0.9396628, a negative linear correlation

# 3.61 According to the U.S. Army Corps of Engineers, the top 20 U.S. ports, ranked by
# total tonnage(in million tons), were as follows.

port <- c("South Louisian", "Houston", "New York", "New Orleans", "Corpus Christi",
          "Beaumont", "Baton rouge", "Port of Plaguemines", "Long Beach", "Valdez",
          "Pittsburgh", "Tampa", "Lake Charles", "Texas City", "Mobile", "Duluth-Superior",
          "Los Angeles", "Norfolk Harbor", "Philadelphia", "Baltimore")

state <- c("LA", "TX", "NY-NJ","LA", "TX", "TX", "LA", "LA", "CA", "AK", 
           "PA", "FL","LA","TX", "AL", "MN-WI", "CA", "VA", "PA", "MD")

# total tonnage
tonnage <- c(214.2, 158.8, 133.7, 87.5, 78.0, 69.4, 63.7, 62.5, 60.9, 53.4, 52.9, 51.5,
             50.7, 49.5, 45.4, 42.3, 42.3, 40.8, 39.3, 37.3)

# create a data frame
us_ports <- data.frame(port, state, tonnage)

View(us_ports)

# a. Construct a box and whisker plot for these data.
# b. Discuss the shape of the distribution from the plot.
# c. Are there outliers?
# d. What are they and why do you think they are outliers?



# box and whisker plot 

 ggplot(us_ports, aes(state, tonnage)) + geom_boxplot(outlier.color = "red", outlier.shape = 1)
 



