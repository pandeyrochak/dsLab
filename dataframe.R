rm(list=ls())
#---q1
age<- c(22,25,26,20)
name<-c("James","Mathew","Olivia","Stella")
gender<-c("M","M","F","F")
df<-data.frame(age,name,gender)
(df[1:2,])

#---q2
df1<-df[,c("name","age","gender")]
df1

#---q3
df1<-df1[,c("gender","age","name")]
df1
df1<-df1[,c("age","gender","name")]

#---q4
df2<-df
df2$age<-NULL
df2

#---q5

names(df1)[1] <- "FirstName"
df1

#---q6
df3<-df[order(df$age,decreasing = TRUE),]
df3
df3[which.min(df3$age),]

#---q7
numeric_cols<-(iris[sapply(iris, is.numeric)])
numeric_cols

#---q8
print(tapply(iris$Sepal.Length,iris$Species, mean))
print(tapply(iris$Sepal.Width,iris$Species, mean))
print(tapply(iris$Petal.Length,iris$Species, mean))
print(tapply(iris$Petal.Width,iris$Species, mean))

#Extended Practical List Questions
#---q17
val<-sapply(numeric_cols,mean)
write.csv2(val,"./Documents/ds_wd/file.csv",row.names = TRUE)

#---q22
install.packages("reshape2")
library(reshape2)

iris
melted.iris<-melt(df, id.vars = "Species")
melted.iris
casted.iris<-cast(melted.iris)
casted.iris  