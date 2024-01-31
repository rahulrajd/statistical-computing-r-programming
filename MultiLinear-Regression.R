# Multi-Linear Regression
library(ggplot2)
#data description - https://archive.ics.uci.edu/dataset/186/wine+quality
data = read.csv("winequality-red-altered.csv",sep = ";")

head(data)
# Data Description 

summary(data)
plot(data)
#Check for missing data 
#The function complete.cases() returns a logical vector indicating which cases are complete.
# We have a logical not "!" operator in front of complete.cases to make it false condition
data[!complete.cases(data),]

ggplot(data, aes(x = quality)) +
  geom_histogram(binwidth = 0.2, fill = "blue", color = "red", alpha = 0.5) +
  labs(title = "Quality - Target Distrubution", x = "Quality", y = "Frequency") +  theme_minimal()
# Data Manipulation 
# Handling Missing Data 
nrow(data)
#Drop all the data where missing rows are their
non_missing_data <- na.omit(data)
nrow(non_missing_data)

#creating a new data frame to save values by imputation methods 
value_imputed <- data.frame(
  original_fixed.acidity = data$fixed.acidity,
  imputed_zero = replace(data$fixed.acidity, is.na(data$fixed.acidity), 0),
  imputed_mean = replace(data$fixed.acidity, is.na(data$fixed.acidity), mean(data$fixed.acidity, na.rm = TRUE)),
  imputed_median = replace(data$fixed.acidity, is.na(data$fixed.acidity), median(data$fixed.acidity, na.rm = TRUE))
)
value_imputed
#Compare Original with all other columns 

#we will be dropping all the missing columns and going ahead with the example
data <- na.omit(data)

# Transforming Categorical Data 
# as part of learning lets treat the one tep column to the dataset
#nrow(data)/2 to make sure we repeat only values to the length of the dataset
data$temp_cat <- rep(c("red_wine","white_wine"),nrow(data)/2)
data

#Step 1: Look for the categorical variables in the dataset 
summary(data)
#Step 2: Grab the Column from the dataset if its binary .i.e. two unique characters in column
data$Converted_catdata <- ifelse(data$temp_cat == "red_wine", 1, 0)
data$Converted_catdata
#If you have more then two variables consider using a library fastDummies
?cut()
sort(unique(data$quality))
data$multiple_cat_cols <- cut(data$quality,
              breaks =sort(unique(data$quality)),
              labels=c('Bad', 'OK', 'Good', 'Great',"Awesome"))

data$multiple_cat_cols

install.packages("fastDummies")
library(fastDummies)
data <- dummy_cols(data,select_columns = "multiple_cat_cols")
data

# Finding Correlation 
data <- non_missing_data
data

#default uses pearson correlation
cor(data)

round(cor(data),
      digits = 2 # rounded to 2 decimals
)

install.packages("corrplot")
library(corrplot)

corrplot(cor(data))

corrplot(cor(data),
         method = "number"
)
corrplot(cor(data),
         method = "number",
         type = "upper",
         # show only upper side
)
#if We find any two vectors are highly correlated, we can use any one of them to model based on the nature of data between them

# Modelling on Data 
mul_lm = lm(formula = quality ~ fixed.acidity + volatile.acidity +
              citric.acid + residual.sugar +
              chlorides + free.sulfur.dioxide +
              total.sulfur.dioxide + density +
              pH + sulphates+alcohol,
                  data = data)

summary(mul_lm)
length(mul_lm$residuals)
hist(mul_lm$residuals)
# Prediction Process 
apply(subset(data,select=-quality), 2, function(data) c(Mean=mean(data), Sd=sd(data)))
#We need to transpose the rows and columns 
?t
t(apply(subset(data,select=-quality), 2, function(data) c(Mean=mean(data), Sd=sd(data))))
sampling_data <- t(apply(subset(data,select=-quality), 2, function(data) c(Mean=mean(data), Sd=sd(data))))

data.frame(sampling_data)
sample_input <- data.frame(check.names = F)

#debugging purposes
for (i in 1:nrow(sampling_data)){
  print(sampling_data[i,][2])
  print(row.names(sampling_data)[i])
  print(rnorm(1, mean = sampling_data[i,][1], sd =sampling_data[i,][2]))
  break
}
temp = c()
for (i in 1:nrow(sampling_data)){
  tem = c(temp,rnorm(1, mean = sampling_data[i,][1], sd =sampling_data[i,][2]))
}
temp
temp <- data.frame(t(temp))
colnames(temp) <- colnames(subset(data,select=-quality))
temp
predict(mul_lm,temp)

#############################################
#WE WILL BE USING THE SAME SCRIPT TO DO STATISTICAL TESTS AFTER VISITING 
#HYPOTHESIS CONCEPTS BY CREATING TWO MODELS FROM TEH CORRELATION INFORMATION
