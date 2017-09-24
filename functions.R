# Functions in R
# by Ian Begeman

# Fahrenheit to Kelvin
fahr_to_kelvin <- function(temp){
  kelvin <- 273.15 + ((temp - 32) * (5/9))
  return(kelvin)
}


# Kelvin -> Celsius
kelvin_to_celsius <- function(t){
  celsius <- t - 273.15
  return(celsius)
}

# Fahrenheit -> Kelvin
fahr_to_celsius <- function(temp){
  kelvin <- fahr_to_kelvin(temp)
  celsius <- kelvin_to_celsius(kelvin)
  return(celsius)
}


# Exercise

# Define a function "fence" - which takes 2 vectors and returns the second vector concatenated to the first
fence <- function(a,b){
  output <- c(b,a)
  return(output)
}

test_vec1 <- c("Ian","is","awesome")
test_vec2 <- c(12,15,32,3)


input_1 <- 20
mySum <- function(input_1, input_2 = 20){
  print(input_1)
  print(input_2)
  output <- input_1 + input_2
  return(output)
}

# Function to center my data
#   desire - value to center on
center <- function(data, desired){
  # return a new vector containing original data centered around
  # the desired value
  # Example : center(c(1,2,3), 0) => c(-1,0,1)
  new_data <- (data - mean(data)) + desired
  return(new_data)
}

dat <- read.csv("data/inflammation-01.csv", header = F)
centered <- center(dat[,4], 0)

# ---- Apply Functions ----
patient1 <- dat[1,]

avg_day_inflammation <- apply(dat, 2, mean)
max_day_inflammation <- apply(dat, 2, max)
min_day_inflammation <- apply(dat, 2, min)


# Exercise:
# create a function called "analyze" whose imput is the name of a dataset (e.g. "data/inflammation-01.csv") and ouput a plot of mean inflammation per day
analyze <- function(name){
  mean_inf <- apply(name, 2, mean)
  plot(mean_inf)
}

analyze <- function(filename){
  dat <- read.csv(filename, header = F)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
}