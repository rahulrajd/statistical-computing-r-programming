#install packages
install.packages('ggplot2')
library('ggplot2')
??ggplot
#Select a Dataset to start plotting
data()
#Loading IRIS
head(iris)
colnames(complete_titanic)
#Understading Statistical Summary
summary(iris)

#Following are the essential elements of any plot:
#The ggplot2 is made of three basic elements: Plot = Data + Aesthetics + Geometry.
#Data: It is the dataframe.
#Aesthetics: It is used to represent x and y in a graph. It can alter the colour, size, dots, the height of bars etc.
#Geometry: It defines the graphics type, i.e., scatter plot, bar plot, jitter plot etc.

#Step 1: set data on ggplot
ggplot(data = iris)
#Step 2: set data dimensions using aes 
ggplot(data = iris,mapping=aes(x=Sepal.Length, y=Petal.Length))
#Step 3: we will be using the geom_point() function,you use the addition (+) operator to add the geom layer
ggplot(data = iris, mapping=aes(x=Sepal.Length, y=Petal.Length))+geom_point()
#Step 4: group by target 
ggplot(data = iris, mapping=aes(x=Sepal.Length, y=Petal.Length, col=Species))+geom_point() 
#step5: Create the title and add more information about plot 
ggplot(data = iris, mapping=aes(x=Sepal.Length, y=Petal.Length, col=Species))+geom_point()+ labs(title = "IRIS Dataset", x= "Sepal Length",y="Petal Length")

# Adopted from Matrix Lecture 
table(iris[,"Species"])
#barplot(table(iris[,"Species"]))

#shuffle the rows inside the data for variability
random_indexes_matrix <- sample(nrow(iris))
new_data <- iris[random_indexes_matrix,]
new_data[1:50,]
#Bar graph
ggplot(data=new_data[1:50,], mapping = aes(x = Species)) + geom_bar(color="blue",fill="white",size=3) +theme_minimal()

#Assignment, Plot against Titanic / mtcars dataset 
#reference: http://www.sthda.com/english/wiki/ggplot2-barplots-quick-start-guide-r-software-and-data-visualization
