# https://juba.github.io/tidyverse/03-premier_travail.html#exercices-1

# Exercice 1 
#chargement de la library questionr
library(questionr)
#chargement du dataset hdv2003 dans l'environnement
data("hdv2003")
#copie du dataset
 df<-hdv2003
#dimmension de df
 dim(df)
#liste des variables
 names(df)
 
 #Exercice 2
min(df$heures.tv,na.rm=TRUE)
max(df$heures.tv,na.rm=TRUE) 
mean(df$heures.tv,na.rm=TRUE)
median(df$heures.tv,na.rm=TRUE)
sd(df$heures.tv,na.rm = TRUE)
summary(df$heures.tv,na.rm=TRUE)

hist(df$heures.tv,breaks = 10)
  
  #Exercice 3
tab.implication<-table(df$trav.imp,useNA = 'always')
tab.implication
freq(tab.implication,sort = "dec")
barplot(tab.implication)
barplot(sort(tab.implication),col = "tomato")
# pour voir toute les couleurs dispo colors()