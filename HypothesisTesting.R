#One side t test (n<30)
set.seed(42)
#create a sample table of 10 mices  

my_data <- data.frame(
  name = paste0(rep("M_", 10), 1:10),
  weight = round(rnorm(10, 20, 2), 1)
)

head(my_data, 10)
summary(my_data$weight)
#Normality check as the no of samples is less than 30
shapiro.test(my_data$weight)

#null hypothesis: average height of mice is 25
#alternate hypothesis: average height of mice is not 25
#observed: from statistics observed mean is 19.77
res <- t.test(my_data$weight, mu = 25)
res$p.value
res

#tail tests 
#null hypothesis: average height of mice greater 25
#alternate hypothesis: average height of mice is not greater 25
#observed: from statistics observed mean is 19.77

#if you want to test whether the mean weight of mice is less than 25g (one-tailed test)
t.test(my_data$weight, mu = 25, alternative = "less")
#if you want to test whether the mean weight of mice is greater than 25g (one-tailed test)
t.test(my_data$weight, mu = 25,alternative = "greater")

# Two samples T-test
# The unpaired two-samples t-test is used to compare the mean of two independent groups.

#whether the mean of group A (mA) is equal to the mean of group B (mB)
#whether the mean of group A (mA) is less than the mean of group B (mB)
#whether the mean of group A (mA) is greather than the mean of group B (mB)

#In statistics, we can define the corresponding null hypothesis (H0) as follow:
#1 H0:mA=mB
#2 H0:mA≤mB
#3 H0:mA≥mB
#The corresponding alternative hypotheses (H1) are as follow:
#1 Ha:mA≠mB(different)
#2 Ha:mA>mB(greater)
#3 Ha:mA<mB(less)

#Note that:
#Hypotheses 1) are called two-tailed tests
#Hypotheses 2) and 3) are called one-tailed tests

#null hypothesis: average weight of men is equal to female
#alternate hypothesis: verage weight of men is equal to female

women_weight <- c(38.9, 61.2, 73.3, 21.8, 63.4, 64.6, 48.4, 48.8, 48.5)
men_weight <- c(67.8, 60, 63.4, 76, 89.4, 73.3, 67.3, 61.3, 62.4) 
# Create a data frame
two_test_data <- data.frame( 
  group = rep(c("Woman", "Man"), each = 9),
  weight = c(women_weight,  men_weight)
)
two_test_data

res <- t.test(weight ~ group, data = two_test_data, var.equal = TRUE)
res
#if you want to test whether the average men’s weight is less than the average women’s weight
t.test(weight ~ group, data = two_test_data,var.equal = TRUE, alternative = "less")

# if you want to test whether the average men’s weight is greater than the average women’s weight
t.test(weight ~ group, data = two_test_data,var.equal = TRUE, alternative = "greater")


#Z tests 
#Suppose the IQ in a certain population 
#is normally distributed with a mean of μ = 100 and standard deviation of σ = 15.
#create a sample 20 candidates to use it for one month and records their IQ

#install.packages("BSDA")
library(BSDA)

#null hypothesis: New sample data is equal to the mean of the population data
#alternate hypothesis: New sample data is not equal to the mean of the population data
z_data = c(88, 92, 94, 94, 96, 97, 97, 97, 99, 99, 105, 109, 109, 109, 110, 112, 112, 113, 114, 115)
z.test(z_data, mu=100, sigma.x=15)

#Two Sample Z-Test
#Suppose the IQ levels among individuals in two different cities are known to be 
#normally distributed each with population standard deviations of 15.

#A scientist wants to know if the mean IQ level between individuals in city A and city B are different, 
#so she selects a simple random sample of  20 individuals from each city and records their IQ levels

#null hypothesis: mean IQ level between individuals in city A and city B are not equal
#alternate hypothesis: mean IQ level between individuals in city A and city B are equal
cityA = c(82, 84, 85, 89, 91, 91, 92, 94, 99, 99,105, 109, 109, 109, 110, 112, 112, 113, 114, 114)

cityB = c(90, 91, 91, 91, 95, 95, 99, 99, 108, 109,109, 114, 115, 116, 117, 117, 128, 129, 130, 133)

z.test(x=cityA, y=cityB, mu=0, sigma.x=15, sigma.y=15)

#Chi-Square 
file_path <- "http://www.sthda.com/sthda/RDoc/data/housetasks.txt"
housetasks <- read.delim(file_path, row.names = 1)

#The data is a contingency table containing 13 housetasks and their distribution in the couple:
#rows are the different tasks
# 1.values are the frequencies of the tasks done :
# 2. by the wife only
# 3. alternatively
# 4. by the husband only
# 5. jointly

chisq <- chisq.test(housetasks)
chisq
print(chisq$p.value)
