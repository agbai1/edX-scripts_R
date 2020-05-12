# Loading data
library(dslabs)
data(murders)

# Loading dplyr
library(dplyr)

#   Ques. 1 Instructions
# * Use the function mutate to add a murders column named rate with the per 
#   100,000 murder rate. 
# * Make sure you redefine murders as done in theexample code above. 

# Remember the murder rate is defined as the total 
#   murders divided by the population size times 100,000.

# Defining rate
rate <-  murders$total/ murders$population * 100000

# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest
murders <- mutate(murders, rate = total / population * 100000)

#   Ques. 2 Instructions
# * Use the function mutate to add a column rank containing the rank, 
#   from highest to lowest murder rate. Make sure you redefine murders.

murders <- mutate(murders, rank = rank(-rate))
head(murders)

#   Ques. 3 Instructions
# * Use select to show the state names and abbreviations in murders. 
#   Just show it, do not define a new object.

# Use select to only show state names and abbreviations from murders
select(murders, state, abb)


#   Ques. 4 Instructions
# * Use filter to show the top 5 states with the highest murder rates. 
#   After we add murder rate and rank, do not change the murders dataset, 
#   just show the result. Note that you can filter based on the rank column.

# Filter to show the top 5 states with the highest murder rates
filter(murders, rank <= 5)

#   Ques. 5 Instructions
# * Create a new data frame called no_south that removes states from the South region. 
# * How many states are in this category? You can use the  function nrow for this.

# Use filter to create a new data frame no_south
no_south <- filter(murders, region != "South")

# Use nrow() to calculate the number of rows
nrow(no_south)

#   Ques. 6 Instructions
# * Create a new data frame called murders_nw with only the states from the Northeast and the West.
# * How many states are in this category?

# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw <- filter(murders, region %in% c("Northeast","West"))
murders_nw

# Number of states (rows) in this category 
nrow(murders_nw)

#   Ques. 7 Instructions
# * Add a murder rate column and a rank column as done before
# * Create a table, call it my_states, that satisfies both the conditions: 
#   it is in the Northeast or West and the murder rate is less than 1.
# * Use select to show only the state name, the rate and the rank

murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))
murders

# Create a table, call it my_states, that satisfies both the conditions 
my_states <- filter(murders, rate < 1 & (region %in% c("Northeast","West")))
my_states

# Use select to show only the state name, the murder rate and the rank
select(my_states, state, rate, rank)

#   Ques. 8 Instructions
# * Repeat the previous exercise, but now instead of creating a new object, 
#   show the result and only include the state, rate, and rank columns.
# * Use a pipe %>% to do this in just one line.

# show the result and only include the state, rate, and rank columns, all in one line
my_states <- filter(murders, rate < 1 & region %in% c("Northeast","West")) %>% select(state, rate, rank)



# Ques. 8 Instructions
# Loading the libraries
library(dplyr)
data(murders)

# Use one line of code to create a new data frame, called my_states, that has murder rate and rank 
# columns, considers only states in the Northeast or West which have a murder rate lower than 1, and contain
# only the state, rate, and rank columns. The line should have four components separated by three %>% operators:
# * The original dataset murders
# * A call to mutate to add the murder rate and the rank.
# * A call to filter to keep only the states from the Northeast or West and that have a murder rate below 1.
# * A call to select that keeps only the columns with the state name, the murder rate, and the rank.
# The line should look something like this my_states <- murders %>% mutate something %>% filter something
# %>% select something. Columns in the final data frame MUST be in the order: state, rate, rank.

my_states <- murders %>% mutate(rate =  total / population * 100000, rank = rank(-rate))%>% filter(rate < 1 & region %in% c("Northeast","West")) %>% select(state, rate, rank)
my_states


