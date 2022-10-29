#type du vecteur
x<-c(1,2,3,4,5,6,7,8,9)
class(x)
mode(x)
typeof(x)

y<-sample(1:1000,100)
y
class(y)

#forcer la nature d'un vecteur
#numeric->caractere
as.character(x)
class(x) #le vecteur original reste numeric

xc<-as.character(x)
xc
class(xc)

#test if else
if (is.character(x)){
  print("vecteur caratere")
} else {
  print("autre")
}