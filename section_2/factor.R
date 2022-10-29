degree<-c("univ","diplome","prem.cycle","phd","univ","univ","diplome")

#facteur
facteur1<-factor(degree,order=TRUE,levels<-c("prem.cycle","diplome","univ","phd"))
facteur1
#comparaison des element suivant le niveau
facteur1[2]>facteur1[4]


vecteur1<-c(1,1,2,3,1,2,3)
facteur2<-factor(vecteur1,levels = c(1,2,3),labels = c("bas","moyen","haut"))
facteur2
summary(facteur2)


sexe.vecteur<-c("M","F","M","M","F")
facteur.sexe<-factor(sexe.vecteur,levels=c("M","F"),labels = c("Homme","Femme"))
facteur.sexe
summary(facteur.sexe)
table(facteur.sexe)
