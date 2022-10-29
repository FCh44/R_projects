x<-1:20
x
x[x>17]
x%in%c(21)
x[x%in%c(1,2,21)]

dim(iris)
#3 eme colonne du dataset
iris[,3]
#lignes de 5 a 7 du dataset
iris[5:7,]

subset(Orange,Orange$Tree==4)

setosa<-subset(iris,iris$Species=="setosa")
head(setosa)

virginica<-iris[which(iris$Species=="virginica"),]
head(virginica)
#selection des valeurs diferente de NA (not available)
z<-c(1,2,3,NA,5,6,7,NA,8,9)
z[!is.na(z)]

#creation d'une sequence de nombre de 20 a 30
xs<-20:30
xs
#extraction des valeurs sauf la 4eme et la septiemme
xs[c(-4,-7)]
xs[-c(4,7)]

#creation d'une distribution normale de 1000 element de moyenne 3
xd<-rnorm(1000,3)
xd
#creation d'une distribution normale de 100 element de moyenne 0
yd<-rnorm(100)
# extraction d'un echatillon de 10 element parmis c'es deux distribution
zd<-sample(c(x,y),10)
zd



#on creer un vecteur x
x<-c(1,5,4,7,1,2,6,1,4,7,9,1)
#on remplace les 1 avec des 5
x[x==1]<-5
x

#extraction de 50 cas au hasard du dataset iris
random.sample<-iris[sample(1:nrow(iris),50,replace=FALSE),]
random.sample

#creation d'un copie d'un dataset sur l'environnement de travail
attach(iris)
#applicons la fonction summary a une des varaibles d'iris
summary(Petal.Length)
length(Petal.Length)

with(iris,summary(Petal.Length))
