library(dslabs)
data(heights)

# Loading dplyr
library(dplyr)

# Question 1
# Write an ifelse() statement that returns 1 if the sex is Female 
# and 2 if the sex is Male.
sex <- heights$sex
sexSum <- ifelse(sex == "Male", 2, 1)

# What is the sum of the resulting vector?
sum(sexSum)

# Question 2
# Write an ifelse() statement that takes the height column and returns the 
# height if it is greater than 72 inches and returns 0 otherwise.
height <- heights$height
result <- ifelse(height > 72, height, 0)

# What is the mean of the resulting vector?
mean(result)

# Question 3
# Write a function inches_to_ft that takes a number of inches x and 
# returns the number of feet. One foot equals 12 inches.
inches_to_ft <- function(x){
  x / 12
}
#a. What is inches_to_ft(144)?
inches_to_ft(144)

#b. How many individuals in the heights dataset have a height less than 5 feet?
cal_height <- heights %>% mutate(height_in_feet = inches_to_ft(height)) %>% filter(height_in_feet < 5) %>% select(height_in_feet)
count(cal_height, vars = "height_in_feet") #OR
nrow(cal_height)

# Question 5
# Given an integer x, the factorial of x is called x! and is the product of all integers up to 
# and including x. The factorial() function computes factorials in R. For example,
# factorial(4) returns 4! = 4 × 3 × 2 × 1 = 24.

# Complete the code above to generate a vector of length m where the 
# first entry is 1!, the second entry is 2!, and so on up to m!.

# define a vector of length m
m <- 10
f_n <- vector(length = m)

# make a vector of factorials
for(n in 1:m){
  f_n[n] <- factorial(n)
}

# inspect f_n
f_n


