#Use the $ operator to access the population size data 
#and store it in the object pop.
#Then use the sort function to redefine pop so that it is sorted.
#Finally use the [ operator to report the smallest population size.

# Load libraries
library(dslabs)
data("murders")

pop <- murders$population
pop <- sort(pop)

pop[1]
