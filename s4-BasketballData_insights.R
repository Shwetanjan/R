
?matplot

#matplot only pots column so transpose the matrix of FildGoals

Games[1:3,6:10]
Games[c(1,10),]
Games[c(2,3,4),c("2009","2010","2014")]
Games[1,,drop=F]

myplot <- function(data,rows =1:10 ){
  Data <- data[rows,,drop=F]
  matplot(t(Data), type="b", 
        pch=15:18, col=c(1:4,6))
legend("bottomleft", inset =0.01, legend = Players[rows], 
       col=c(1:4,6), pch = 15:18, horiz=F)
}

myplot(Salary,1:3)