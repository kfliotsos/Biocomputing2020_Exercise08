setwd("/Users/katrinafliotsos/Desktop/data/Biocomputing2020_Exercise08/")
#question 1, creating a graph of UW and MSU scores
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

#replicating lines 9 through 16 with MSU
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

#question 2 guess my number game
#setting the max number of guesses as 10
maxGuesses<-10
#creating empty vector to put right and wrong guesses in
right<-0
wrong<-0
correct<-sample(1:100,1)
#run the following codes to start the game
cat("I'm thinking of a number 1 through 100, guess what it is\n")
Guess<-readline("Guess a number: ") #put your guess in the console
    #from here you should put your guesses in the console
for(i in 1:maxGuesses) {
      if(Guess == correct) {
        cat("Correct!\n")
        right = right + 1
      } else {        
        if(i == maxGuesses) {
          cat("You ran out of guesses\n")
        } else {
          if(Guess < correct) {
            cat("Higher\n")
            wrong= wrong + 1
          } else {
            cat("Lower\n")
            wrong= wrong + 1
          }
          Guess=scan(n=1)
        }            
      }
    }
  
  
 





