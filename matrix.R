#1

a<-matrix(c(2,0,1,3),2)
b<-matrix(c(5,2,4,-1),2)
add<-a+b
sub<-a-b

#2

mul<-3*a
mul

#3

p<-matrix(0,4,4)
diag(p)<-c(4,1,2,3)
p

#4

a*c(7,4)

#5

t(a)

#6

solve(a)

#7

?solve
solve(a,b)

#8

x<-c(1,2,3)
y<-c(10,20,30)
z<-c(100,200,300)
m<-cbind(x,y,z)
colnames(m)<-c("a","b","c")
m

#9

q<-1:12
n<-matrix(q,4,3,byrow=TRUE)
colnames(n)<-c("x","y","z")
rownames(n)<-c("a","b","c","d")
n

#10

subB<-n[n[,3]>3,]
subB

#11

3*m
m+subB
m-subB