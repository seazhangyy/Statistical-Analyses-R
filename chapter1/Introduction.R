## 1.4 Data Objects in R

data("Forbes2000", package = "HSAUR2")
ls() # list the names of all objects currently in the global environment.

str(Forbes2000) # look at the description of the data structure.
# Access the variable names.
names(Forbes2000)

## 1.5 Export and Import Data

# To write the Forbes2000.csv
write.csv(Forbes2000, 'Forbes2000.csv')
# To read the data back into a new object.
Forbes2000new = read.csv('Forbes2000-new.csv')

## 1.6 Basic Data Manipulation

# Access a variable by its name.
companies <- Forbes2000[,'name']
# Or you can do this.
companies <- Forbes2000$name
# Print the firt 4 vars.
companies[-(4:length(companies))]
# If you want to subset some rows and cols.
Forbes2000[1:3, c('name', 'sales')]
# The three top sellers are
order_sales <- order(Forbes2000$sales)
companies[order_sales[1:3]]

## 1.7 Customing Analyses

# source the my function into R.
source('myfun.R')

