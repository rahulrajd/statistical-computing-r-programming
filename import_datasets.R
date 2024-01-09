#install Data sets package 

?read.csv()

#using of inbuilt data sets 
datasets::iris
iris_data <- iris

?head()
head(iris_data)
colnames(iris_data)


#Importing Data sets
getwd()
titanic_dataset = read.csv("R Scripts/data/Titanic.csv")
head(titanic_dataset)

#num of rows, columns and summary
nrow(titanic_dataset) # Count number of rows
ncol(titanic_dataset) # Count number of columns
head(titanic_dataset,n=5) # print top 5 rows of dataset
tail(titanic_dataset,n=5) # print last 5 rows of dataset
str(titanic_dataset) # print structure of the dataset
summary(titanic_dataset) # print summary of the dataset

#access column data 
titanic_dataset$age


#loading data set using file chooser 
?read.delim
imported_data <- read.delim(file.choose(),header = F)
head(imported_data)
colnames(imported_data)


#Assignment 
#refer -  https://www.datacamp.com/tutorial/r-data-import-tutorial
#1. Download a small dataset from kaggle / UCI Data Repository https://archive.ics.uci.edu/datasets
#2. Load the datasets, explore the headers & column names


#NEXT Lecture 
#Matrics 
#Slicing and parsing Datasets 
#Basics operations on Datasets 

