### Sorting

v* vector `sort(info)` sorts vectors in increasing order

**Always remember to load folder from library and access particular data set using data(nameOfDataSet)**

* `order()` takes a vector and returns indices that sort the vector parameter

**To order the states by murder totals**
* `index <- order(murders$total)` stores the vector that holds the murder total for each state

* `murders$states[index]` defines index with the order of the totals and then index the murders. 

* `max(vectorDefinition)` gives the max entry number

* `which.max()` gives the index of the max number

* `i_max <- which.max(vector)` saves the max index in i_max

* `vectorName[i_max]` tells you which element has the max. 

* vice-versa with i_min

### Rank
* For any given list, `rank` gives you a vector with the rank of the first entry, second entry, et cetera.
* For example 
```
x <- c(31, 4, 15, 92, 65)
```

* `rank(x)`    
	* returns ranks (smallest to largest)

### Understanding Index in R
* `x <- c(31, 4, 15, 92, 65)`
* `sort(x)`   # puts elements in order

* `index <- order(x)`  # returns index that will put x in order
* `x[index]`    # rearranging by this index puts elements in order

