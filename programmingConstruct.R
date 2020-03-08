#---q3---
n <- as.integer(readline(prompt="Enter a number: "))
cat("Sum of numbers upto",n,"is",sum(1:n))

#---q4---
for(i in 1:12)
{
  cat("Table of ",i,"\n")
  for(j in 1:10)
  {
    cat(i*j,"\n")
  }
}

#---q5---
getMax<- function(x){
  return(max(unlist(x)))
}
myList<-list(100,34,534,987,1,8)
print(getMax(myList))

#---q6---
ls<-list(10:20)
ls1<-unlist(ls)
ls1_length<-length(ls1)
runningTotal<-integer(ls1_length)
runningTotal[1]<-ls1[1]
for(i in 2:ls1_length){
  runningTotal[i]<-runningTotal[i-1] + ls1[i]
}

for(i in 0:ls1_length){
  if(i==0){
    cat("List", "Running Total\n", sep = "  ")
    } 
  else{
    cat(ls1[i], runningTotal[i],"\n",sep = "     ")  
  } 
}



#---q8---
linearSearch<-function(key,n){
  flag<-0
    pos<-1
  for(i in n){
    if(i==key){
      flag<-1
      break
    }
    pos<-pos+1
  }
  if(flag==1){
    cat("Element Found at ",pos," position")
  }else{print("Not Found")}
}
n <- c(34,78,234,768,123,76,34,3,1)
key<-as.integer(readline(prompt = "Enter Element to search: "))
linearSearch(key,n)


#---q9---
binarySearch<-function(f,l,key,n){
  mid=as.integer((f+l)/2)
  if(f>l){
    return(-1)
  }
  if(n[mid]==key){
    return(mid)
  }
  if(n[mid]>key){
    l<-mid-1
  }else{
    f<-mid+1
  }
  binarySearch(f,l,key,n)
}
n <- c(34,78,234,768,123,76,39,3,1)
key<-as.integer(readline(prompt = "Enter Element to search: "))
n<-sort(n,decreasing = FALSE)
res<-binarySearch(1,length(n),key,n)
if(res!=-1){
  cat("Element found at ",res)
}else{
  print("Element not found!!!")
}


#---q18---
check<-function(x){
  if(!is.finite(x)){
    return(NA)
  }
  if(x %% 2 == 0){
    return(TRUE)
  }else{
    return(FALSE)
  }
}
sapply(c(1:5,Inf,-Inf,NA),check)