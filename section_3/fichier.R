#Saisie
#saisie des données numerique a la main
x<-scan()
#Entréé deux pour finir la saisie

#saisie de données texte
y<-scan(what = "character")


#Fichier csv
random.profession<-read.delim("Files/randomProfession.csv",header = TRUE,sep=",",stringsAsFactors = FALSE)
head(random.profession)
