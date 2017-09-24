# Conditionals in R
# by Ian Begeman

num <- 3
if(num > 5){
  print("greater than 5!")
} else {
  print("try again!!!")
}
print("done.")

num <- 53
if(num > 100){
  print("greater than 100!!")
}

# Exercise : write a function to return (0, -1, 1) based on the sign of the input integer. Cal the function "sign"
sign <- function(num){
  if(num>0){
    print(1)
  }
  if(num<0){
    print(-1)
  }
  if(num==0){
      print(0)
  }
}
  



if ((1 > 0) & (-1 > 0)){
  print("both parts are true")
} else{
  print("at least one part is false")
}

if ((1 > 0) | (-1 > 0)){
  print("at least one part is true")
} else{
  print("both parts are false")
}

if (1 > 0){
  if (-1 > 0){
    print("both are true")
  } else("at least one is false")
} else{
  print("At least one is false")
}



#Grabbing Odd numbers
n100 <- seq(1,100)
getOdd <- function(v){
  return(v[v %% 2 == 1])
}


# Exercise : 
# Write a function which takes 3 arguments
#   v - a vector of integers
#   x - a number to check for even divisibility
#   y - a second number to check for even divisibility
# Output should be all numbers in "v" that are evenly divisible by both "x" and "y"
# Example : double_div(c(1,2,3,4), 2, 4) => [4]
# Note : you must use a for-loop for this

divxy <- function(v,x,y){
  seqv <- seq(1,v)
  return (seqv[(seqv %% x == 0) & (seqv %% y == 0)])
}

divxy <- function(v,x,y){
  for(i in 1:v){
  if((i %% x == 0) & (i %% y == 0)){
    print(i)}
  }
}

divxy2 <- function(v,x,y){
  for(e in v){
    if((e %% x == 0) & (e %% y == 0)){
      print(e)}
  }
}

divxy3 <- function(v,x,y){
  return(v[(v %% x == 0) & (v %% y == 0)])
}
