##apply() travaille sur des matrices

#creation d'une matrice

matrice<-matrix(1:12,nrow = 4)
matrice
dim(matrice)

#moyenne des colonnes
apply(matrice,2,mean)

#moyenne des lignes
apply(matrice,1,mean)


##lapply() travaille sur des liste retourne une list
#creation d'une liste
liste<-list(A=matrix(1:12,nrow = 4),B=20:40,C=-10:-20,D=matrix(1:9,3))
liste

#sum de chaque element de la liste
lapply(liste,sum)

sum(liste$A)

lapply(iris,class)
dim(iris)
str(iris)

##sapply()--> retourne un vecteur
sapply(liste, sum)
sapply(iris,class)
sapply(iris[,1:4],mean) #moyenne des colonnes 1 à 4

sapply(iris[1:4,1:4],mean)#moyenne des 4 1ere ligne pour les 4 colonnes numériques


x<-as.numeric(iris[1:4,1]) #creation d'un vecteur contenant les 4 1ere ligne de la 1ere colone
x
mean(x) # moyenne  du vecteur

##vapply()
#equivalent a sapply() sur une liste de vecteur en spécifiant le format de sortie

##mapply permet d'applique une fonction a chaque element d'une liste ou d'un vecteur
mapply(rep,1:4,4:1)

mapply(rep,c(1,2,3),times=5)
# equivalent matrix(c(rep(1,5),rep(2,5),rep(3,5)),ncols=3)

vector1<-c(1,2,3,4,5)
vector2<-c(2,4,1,2,10)
#find the max value of each corresponding element 
mapply(max,vector1,vector2)

#test d'egalité des elements de deux listes
liste1<-list(A=matrix(1:12,4),B=20:40,C=-10:-20,D=matrix(1:9,3))
liste2<-list(A=matrix(1:12,3),B=20:40,C=-10:-20,D=matrix(1:9,3))
mapply(identical,liste1,liste2)

#tapply() travaille sur des  vecteur qui peuvent spliter en sous ensemble
# ex moyenne de la longeur de sepal pour chaque especes
tapply(iris$Sepal.Length,iris$Species,mean)
#equivalent
aggregate(Sepal.Length ~ Species,iris,mean)

aggregate(cbind(Petal.Length,Petal.Width)~Species,iris,mean)

