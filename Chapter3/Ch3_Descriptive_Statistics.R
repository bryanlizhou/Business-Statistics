# Bryan Zhou
# Date Created: 12/13/2022


# Chapter 3 Descriptive Statistics

re
# page 54 3.1 problems

# 3.1 Determine the mode for the following numbers

# R does not have a mode function, we need to create our own function to find the mode.
# unique() function is used to eliminate or deleted the duplicate values or the rows present in the vector,
# data frame, or matrix

m <- c(2, 4, 8, 4, 6, 2, 7, 8, 4, 3, 8, 9, 4, 3, 5)

# which() function will return the position of the elements
# tabulate() function is used to count the frequency of occurrence of a element in the vector
# match() function returns a vector of the position of first occurrence of the vector1 in vector 2
findMode <- function(x) {
  
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

result <- findMode(m)
print(result)

# 3.2  Determine the median of the numbers in Problem 3.1

median(m)


# 3.3 Compute the mean of the following numbers.

B <- c(213, 345, 609, 073, 167, 243, 444, 524, 199, 682)

mean(B)

# 3.6 Compute the 35th percentile, the 55th percentile, Q1, Q2, Q3, for the following data

d <- c(16, 28, 29, 13, 17, 20, 11, 34, 32, 27, 25, 30, 19, 18, 33)

quantile(d, c(.35, .55))

# apply quartiles function again for Q1, Q2, Q3

quantile(d)

# The first, second, and third quartiles of eruption is 17.5, 25.0, 29.5

# Alternative is to use the summary() function,  the median is the same as second quartile

summary(d)

# page 67  3.2 problems

# 3.11
# A data set contains the following seven values

set1 <- c(6, 2, 4, 9, 1, 3, 5)

# a. Find the range
# The range() function only return the min and max value.


range(set1)

# The range is 8.

# b. Find the mean absolute deviation

#  MAD is the average absolute distances from the arithmetic mean
# MAD can also represent the Median absolute deviation
# The Median Absolute Deviation in used in this case
# R mad() computes the median absolute deviations from the median
# The data is not large and the median is not affected by extreme values
# https://www.statskingdom.com/median-absolute-deviation-calculator.html

# look at the median
median(set1)

# compute the mean
mean(set1)

# compute the median absolute deviation, center default is median
mad(set1)

# compute the mad with the mean as the center
mad(set1, center = mean(set1))

# c Find the population variance

# compute the variance
var(set1)

# compute the length of the set1

N <- length(set1)

N

# compute population variance

var(set1) * (N-1)/N

# d. Find the population standard deviation

sd(set1) * sqrt((N-1)/N)

# e.  Find the interquartile range

IQR(set1)

# f. Find the z score for each value

# z-score represents the number of standard deviaiton a value(x) is above or below the mean

z_score <- (set1-mean(set1))/sd(set1)

z_score

 
# 3.14
# Use your calculator or computer to find the sample variance and sample standard deviation for the following data.

a <- c(57, 88, 68, 43, 93, 63, 51, 37, 77, 83, 66, 60, 38, 52, 28, 34, 52, 60, 57, 29, 92, 37, 38, 17, 67)

# Find sample variance

var(a)

# Find the sample standard deviation

sd(a)

# 3.18 
# Compare the variability of the following two sets od data by using both the standard deviation and the coefficient of variation

dataset1 <- c(49, 82, 77, 54)
dataset2 <- c(159, 121, 138, 152)

sd(dataset1)

sd(dataset2)

# create a function

CV <- function(x) {sd(x)/mean(x) * 100}

CV(dataset1)
CV(dataset2)

