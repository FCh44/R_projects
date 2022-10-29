data("iris")
View(iris)
summary(iris)
#creation de 3 sous ensembles
setosa<-subset(iris,iris$Species=="setosa")
versicolor<-subset(iris,iris$Species=="versicolor")
virginica<-subset(iris,iris$Species=="virginica")

#visualisation des cas avec head
head(setosa)

#on supprimme la variabe Species
iris.setosa<-setosa[-5]
head(iris.setosa)


iris.versicolor<-versicolor[-5]
iris.virginica<-virginica[-5]
head(iris.virginica)
head(iris.versicolor)

#calcul des moyennes des colonnes
iris.setosa2<-colMeans(iris.setosa)
iris.virginica2<-colMeans(iris.virginica)
iris.versicolor2<-colMeans(iris.versicolor)

rbind(iris.setosa2,iris.versicolor2,iris.virginica2)

#utilisation du lapply
#creation d'un liste avec un regroupement par espece
iris.div<-split(iris,as.factor(iris$Species))
iris.div
# on utilise lappky pour faire aal moyenne des variable à l'excepetion de l'espèce
iris.div2<-lapply(iris.div,function(x)colMeans(x[-5]))
iris.div2

#utilisation du package plyr
install.packages("plyr")
library("plyr")

#input dataframe output dataframe
summary(iris)

iris.avec.plyr<-ddply(iris,.(Species),summarize,
                      Petal.Length.Mean=mean(Petal.Length),
                      Petal.Width.Mean=mean(Petal.Width),
                      Sepal.Length.Mean=mean(Sepal.Length),
                      Sepal.Width.Mean=mean(Sepal.Width))
iris.avec.plyr


#input dataframe output liste


iris.avec.plyr2<-dlply(iris,.(Species),summarize,
                       Petal.Length.Mean=mean(Petal.Length),
                       Petal.Width.Mean=mean(Petal.Width),
                       Sepal.Length.Mean=mean(Sepal.Length),
                       Sepal.Width.Mean=mean(Sepal.Width))
iris.avec.plyr2
