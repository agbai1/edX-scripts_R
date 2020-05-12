library(dslabs)
data(murders)

# * Use the ifelse function to write one line of 
#   code that assigns to the object new_names the
#   state abbreviation when the state name is longer 
#   than 8 characters and assigns the state
#   name when the name is not longer than 8 characters.
#   For example, where the original vector has Massachusetts 
#   (13 characters), the new vector should have MA. 
#   But where the original vector has New York (8 characters),
#   the new vector should have New York as well.


# Assign the state abbreviation when the state name is longer
# than 8 characters 
m <- length(murders$abb)
# new_names <- vector(length = m)
state_len <- nchar(murders$state)
states <- murders$state
abb <- murders$abb
new_names <- ifelse(state_len > 8, abb, states)

# new_names <- ifelse(nchar(murders$state) > 8, murders$abb, murders$state)

states
new_names

# DEFINING FUNCTIONS
# Instructions quiz 3 
# We will define a function sum_n for this exercise.

# * Create a function sum_n that for any given value, say n, creates the vector 1:n, 
#   and then computes the sum of the integers from 1 to n.
# * Use the function you just defined to determine the sum of integers from 1 to 5,000.

# Create function called `sum_n`
sum_n <- function(n){
  x <- 1:n
  sum(x)
}

# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)

# Instructions question 4
# We will make another function for this exercise.

# * Create a function altman_plot that takes two arguments x and y 
#   and plots y-x (on the y-axis) against x+y (on the x-axis).

altman_plot <- function(x, y){
  add <- x + y
  diff <- y - x
  plot(diff, add)
}

# code for test 
# Create `altman_plot` 
altman_plot <- function(x, y){
  plot(x + y, y - x)
}

altman_plot(20, 40)

# Instructions question 5
# Here is an example of a function that adds numbers from 1 to n
example_func <- function(n){
  x <- 1:n
  sum(x)
}

# Here is the sum of the first 100 numbers
example_func(100)

# Write a function compute_s_n with argument n that for any given n computes the sum of 1 + 2^2 + ...+ n^2

compute_s_n <- function(n){
  s_n <- 1:n
  sum(s_n^2)
}
# Report the value of the sum when n=10
compute_s_n(10)

# Instructions question 6
# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Create a vector for storing results
s_n <- vector("numeric", 25)

# write a for-loop to store the results in s_n
n <- 25
for(i in 1:n){
  s_n[i] <- compute_s_n(i)
}


# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector of n
n <- 1:25

# Instructions question 7
# * Define n <- 1:25. Note that with this we can use for(i in n)
#   Use a for loop to save the sums into a vector s_n <- vector("numeric", 25)
# * Plot s_n (on the y-axis) against n (on the x-axis).

# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}

#  Create the plot 
plot(n, s_n)

# Instructions question 8
# * Confirm that s_n and n(n+1)(2n+1)/6 are the same using the identical command.

# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector of n
n <- 1:25


# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}

# Check that s_n is identical to the formula given in the instructions

identical(s_n, n*(n+1)*(2*n+1)/6)
