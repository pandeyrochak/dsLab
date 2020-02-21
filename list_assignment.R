rm(list=ls())

#1 
p <- c(2,7,8)
q <- c("A", "B", "C")
x <- list(p, q)
x[2]

#2
x[[2]][1]<-"K"

#3
n<-list("a"=2,"b"=4)
sum(unlist(n))

#4
Newlist <- list(a=1:10, b="Good morning", c="Hi")
Newlist$a<-Newlist$a+1
Newlist

#5?
b <- list(a=1:10, c="Hello", d="AA")


#6

Newlist[["NewItem"]]<-"abc"

#7?


#8
g<- list(y=1:10, t="Hello", f="TT", r=5:20)
length(g$r)

#9?
str<-"Grand.Opening"

#10
y <- list("a", "b", "c")
q <- list("A", "B", "C", "a", "b", "c")
setdiff(q,y)

#11
A=letters[1:4]
B=letters[5:10]
C=letters[11:15]
D=c(1:10)
E=c(20:5)
x<-list(A=A,B=B,C=C)
y<-list(D=D,D=E)
z<-list(x=x,y=y)
as.vector(sapply(y,length))
z[[1]][[2]][3]
z[[2]][[2]][5]