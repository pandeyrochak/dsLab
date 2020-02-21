#10th January,2020

#1 Count Number of NA in a vector

x<-c(1,2,3,NA,6,NA)
length(x[is.na(x)])
length(x[is.na(x)])

#2

x <- c(4,6,5,7,10,9,4,15)
c(4,6,5,7,10,9,4,15) < 7
#3

p <- c (3, 5, 6, 8)
q <- c (3, 3, 3)
p+q

#4

z <- 0:9
digits <- as.character(z)
as.integer(digits)

#5
x <- c(1,2,3,4)
k<-(x+2)[(!is.na(x)) & x > 0]

#6

x <- c(2, 4, 6, 8)
y <- c(TRUE, TRUE, FALSE, TRUE)
sum(x[y])

