# Data Structures in R
# Data come in many types and structures which can pose a problem for some...
# ...analysis environments but R handles them with ease.

## VECTOR
# The most common data structure is the one-dimensional vector
# Vector forms the basis of everything in R.
# A vector is collection of elements of same type.
# (ie) A vector cannot be of mixed type.
# R is a Vectorized Language. That means operations are applied to each element of the vector automatically,
# .., without the need to loop through the vector.
# This is a powerful concept and vector plays a crucial and significant role in R.


## DATA FRAME
# Data Frames(DF) - Most useful features of R & also cited reason for R's ease of use.
# In dataframe, each column is actually a vector, each of which has same length.
# Each column can hold different type of data.
# Also within each column, each element must be of same type, like vectors.


## MATRICES
# A matrix (plural matrices) is a rectangular array or table of numbers, symbols, or expressions...
#..., arranged in rows and columns.(i.e.) 2-Dimensional Array
# Similar to data.frame(RxC) and also similar to Vector
# Matrix - Element by element operations are possible.


## ARRAYS
# Arrays - An array is essentially a multidimensional vector.
# It must all be of the same type and 
# ...individual elements are accessed using Square Brackets.
# First element is Row(R) Index, Second Element is Column(C) Index and 
# the remaining elements are for Outer Dimensions (OD).


## LIST
# Lists - Stores any number of items of any type.
# List can contain all numerics or characters or...
#...a mix of the two or data.frames or recursively other lists.


# Sometimes data requires more complex storage than simple vectors.
# Data Structures - Apart from Vectors, we have Data Frames, Matrix, List and Array.

# Data Frames(DF) - Most useful features of R & also cited reason for R's ease of use.
# In dataframe, each column is actually a vector, each of which has same length.
# Each column can hold different type of data.
# Also within each column, each element must be of same type, like vectors.

# Creating a Dataframe from vectors

x = 10:1
y = -4:5
q = c("Hockey","Football","Baseball","Curlin","Rugby","Lacrosse",
      "Basketball","Tennis","Cricket","Soccer")
# to combine these 3 vectors, we will use data frame
theDF = data.frame(x,y,q) # this would create a 10x3 data.frame with x, y and q as variable names
theDF
str(theDF)# Very important - Str - Structure
q = as.factor(q) # to convert q as a factor and then assign it to q.

# Assigning Names
theDF = data.frame (First=x, Second =y, Sport = q)
theDF


# Checking the dimensions of the DF.
nrow(theDF)
ncol(theDF)
dim(theDF)
names (theDF)
names(theDF)[3] # whenever we require specific row or column, we use[].
rownames(theDF)

# Head and Tail
head(theDF)# First 6 rows with all columns
head(theDF, n=7) #first 7 rows with all columns
tail(theDF)# last six rows with all columns

class(theDF)

# Accessing Individual Column using $
theDF$Sport # gives the third column named Sport

# Accessing Specific row and column
theDF[3,2] # 3rd row and 2nd Column
theDF[3,2:3] # 3rd Row and column 2 thru 3
theDF[c(3,5), 2]# Row 3&5 from Column 2; 
# since only one column was selected, it was returned as vector and hence no column names in output.

# Rows 3&5 and Columns 2 through 3
theDF[c(3,5), 2:3]

theDF[ ,3] # Access all Rows for column 3
theDF[ , 2:3]

theDF[2,]# Access all columns for Row 2
theDF[2:4,]
theDF[ , c("First", "Sport")]# access using Column Names

theDF[ ,"Sport"]# Access specific Column
class(theDF[ ,"Sport"])

theDF["Sport"]# This returns the one column data.frame
class(theDF["Sport"]) # Data.Frame

theDF[["Sport"]]#To access Specific column using Double Square Brackets
class(theDF[["Sport"]]) # Factor

theDF[ ,"Sport", drop = FALSE]# Use "Drop=FALSE" to get data.fame with single sqaure bracket.
class(theDF[ ,"Sport", drop = FALSE]) # data.frame

theDF[ ,3, drop = FALSE]
class(theDF[ ,3, drop = FALSE]) # data.frame

# To see how factor is stored in data.frame
newFactor = factor(c("Pennsylvania","New York","New Jersey","New York","Tennessee","Massachusetts","Pennsylvania","New York"))
newFactor
# model.matrix(~newFactor -1)
# ? model.matrix()