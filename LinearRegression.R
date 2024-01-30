library(ggplot2)
#Linear Regression 
?cars

?stat_smooth

ggplot(cars,aes(speed,dist))+
  geom_point()+
  theme_light()+
  labs(x = "speed",
       y = "distance to stop") +
  stat_smooth(method = "lm",se=FALSE)

?lm
fit <- lm(dist~speed,data=cars)
fit
summary(fit)
#Predict on Unknown variables 
predict(fit,data.frame(speed = 21))

