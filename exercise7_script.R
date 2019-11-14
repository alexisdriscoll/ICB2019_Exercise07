setwd("/Users/alexisdriscoll/Documents/junior/ICB_HW/ICB2019_Exercise07")
# task 1: write a function that returns the odd rows of any dataframe passed as an argument
oddrows <- function(dataframe){
  return(dataframe[seq(1, nrow(dataframe), by = 2),])
}
#test
df <- read.csv(file = "iris.csv")
print("odd rows in iris.csv")
print(oddrows(df))

# task 2: repeat a subset of last week's exercise, but write functions to accomplish these tasks
iris <- read.csv(file = "iris.csv")

# return the number of observations for a given species included in the data set
speciesobs <- function(species){
  count <- 0
  for (i in iris[seq(1, nrow(iris)),5])
    if (i == species)
      count <- count+1
  return(count)
}
#test
print("number of observations of virginica in iris.csv")
print(speciesobs("virginica"))

# return a dataframe for flowers with Sepal.Width greater than a value specified by the function user
largerwidths <- function(width){
  return (iris[iris[,2]>width,])
}
#test
print("flowers with Sepal.Width > 3.5 in iris.csv")
print(largerwidths(3.5))

# write the data for a given species to a comma-delimited file with the given species name as the file name
speciesfile <- function(x){
  write.csv(iris[iris[,5]==x,], file = paste(x, ".csv", sep = ""), row.names=FALSE)
}
#test
speciesfile("setosa")
print("data for setosa flowers in setosa.csv")
print(read.csv(file = "setosa.csv"))
