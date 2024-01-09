#Creating Vectors 

#indexing starts from 1 unlike other programming languages 
vector1 <- c(1,2,3,4)

is.numeric(vector1)

is.integer(vector1)

is.double(vector1)

vector2 <- c(4L,5L)

is.integer(vector2)

vector3 <- c("hi","hello",8)

is.numeric(vector3)
is.character(vector3)


seq(1,10,2)
rep(c(2,3),5)
#Accessing and Addressing Vectors
vector4 <- c(23,34,4,5,6)  
vector4[1]
vector4[2]
vector4[-1]
vector4[c(4,1)]

#Vector Operations 

#Vector Arithmetic 
v1 <- c(1,2,3,4)
v2 <- c(6,7,8,9)

v1 + v2

#Handling operations with mismatch Data Types - WONT WORK
v3 <- c("0","3")
v1 + v3

#Guess What would happen ?
v4 <- c(3,4)
v1 + v4

v5 <- c(10,12,11)
v1 + v5

#Greater or Lesser -  Boolean  
v1 > v2

#Multiplication
v1 * v2

#Guess What would happen ?
v4 <- c(3,4)
v1 * v4

#We can also perform sorting on vectors and pass them to functions

sort(v5)
sort(v5,decreasing = T)

#create a vectors using combine method, seq and rep. 
#1. implement loops and conditions for your own Use case



