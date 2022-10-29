vet<-c(1,5,12,78,96,5,3)
#somme de element du vecteur
sum(vet)
#moyenne des element du vecteur
mean(vet)
#mediane
median(vet)
sprintf("mediane : %d",median(vet))
#multiplication d'un vecteur
vet*2
#division d'un vecteur'
vet/2

vet2<-vet*2
vet<-vet/2

vet2
vet

age<-c(10,20,15,13)
age2<-c(10,50,45,12)


age-age2

#operation sur des vecteurs de longeurs différentes possible si leur longeur sont multiple l'un de l'autre
v1<-c(1,2)
v2<-c(1,2,3,4)
v1+v2
v1*v2
