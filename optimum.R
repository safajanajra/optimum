library(easynls)
#mod<-lm(test1$`RM!`~test1$t)
#summary(mod)
#attributes(mod)
test1

v0=test1$`RM!`[8]
t=test1$t
plot(t,RM1,ylim=c(0,10^8),type="l",col="blue")
par(new=TRUE)
plot(t,RM3,col="black",ylim=c(0,10^8),type="l")
par(new=TRUE)
plot(t,RM2,col="red",ylim=c(0,10^8),type="l")
#v=fitModel(RM1~ 25000*exp(-c*t)+c*25000/(c-delta)*(c/(c-delta)*(exp(-delta*t)-exp(-c*t))-delta*t*exp(-c*t))) )
Modell=makeFun(25000*exp(-c*t)+c*25000/(c-delta)*(c/(c-delta)*(exp(-delta*t)-exp(-c*t))-delta*t*exp(-c*t))~t)
model2 = nlsfit(RM1~ Modell(t), start = list(c=.2,delta=.1),data=test1)
model2

