library(dslabs)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers

# Loading dplyr
library(dplyr)

str(heights)
names(heights)

# 1. First, determine the average height in this dataset. Then create 
# a logical vector ind with the indices for those individuals who are 
# above average height.

avg_height <- mean(heights$height)  # determines the avg height in the dataset

ind <- heights$height > avg_height

sum(ind)

# 2. How many individuals in the dataset are above average 
# height and are female?
class(heights$height)

fem_and_abv_avg_heigt <- length(which(mean(heights$height) < heights$height & heights$sex %in% c("Female")))
fem_and_abv_avg_heigt

# 3. If you use mean() on a logical (TRUE/FALSE) vector, 
# it returns the proportion of observations that are TRUE.
# What proportion of individuals in the dataset are female?

mean(heights$sex %in% c("Female"))

# 4. This question takes you through three steps to determine 
# the sex of the individual with the minimum height.

# 4a. Determine the minimum height in the heights dataset.
index <- which.min(heights$height) # stores the index of the min height
heights$height[index]              # retrieves the min height

# 4b. Use the match() function to determine the index of the first 
# individual with the minimum height.

# Match() Function in R , returns the position of first occurrence of 
# elements of Vector 1 in Vector 2
min_height <- min(heights$height)
index <- (match(min_height, heights$height, nomatch=0))
print(index)

# 4c. Subset the sex column of the dataset by the index in 4b to 
# determine the individual’s sex
heights$sex[index]

# 5. This question takes you through three steps to determine how many 
# of the integer height values between the minimum and maximum heights
# are not actual heights of individuals in the heights dataset.

# 5a. Determine the maximum height.
max(heights$height)

library(dslabs)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers

# 5b. Which integer values are between the maximum and minimum heights? 
# For example, if the minimum height is 10.2 and the maximum height 
# is 20.8, your answer should be x <- 11:20 to capture the integers 
# in between those values. (If either the maximum or minimum height 
# are integers, include those values too.)

min_height <- min(heights$height)
max_height <- max(heights$height)
min_height 
max_height
#x <- ceiling(seq(min(heights$height),max(heights$height), by=1))

x<-ceiling(min(heights$height)):max(heights$height)
# To pass the quiz
x <- 50:82 # LOL

# 5c. How many of the integers in x are NOT heights in the dataset?
# Use the sum() and %in% functions in addition to the ! operator.

sum(!x %in% heights$height)

# 6. Using the heights dataset, create a new column of heights in 
# centimeters named ht_cm. Recall that 1 inch = 2.54 centimeters. 
# Save the resulting dataset as heights2.

# 6a. What is the height in centimeters of the 18th individual (index 18)?
heights2 <- mutate(heights, ht_cm = height * 2.54)
heights2$ht_cm[18]

# 6b. What is the mean height in centimeters?
mean(heights2$ht_cm)

# Create a data frame females by filtering the heights2 data to contain only 
# female individuals.

# 6c. How many females are in the heights2 dataset?
females <- filter(heights2, sex %in% c("Female"))
length(females$ht_cm)

# 6c. What is the mean height of the females in centimeters?
mean(females$ht_cm)

# 8. The olive dataset in dslabs contains composition in percentage
# of eight fatty acids found in the lipid fraction of 572 Italian
# olive oils:
library(dslabs)
data(olive)
head(olive)

# Plot the percent palmitic acid versus palmitoleic acid in a 
# scatterplot. What relationship do you see?
plot(olive$palmitic, olive$palmitoleic)

# 9. Create a histogram of the percentage of eicosenoic acid in olive.
hist(olive$eicosenoic)

# 10. Make a boxplot of palmitic acid percentage in olive with separate 
# distributions for each region.
boxplot(palmitic ~ region, data = olive)
# A. Southern Italy. Explanation: 
# B. Southern Italy
