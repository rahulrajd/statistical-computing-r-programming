#Assigning Values to Variables 
#variable_name <- value

#DATA TYPES
#Double
e <- 3.14
typeof(e)

#Integer
e <- 3L
typeof(e)

#Complex
e <- 2 + 3i
typeof(e)

#Character
e <- "Hello World"
typeof(e)

#Logical
e <- TRUE
typeof(e)

#--------------------------------------------------------------------
#CLEAR THE CONSOLE & ENV
#Numerical Operations
x <- 10.1
y <- -15.2

#Addition
z <- x + y
z

#Subtraction
z <- x - y
z

#Multiplication
z <- x * y
z

#Division
z <- x / y
z

#Modulus
z <- x %% y
z

#Maximum
z <- max(x,y)
z

#Minimum
z <- min(x,y)
z

#Square root
z <- sqrt(x)
z

#Absolute 
z<- abs(y)
z

#ceiling 
z <- ceiling(x + y)
z

#Flooring
z <- floor(x + y)
z

#-----------------------------------------------------------------------
#CLEAR THE CONSOLE & ENV
#String Operations 
var1 <- "Hello"
var2 <- "World"

sprintf("Total Number of characters in string : %d",nchar(paste(var1,var2)))

search_character <- "H"
sprintf("Is search Character found: %s",grepl(search_character,var1))

#-----------------------------------------------------------------------
#CLEAR THE CONSOLE & ENV
#Data Type Conversions
var1 <- "Hello World"
var2 <- TRUE
var3 <- 2023.0

as.numeric(var2)
as.numeric(var3)

as.logical(var1)
as.logical(var2)
as.logical(Var3)

as.character(var2)
as.character(var3)

as.integer(var3)
#-----------------------------------------------------------------------
#CLEAR THE CONSOLE & ENV
#Condition Statements

X = 1
if (typeof(X) == "double"){
  sprintf("Data Type of the variable now is: %s",typeof(as.integer(X)))
}

# Finding the Greatest of three numbers 
A <- rnorm(1)
B <- rnorm(1)
C <- rnorm(1)

if ((A > B) & (A > C)){
  sprintf("A is Greater: %f",A)
}else if (B > C){
  sprintf("B is Greater: %f",B)
}else{
  sprintf("C is Greater: %f",C)
}
