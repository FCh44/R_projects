x<-1:10
seq(1,20,by=3)
sample(1:100,6) #echantillon aléatoire
 
rnorm(100,mean = 0,sd = 1)#echatillon aléatoire de distribution mormal (de moyenne zero et ecart type 1 par defaut)

hist(rnorm(10000),breaks = 50)


y<-rnorm(100,mean=5)
mean(y)
