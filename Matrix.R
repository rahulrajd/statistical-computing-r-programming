# Create Matrix 
?matrix

matrix(5, 3, 3)

v1 = c(1,2,3,4)

matrix(v1)

#by default, the placement of values will be column wise, 
#if we need to place values by row, we need to set flag to T/True 
matrix(v1,
       nrow = 2,
       ncol = 2)

matrix(v1,
       nrow = 2,
       ncol = 2,
       byrow = T)

m1<- matrix(v1,
            nrow = 2,
            ncol = 2)
?row.names()

row.names(m1) <- c("A","B")
colnames(m1) <- c("col1","col2")

m1
# Ways to create matrix 
v2 <- c("Computional Geometry","Economics","Data Analytics")
v3 <- c(1,2,4)

m2 <- rbind(v2,v3)
m3 <- cbind(v2,v3)
# Indexing

#matrix[rows,columns]
#selecting rows can be done specifying row names or row numbers by notation [rnum,]
#this selects entire row with all columns 
m2
m2[1,]
m2["v2",]
m2[0:2,]

#selecting columns can be done specifying column names or column numbers by notation [,cnum]
#this selects entire column with all the rows
m3
m3[,1]
m3[,"v3"]
m3[,0:2]


#Reassigning of matrix values 
m3
m3[2,1] <- "Java"
m3
#-----------------------------------------------------------------------------
#Matrix Operations 

?sample.int()

mat1 <- sample.int(100,9)
mat2 <- sample.int(100,9)
#reassigning to the variable
mat1 <- matrix(mat1,3,3)
mat2 <- matrix(mat2,3,3)

mat1
mat2

mat1 + mat2

mat1 - mat2

mat1 * mat2
#-----------------------------------------------------------------------------
#subsetting

mat <- sample.int(100,25)

mat <- matrix(mat,
              nrow = 5,
              ncol = 5)
mat

#subselecting of values can be performed using indexing
# matrix_variable[start_num_row:until_num_row,start_num_col:until_num_col]
mat
mat[2:3,3:4]

#subsetting individual rows and columns specified to its index
mat[c(2,4),]
mat[c(2,4),c(2,5)]

#checking for logical 

#Multiple vectors stacked together forms a matrix, 

is.matrix(mat)
is.vector(mat)

s <- mat[1,]
s
is.vector(s)
is.matrix(s)

#-----------------------------------------------------------------------------
#Performing Matrix sub setting on dataset - Will give you better understanding for data manipulation 
data <- iris
data
data[1,]
data[,1]
data[,1]<-round(data[,1])

data <- iris
data[,"Species"]
?unique()

#Unique function will return all the unique values with in the dataset
#so you can further perform operations on it 

unique(data[,"Species"]) 
length(unique(data[,"Species"]))

#Table function can be used to create a categorical representation of the data with oits variable name
data
table(data[,"Species"])
barplot(table(data[,"Species"]))

#shuffle the rows inside the data for variability
random_indexes_matrix <- sample(nrow(data))
new_data <- data[random_indexes_matrix,]

new_data
#select the top 50 rows and plot the distrubution of Species column

table(new_data[1:50,"Species"])
barplot(table(new_data[1:50,"Species"]))
#Selecting rows and columns within datasets
data

#EXAMPLE: (In Future - During Linear Modelling) Seperting Feature columns and Target Columns 
data
x <- data[,1:4]
y <- data[,"Species"]

x
y

#-----------------------------------------------------------------------------
#NEXT Lecture 
#Plotting 
#Custom Functions

#Assignment - Implement the functions discussed above and matrix operations on Titanic Dataset
