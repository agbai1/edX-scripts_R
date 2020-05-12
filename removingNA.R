# Note what we can do with the ! operator
x <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)


not_x <- (is.na(x[!ind]))
not_x
mean(not_x)
# Create the ind vector
library(dslabs)
data(na_example)
ind <- is.na(na_example)

# We saw that this gives an NA
mean(na_example)

# Compute the average, for entries of na_example that are not NA
mean(na_example[!ind])

