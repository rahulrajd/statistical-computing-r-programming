#Statistics

#Mean
b <- c (23,22,1,5); mean(b)
#Median
b <- c (23,22,1,5)
b <- sort(b)
b
median(b)
b <- c (23,22,45,1,5)
b <- sort(b)
b
median(b)
#Standard Deviation 
list_heights_people <- c(173,147,140,163,146,161)
mean_list_heights_people <- mean(list_heights_people)
mean_list_heights_people
#Calculating SD using sd function
?sd()
sd(list_heights_people)

#Probablity Distrubutions 

#Uniform Distrubutions 
library(ggplot2)
?runif()
data <- runif(1000,0,10)
data[1:10]
data[11:20]
data[20:30]
#Density plots are used to study the distribution of one or a few variables. 
#Checking the distribution of your variables one by one is probably the first task you should do when you get a new dataset
plot(density(data))
#Normal Distributions

#Considering the example from from above 
sampling_mean <- c(173,147,140,163,146,161)
sampling_sd <- sd(c(173,147,140,163,146,161))

#generates random values from standard deviation and 
random_normal_sampling <- rnorm(10,mean=sampling_mean, sd=sampling_sd)
random_normal_sampling
#Observe, we have created sample similar to the initial data by taking its mean and sd 
plot(density(random_normal_sampling))


