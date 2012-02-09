library(lattice)
library(RColorBrewer)

panel.labels = function(x, y, col='black', labels='x',...) 
  { panel.text(x,y,labels,col=col,...)}


mydata<-read.csv('/Users/sciruela/Documents/Happiness&Salaries/data.csv')


mydata$mygroupsp = cut(mydata$SP, breaks=c(0,1, 4, 7, 10, 13, 16, 17, 18, 19, 22), 
  labels=c("Prime", "High Grade", "Upper Medium Grade","Lower Medium Grade","Non-investment grade speculative","Highly speculative","Substantial risks","Extremely speculative","In default with little prospect for recovery","In default"))

pal2 <- brewer.pal(12,"Paired")

pdf("/Users/sciruela/Documents/Happiness&Salaries/salaries-happines-sp.pdf",width=40, height=20)

xyplot(Happiness ~ Salary, groups=mygroupsp ,par.settings=list(text=list(cex=2),axis.text=list(cex=2.5)),xlab=list(cex=2.5),ylab=list(cex=2.5) ,cex=2.5, panel=panel.labels, data=mydata,labels=mydata$Country,col=pal2[mydata$mygroupsp],auto.key=list(text=c("Prime", "High Grade", "Upper Medium Grade","Lower Medium Grade","Non-investment grade speculative","Highly speculative","Substantial risks","Extremely speculative","In default with little prospect for recovery","In default"),space="right",col=pal2 
,bty='n',columns=1,cex=2.5))
dev.off()


mydata$mygroupfitch = cut(mydata$Fitch, breaks=c(0,1, 4, 7, 10, 13, 16, 17, 18, 19, 22), 
  labels=c("Prime", "High Grade", "Upper Medium Grade","Lower Medium Grade","Non-investment grade speculative","Highly speculative","Substantial risks","Extremely speculative","In default with little prospect for recovery","In default"))

pal2 <- brewer.pal(12,"Paired")

pdf("/Users/sciruela/Documents/Happiness&Salaries/salaries-happines-fitch.pdf",width=40,height=20)

xyplot(Happiness ~ Salary, groups=mygroupfitch ,par.settings=list(text=list(cex=2),axis.text=list(cex=2.5)),xlab=list(cex=2.5),ylab=list(cex=2.5),cex=2.5, panel=panel.labels, data=mydata,labels=mydata$Country,col=pal2[mydata$mygroupfitch],auto.key=list(text=c("Prime", "High Grade", "Upper Medium Grade","Lower Medium Grade","Non-investment grade speculative","Highly speculative","Substantial risks","Extremely speculative","In default with little prospect for recovery","In default"),space="right",col=pal2 
,bty='n',columns=1,cex=2.5))
dev.off()

mydata$mygroupmoody = cut(mydata$Moody, breaks=c(0,1, 4, 7, 10, 13, 16, 17, 18, 19, 22), 
  labels=c("Prime", "High Grade", "Upper Medium Grade","Lower Medium Grade","Non-investment grade speculative","Highly speculative","Substantial risks","Extremely speculative","In default with little prospect for recovery","In default"))

pal2 <- brewer.pal(12,"Paired")

pdf("/Users/sciruela/Documents/Happiness&Salaries/salaries-happines-moody.pdf",width=40,height=20)

xyplot(Happiness ~ Salary, groups=mygroupmoody,par.settings=list(text=list(cex=2),axis.text=list(cex=2.5)),xlab=list(cex=2.5),ylab=list(cex=2.5) ,cex=2.5, panel=panel.labels, data=mydata,labels=mydata$Country,col=pal2[mydata$mygroupmoody],auto.key=list(text=c("Prime", "High Grade", "Upper Medium Grade","Lower Medium Grade","Non-investment grade speculative","Highly speculative","Substantial risks","Extremely speculative","In default with little prospect for recovery","In default"),space="right",col=pal2 
,bty='n',columns=1,cex=2.5))
dev.off()

