mon.dataframe<-data.frame(age=c(25,27,35,34),sex=c("M","F","F","M"))
mon.dataframe


vec1<-c(20:30)
vec2<-c(30:40)
vec3<-c(40:50)
dataframe1<-data.frame(vec1,vec2,vec3)
dataframe1
#ajout d'une colonne
mon.dataframe$married<-c(T,F,F,T)
# on extrait les données relative a l'age
mon.dataframe$age

mon.dataframe$sex=="M"

mon.dataframe$age>25

mon.dataframe[4,1]
# merge de deux dataframes ayant une varaible en commun ici age
actif.dataframe<-data.frame(age=c(25,27,35,34),actif=c(F,T,T,T))
merge(mon.dataframe,actif.dataframe)
