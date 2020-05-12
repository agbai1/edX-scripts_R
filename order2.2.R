# Access population from the dataset and store it in pop
pop <- murders$population

# Use the command order to find the vector of indexes that order pop and store in object ord
ord <- order(pop)

# Finds the index number of the entry with the smallest population size
ord[1]  # because ord first entry is the index of the smallest, and the second entry is the index
        # of the second smallest, etcetera



