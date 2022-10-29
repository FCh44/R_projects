x<-c(12,NA,45,57,24,48,NA)
x

is.na(x)
x[!is.na(x)]
x[is.na(x)]
#nombre de valeurs manquantes /completes
table(complete.cases(x))
#même info en pourcentage
prop.table(table(complete.cases(x)))


missing.x<-is.na(x)
missing.x

sum(missing.x)

data.gender<-read.csv("missing_test.csv",sep = ";")
table(data.gender)
summary(data.gender)
#on remplace les données manquante avec <NA>
data.gender<-read.csv("missing_test.csv",sep = ";",na.strings = "",strip.white = TRUE)
#on supprime les lignes avec valeur manquantes
data.gender2<-na.omit(data.gender)
data.gender2

test3<-na.exclude(data.gender)
test3

#on affiche les cas complets
data.gender[complete.cases(data.gender),]
#on affiche les lignes ayant des cas incomplets
data.gender[!complete.cases(data.gender),]

#on creer un vecteur  vec des données codifées et 4 corrspond a une valeur manquante

v<-c(1,2,4,3,2,1,4,1,1,2,4,3)
#on remplace la valeur 4 par NA
v[v==4]<-NA
v
v[complete.cases(v)]


#representation graphique de valeur manquante
install.packages("VIM")
library("VIM")
library(VIM)
test<-read.csv("missing_test2.csv",sep = ";")
test

#distribution des missing values par variables et par combinaison de variables
aggr(test)
summary(aggr(test))

prop.table(table(complete.cases(test)))
matrixplot(test)
