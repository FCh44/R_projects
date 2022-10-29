exemple<-1:50
exemple
#on sauvegarde l'objet exemple
save(exemple,file = "Files/exemples.rda")


ex<-1:50
ex2<-rnorm(50)

test<-data.frame(cbind(ex,ex2))
head(test)
dim(test)

write.csv(test,file = "Files/test.csv",sep=";")
