# install.packages("MASS")
# library(MASS)
# attach(Boston) # attaching the dataset
# #??Boston # help function with "?"
# head(Boston) # show the head of the dataset
# dim(Boston) # dimensions of the dataset
# names(Boston) # column names
# str(Boston) # str function shows the structure of the dataset
# nrow(Boston) # function shows the number of rows
# ncol(Boston) # function shows the number of columns
# summary(Boston) # summary() function shows the summary statistics
# summary(Boston$crim) # summary of the "crime" column in the Boston dataset
# 
# install.packages("ISLR") # installing the ISLR package 
# library(ISLR)
# data(Auto)
# head(Auto)
# names(Auto) 
# summary(Auto) 
# summary(Auto$mpg) 
# fivenum(Auto$mpg) 
# boxplot(Auto$mpg) 
# hist(Auto$mpg) 
# summary(Auto$horsepower) 
# summary(Auto$weight) 
# fivenum(Auto$weight) 
# boxplot(Auto$weight) 
# mean(Auto$weight) 
# median((Auto$weight))
# 
days <- c("Mon", "Tue", "Wed")
temp <- c(20, 30, 38)
snowed <- c("TRUE","FALSE","FALSE")
weather <- data.frame(days,temp,snowed)
getwd()
setwd("Documents/2020Fall/DataAnalytics/labs/")
getwd()
EPIData <-read.csv("Data/EPI2010_data.csv")
View(EPIData)
attach(EPIData)
fix(EPIData)
EPI
tf <- is.na(EPI)
E <- EPI[!tf]
summary(EPI)
fivenum(EPI, na.rm = TRUE)
stem(EPI)
hist(EPI)
hist(EPI,seq(30., 95.,1.0), probability = TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.))
rug(EPI)
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE) 
qqnorm(EPI)
qqline(EPI)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)



DALY
tf <- is.na(DALY)
E <- DALY[!tf]
summary(DALY)
fivenum(DALY, na.rm = TRUE)
stem(DALY)
hist(DALY)
hist(DALY,seq(30., 95.,1.0), probability = TRUE)
lines(density(DALY,na.rm=TRUE,bw=1.))
rug(DALY)
plot(ecdf(DALY), do.points=FALSE, verticals=TRUE) 
qqnorm(DALY)
qqline(DALY)

boxplot(EPI,DALY,ECOSYSTEM,ENVHEALTH) 

EPILand<-EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)
