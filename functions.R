# functions 
my_first_function <- function(){
  print("Triggered a function")
}

my_first_function()

#system defined functions 
min(sample.int(25,10))

#Function parameters 
evenOdd <- function(x){
  if(x %% 2 == 0)
    return("even")
  else
    return("odd")
} 

print(evenOdd(4))
print(evenOdd(3))

#Multiple input and Multiple output fucntions 

calculate_age <- function(name,dob){
   #dob : DD/MM/YYYY
  date <- as.Date(dob,format="%d/%M/%Y")
  dayssofar <- Sys.Date() - date
  sprintf("%s is %i days old as of today",name,dayssofar)
}
calculate_age(name="sim",dob = "011/12/1999")

bmi <- function(weightInKg, heightInMetres){ 
  return (weightInKg / heightInMetres ^ 2)
}

bmiOfPerson <- bmi(weightInKg=70, heightInMetres=1.75)

bmiOfPerson
#inline functions
square <- function(length) length^2

square(25)

#using apply

#apply is used when you need to apply for column / row wise
#Syntax = apply(X, MARGIN, FUN)
#MARGIN=1`: the manipulation is performed on rows
#MARGIN=2`: the manipulation is performed on columns

data <- iris
apply(data[,1:4],MARGIN =2,sum) 
apply(data[,1:4],MARGIN =1,sum)

?lapply
data <- mtcars
data

mpg_cat <-function(mpg){
if (mpg>30){
  return("HIGH")
}else if(mpg>20){
  return("MEDIUM")
}
return ("LOW")
}

lapply(X = data$mpg, FUN = mpg_cat)

list_op <- lapply(X = data$mpg, FUN = mpg_cat)
is.list(list_op)
is.matrix(list_op)
# we cannot use list directly while wranling the data, so we need to convert into vectors explicity 

matrix_op <- sapply(X = data$mpg, FUN = mpg_cat)
is.list(matrix_op)
is.vector(matrix_op)
data$mpg_status <- matrix_op

data

#passing arguments to fucntions with in apply functions
check_within_range <- function(mpg,LOW,HIGH){
  if (mpg >= LOW & mpg <= HIGH){
    return(TRUE)
  }
  return(FALSE)
}
data$within_range <- sapply(X = data$mpg,FUN = check_within_range,LOW=20,HIGH=30)
data

#mapply apply functions on multiple vectors at same time and return a single vector
mpg_within_standard_range <- function(mpg,cyl){
  if(cyl==4){
    return(check_within_range(mpg,LOW=23,HIGH=31))
  }else if(cyl==6){
    return(check_within_range(mpg,LOW=18,HIGH=23))
  }
  return(check_within_range(mpg,LOW=13,HIGH=18))
}
mapply(FUN = mpg_within_standard_range,mpg=data$mpg,cyl=data$cyl)

data$standard_Range <- mapply(FUN = mpg_within_standard_range,mpg=data$mpg,cyl=data$cyl)
data


