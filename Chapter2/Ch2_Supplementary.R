# Bryan Zhou
# Date Created: 12/16/2022

# Chapter 2 Supplement Problems


# install packages qcc

install.packages("qcc")

# load important library

library(tidyverse)
library(qcc)

# 2.22 
# An examination of rejects shows at least 10 problems. A frequency tally of the problems follows.
# Construct a Pareto chart for these data

Problem <- c(1,2,3,4,5,6,7,8,9,10)
Frequency <- c(673, 29, 108, 379, 73, 564, 12, 402, 54, 202)

df <-  data.frame(Problem, Frequency)

view(df)

# qcc packages contain pareto.chart() function

pareto.chart(df$Frequency)

# 2.23
# Construct a scatter plot for the following two numerical

x <- c(12, 17, 9, 6, 10, 14, 8)

y <- c(5, 3, 10, 15, 8, 9, 8)
 
# create a data frame
data1 <- data.frame(x,y)


# scatter plot
ggplot(data = data1) + geom_point(mapping = aes(x = x, y = y))


# 2.24
# The Whitcomb company manufactures a metal ring for industrial engines that usually weighs about 50 ouunces.
# A random sample of 50 of these metal rings produced the following weights (in ounces)

metalrings <- c(51, 53, 56, 50, 44, 47,
                53, 53, 42, 57, 46, 55,
                41, 44, 52, 56, 50, 57,
                44, 46, 41, 52, 69, 53,
                57, 51, 54, 63, 42, 47,
                47, 52, 53, 46, 36, 58,
                51, 38, 49, 50, 62, 39,
                44, 55, 43, 52, 43, 42,
                57, 49)


# Construct a frequency distribution for these data using eight classes.
# What can you observe about the data from the frequency distribution

# range(), which return the min and max value
# range is the difference between the largest and smallest numbers

range(metalrings)

# cut() function

class_interval <- cut(metalrings, breaks = 8)

# check data distribution

summary(class_interval)


# 2.26
# The following data are shaped roughly like a normal distribution (discussed in Chapter 6).
# Construct a frequency distribution starting with 10 as the lowest class beginning point and use a class width fo 10.
# Construct a histogram and a frequency polygon for this frequency distribution and observe the shape
# of a normal distribution. 
# On the basis of your results from these graphs, what does a normal distribution look like?

x <- c(61.4, 27.3, 26.4, 37.4, 30.4, 47.5,
       63.9, 46.8, 67.9, 19.1, 81.6, 47.9,
       73.4, 54.6, 65.1, 53.3, 71.6, 58.6,
       57.3, 87.8, 71.1, 74.1, 48.9, 60.2,
       54.8, 60.5, 32.5, 61.7, 55.1, 48.2,
       56.8, 60.1, 52.9, 60.5, 55.6, 38.1,
       76.8, 46.8, 19.9, 27.3, 77.4, 58.1,
       32.1, 54.9, 32.7, 40.1, 52.7, 32.5,
       35.3, 39.1)


# range() function

range(x) # smallest number is 19.1 and largest number is 87.8


# create a frequency distribution with 10 classes


fd <- cut(x, breaks = 10)

summary(fd)

# construct a histogram
# hist() is R basic histogram function, you can use ggplot

hist(x)

# create a data frame from data above

df <- data.frame(x)

# ggplot histogram

ggplot(df, aes(x = x)) + geom_histogram(bins = 10)

# with binwidth = 10

ggplot(df, aes(x = x)) + geom_histogram(binwidth = 10)

# frequency polygon

ggplot(df, aes(x =x )) + geom_freqpoly(binwidth = 10)

# 2.36
# Listed here are 30 different weekly Dow Jones Industrial stock averages
# Construct a stem and leaf plot for these 30 values.  Let the stem contain two digits.

DJ <- c(2656, 2301, 2975, 3002, 2648,
        2742, 2830, 2405, 2677, 2990,
        2200, 2746, 2337, 2961, 3010,
        2976, 2375, 2602, 2670, 2922,
        2344, 2760, 2555, 2524, 2814,
        2996, 2437, 2268, 2448, 2460)

stem(DJ)

# Final Note

# I did not do any problems involving orgive.
# Orgives is a cumulative frequency polygon
# In order to do problems involving an orgive curve
# install the package "agricolae".

install.packages("agricolae")

library(agricolae)
