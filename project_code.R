bank_full_train = read.csv("C:/Users/91742/OneDrive/R mini project/bank_full_train.csv")



#summary provides a quick snapshot into the data set
summary(bank_full_train)
#to see the top 5 rows
head(bank_full_train)
#to see the bottom 5 rows
tail(bank_full_train)
#to see the column names
colnames(bank_full_train)
#to see number of rows
nrow(bank_full_train)

#what kind of dataset has been created
## It is a data frame with variables
str(bank_full_train)
#split into train 
split<-sample(c(rep(0,0.7*nrow(bank_full_train)),rep(1,0.3*nrow(bank_full_train))))
split
#split table for train
train<-bank_full_train[split==0,]
train


str(bank.full.test)
#split into test
split<-sample(c(rep(0,0.7*nrow(bank.full.test)),rep(1,0.3*nrow(bank.full.test))))
split
#split table for test
train<-bank.full.test[split==0,]
train

#calculate the mean age in dataset
mean(bank_full_train $age)
mean(bank.full.test $balance)
#calculate the median
median(bank_full_train $age)
medain(bank.full.test $balance)
#quantile values
quantile(bank_full_train $age)
quantile(bank.full.test $duration)

#subsetting
age<-bank_full_train$age
balance<-bank_full_train$balance

#check NA values for age
is.na(age)
#check NA values for balance
is.na(balance)

 
#building a linear regression

#Create Relationship Model & get the Coefficients
age <- c(45,34,40,58,59)
balance <- c(2,0,311,5810,169)
# Apply the lm() function.
relation <- lm(balance~age)
print(relation)


#Get the Summary of the Relationship
age <- c(45,34,40,58,59)
balance <- c(2,0,311,5810,169)

# Apply the lm() function.
relation <- lm(balance~age)
print(summary(relation)) #accuracy test


#prediction
predict(object, newdata)
# The predictor vector.
age <- c(45,34,40,58,59)
# The resposne vector.
balance <- c(2,0,311,5810,169)
# Apply the lm() function.
relation <- lm(balance~age)
# Find age  with balance 300
a <- data.frame(x = 300)
result <-  predict(relation,a)
print(result)

#Creating input vector for lm() function  
age <- c(45,34,40,58,59)
balance <- c(2,0,311,5810,169)
relation <- lm(balance~age)

# Giving a name to the chart file.  
png(file = "linear_regression.png")  

# Plotting the chart.  
plot(y,x,col = "red",main = "age and balance Regression",abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "balance in rs",ylab = "age in yrs")  
# Saving the file.  
dev.off()  

#apply sactter plot
with(bank_full_train, plot(age, balance))

#apply plot function
plot(age, balance) 
#draw regression line
abline(lm(balance ~ age), col = "red")              



#univariate plots
dim(bank_full_train)

#plot
age<-bank_full_train[,1:13]
age
plot(age,col="blue")


balance<-bank_full_train[,14]
balance
plot(balance,col="red")






 
 

 
 
 
 
 
 
 