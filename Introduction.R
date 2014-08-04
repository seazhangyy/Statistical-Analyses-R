## 1.4 Data Objects in R

data("Forbes2000", package = "HSAUR2")
ls() # list the names of all objects currently in the global environment.

str(Forbes2000) # look at the description of the data structure.
## Access the variable names.
names(Forbes2000)

## 1.5 Export and Import Data
## To write the Forbes2000.csv
write.csv(Forbes2000, 'Forbes2000.csv')
## To read the data back into a new object.
Forbes2000new = read.csv('Forbes2000-new.csv')
