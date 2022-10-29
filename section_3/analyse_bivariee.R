library(questionr)
data("hdv2003")
d<-hdv2003


#4.1 Croisement de deux variables qualitatives

#qualification f(sexe)
tab<-table(d$qualif,d$sexe)

#pourcentage ligne
lprop(tab)

#pourcentage en colonne
cprop(tab)

# test di chi2
chisq.test(tab)

chisq.residuals(tab)
mosaicplot(tab)
mosaicplot(tab,las=3)
mosaicplot(tab,las=3,shade = TRUE)

#niveau d'etude f(sexe)
tab.nivetude<-table(d$nivetud,d$sexe)
#pourcentage colonne
cprop(tab.nivetude)
#test du chi 2
chisq.test(tab.nivetude)
chisq.residuals(tab.nivetude)
mosaicplot(tab.nivetude,las=3,shade = TRUE)
