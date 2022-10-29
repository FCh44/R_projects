#https://juba.github.io/tidyverse/03-premier_travail.html

install.packages("questionr")

library("questionr")
data("hdv2003")
View(hdv2003)
d<-hdv2003
#structure du tableau
#nombre de lignes
nrow(d)
#nombre de colonnes
ncol(d)

dim(d)

#nom des colonnes  : liste des variables
names(d)

#detail du tableau
str(d)

#accès a la colonne sexe
d$sexe

head(d$age)
tail(d$age,10)

#creation d'un nouvelle variable
head(d$heures.tv,10)
# creation d'une variable minutes.tv qui converties les heures en minutes
d$minutes.tv<-d$heures.tv*60
head(d$minutes.tv,10)

#Analyse univarié
# - Analyse d'une variable quantitative
# -----------------------------
# -- Indicateur de centralité

# --- valeur extreme
min(d$age)
max(d$age)
range(d$age)
# --- indicateur centralité
mean(d$age)
median(d$age)
#----------------------------
# -- Indicateur de dispertion

# --- etendue de la distribution
max(d$age) - min(d$age)
# --- varaiance
var(d$age)
# --- ecart type
sd(d$age)

#plus  la variance ou l'ecart type sont élevé plus les valeurs sont dispersées autour de la moyenne
#plus  la variance ou l'ecart type sont faible plus les valeurs sont regroupées autour de la moyenne

# --- quartile
# ---- 1er quartile
quantile(d$age,probs = 0.25)
# ---- 2 eme quartile = median
quantile(d$age,probs = 0.5)
# ---- 3 eme quartile = median
quantile(d$age,probs = 0.75)
# ---- 4 eme quartile = median
quantile(d$age,probs = 1)

# ---- 1er decile = median
quantile(d$age,probs = 0.1)

# ----summary
summary(d$age)

# --------------------------
# -- Representation graphique

# --- histogramme
hist(d$age)
hist(d$age,breaks = 10)
hist(d$age,breaks = 70)

hist(d$age,col = "skyblue",
     main = "Répartition des âges des enquêtés",
     xlab = "Ages",
     ylab ="Effectif")



hist(d$heures.tv)
mean(d$age)
mean(d$heures.tv,na.rm = TRUE)
median(d$heures.tv,na.rm = TRUE)
sd(d$heures.tv,na.rm = TRUE)
range(d$heures.tv,na.rm = TRUE)

# - Analyse d'une variable qualitative
# --Tri à plat
table(d$sexe)
table(d$qualif) # par defaut table n'affiche pas les valeur manquante
# avec les valeur manquante
table(d$qualif,useNA = 'always')
# tri
table.qualif.sort<-table(d$qualif)
table.qualif.sort<-sort(table.qualif.sort)
# freq de la lirary questionr
freq(d$qualif)
freq(d$qualif,valid = FALSE,total = TRUE,sort = "dec")
#graphique
tab<-table(d$qualif)
barplot(tab)
barplot(table.qualif.sort,cex.names = 0.59)
#diagramme de cleveland
dotchart(table.qualif.sort)
