### Keyboard shortcuts:

* Save a script: Ctrl+S on Windows and Command+S on Mac

* Run an entire script:  Ctrl+Shift+Enter on Windows Command+Shift+Return on Mac, or click "Source" on the editor pane

* Run a single line of script: Ctrl+Enter on Windows and Command+Return on Mac while the cursor is pointing to that line, or select the chunk and click "run"

* Open a new script: Ctrl+Shift+N on Windows and Command+Shift+N on Mac

* `ls()` shows you all variables saved in workspace
* `print(a)` prints out the value of `a` on the console

* `args(log)`  tell you what arguments the function needs
`prints: function (x, base=exp(1));`
* which means you can change the base of log. 
* For example, log base 2 of 8: `log(8, exp=(2))`

* ```
?log
# or
hekp("help") 
```
* The above statements show you some documentation for log

* `data()` shows list og inbuilt datasets that can be use to perform analysis

* variables have to start with a letter and can't have spaces

**Data Types**
* Best way to store data in R. Works like a table with rows and columns

* Data Frames are most common way to store data

* Data frames can store different data type into one single object

**To access data sets**
* `library(nameOfDataSet)`  to load the data set

* `data()` to view the list of the data set in R currently

* `class(nameOfDataSet)` tells you the type of data the data set is. 

* `str(nameOfDataSet)` shows the data contained in the Data Set. 

* `murders$population` and its written like (nameOfDataSet$elementOfDataSetToSearch).`$` called The Accessor is used to access variables in data sets.

* `head(nameOfDataSet)` shows the first 6 lines in the data set

* `names(nameOfDataSet)` shows the names of the columns/variables of a data set

**The order of the rows of entries in the list is preserved in the data table**

	* this helps in manupulating variables based on results of another. 
* `vectors` the object, `murders$population` has 51 elements and these are called vectors. 	

### Types of Vectors
* character vectors - variables with alphabets
* numeric vectors -  variables with numbers
* logival vectors - can be true or false. e,g `z <- 3 == 2` result: `FALSE`

**Factors**
* factors appear alot of data science 
* used to store categorial data
* e.g. `murders$regions` are categorical. There is only 4 categories and each state is in one of these four.
* `levels(murders$region)` to show the different categories 
* Storing data categorically is memory efficient. 

* Levels are also stored as integers in the background becuase integers are smaller memory-wise than characters.


## Generating Data
* `1:5 or seq(1, 5)` can both to used to generate the first 5 integers

* `[["population"]]` is another way to use the accessor `$`

**Option + Command + L TO CLEAR**

* # We can confirm two of the same thing with
identical(1, 1)

* `table(x)` where x is a vector, takes a vector and returns the frequency of each unique element

* `> print(is.factor(murders$region))` used to check if a vector is a factor is not

* `> nlevels(movielens$genres)` tells you the total number of levels of a factor.

### Subsetting vectors
* `codes[c(1,3)]` shows the 1st and 3rd vectors
* `codes[1:3]` shows the first 3 vectors

### Vector Coercion
* Example 
```
c(1, "canada", 3)
```
* R *coerced* the data into characters
* `typecasting` function as.character() converts numbers into characters.

## Typecasting -  changing characters to numerics and vice-versa
*  `typecasting` function as.numeric() converts characters into numbers.
* In R, missing data is assigned the value NA.

* Vectors can be created by concatenating
	`cost <- c(50, 65, 70, 95, 115)`

* Vectors can also be created by specific increasing sequence 
*  `seq(2, 10, length.out = 5)` _length.out = 5_ lets us generate sequences that are increasing by the same amount but are of the prespecified length.
