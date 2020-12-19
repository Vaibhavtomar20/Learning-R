getwd() # Get Working Directory

# Functions in R
# to create a function with function name divider
divider = function(x,y) {
  result = x/y
  print(result)
}
divider(50,25) # x is assigned 50 and y is assigned 25
divider (100,25) # only need to assign specific values of x and y to execute function

# Multiplication
multiply = function(a,b){
  result = a * b
  print (result)
}
multiply(23,25)
multiply (19,20)


# Variables Names are CASE SENSITIVE 
A=10
a=24

# CONCATENATION AND ARRAYS (append, join)
f <- c(1,2,3,4,5) # eariler "<-" this is used for assigning now "=" is used.
f = c(1,2,3,4,5)
f
f+4 # 4 will be added to all numbers

d = f / 4
d

f+d

f = c(1,2,3,4,5)

# Listing and Deleting Objects (Variables)
ls() # what all objects we have created
rm (a) # to remove particular object
rm (list = ls()) # to remove all variables (after executing this environment will be empty)