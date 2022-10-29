x.dup<-c(1,2,3,3,4,5,9,9,1,1,45,48,87,48,55,55)
x.dup

duplicated(x.dup)

which(duplicated(x.dup))
#affichage des valeurs dupliquées
x.dup[duplicated(x.dup)]
#affichage des valeurs sans les dupliquées
x.dup[!duplicated(x.dup)]
