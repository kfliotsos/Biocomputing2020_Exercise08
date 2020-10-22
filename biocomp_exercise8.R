setwd("/Users/katrinafliotsos/Desktop/data/Biocomputing2020_Exercise08/")
#read in table
UWvMSU<-read.table("UWvMSU_1-22-13.txt", sep="", header=TRUE)
View(UWvMSU)
#assign UW and MSU variables
UW<-UWvMSU[UWvMSU$team=="UW",]
MSU<-UWvMSU[UWvMSU$team=="MSU",]
#cumulative sum of UW score
UWscore<-c(UW$score)
#create empty vector to hold the output
UWcs<-numeric(length=length(UWscore))
#for loop cumulative sum
for (i in 1:length(UWscore)) {
  UWcs[i]=sum(UWscore[1:i])
}

#doing lines 8 through 15 with MSU
#cumulative sum of MSU score
MSUscore<-c(MSU$score)
#creating empty vector to hold output
MSUcs<-numeric(length=length(MSUscore))
#for loop cumulative sum
for (i in 1:length(MSUscore)) {
  MSUcs[i]=sum(MSUscore[1:i])
}
#plotting the scores for each time
#UW is red line, MSU is blue line
plot(x=UW$time, y=UWcs, type='l', xlab="Time", ylab="Score", col="red")
lines(x=MSU$time, y=MSUcs, col="blue")



