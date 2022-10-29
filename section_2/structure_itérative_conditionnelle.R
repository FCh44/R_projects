x<-4
x
if (x>=5){
  print("X est supérieur ou égal 5")
}else{
  print("x est inférieur a 5")
}


oeuf<-3

while (oeuf<6){
  print("Ajoute un oeuf")
  oeuf<-oeuf+1
  if (oeuf==6){
    print("Maintenant on ajoute la farine.")
  }
}


x<-1
while (x<20){
  print (x*2)
  if (x*2>20){
    break
  }
  x<-x+1
}

vecteur<-1:10
vecteur
for (v in vecteur){
  print(v)
}
#autre notation
for (v in 1:length(vecteur)){
  print(vecteur[v])
}