# Its time that we load data in R.
# Most common way to get data is reading comma separated values(CSV)

# Reading CSVs
theUrl = "https://www.jaredlander.com/data/RetailFood.csv"
# visit https://www.jaredlander.com/data/ for other Datasets
RetailFood = read.table(file=theUrl, header=TRUE, sep =",")
head(RetailFood) # to read first 6 rows with all columns

#It might be tempting to use read.csv but that is more trouble than it is worth,
#...and all it does is call read.table with some arguments preset.

# Sometimes CSVs(or tab delimited files) are poorly built, 
# where the cell separator has been used inside a cell.
# In this case read.csv2(or read.delim2)should be used instead of read.table.

# Reading Excel Data - Not worth the Effort.
# Unfortunately, it is difficult to read Excel data into R - Requires additional packages to be installed.
# Convert into CSV and read.

# Reading Text Files
#Garden = read.table("C:\\Users\\sridhar.v\\Documents\\R Data\\t.test.data.txt",header=TRUE,sep="")
#head(Garden)

#R Binary Files
# save the tomato data.frame to Disk
save(RetailFood, file="C:\\Users\\Vaibhav\\Documents\\R\\Data Structure\\RetailFood.rdata")
# remove tomato from memory
rm(RetailFood)
# Check if it still exists
head(RetailFood)
# read it from the rdata file
load("C:\\Users\\Vaibhav\\Documents\\R\\Data Structure\\RetailFood.rdata")
head(RetailFood)

# Read data from anywhere in the Disk/Computer
# myData = read.csv(file.choose()) # No working directory setup is needed.
# but if we use file.choose, there are issues with header.