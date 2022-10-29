x<-c('a','b','c','d','e')
#selection du premier element
x[1]

#selection de tous les elements sauf le dernier
x[-5]
#selection de tous les elements sauf le 3 eme
x[-3]

y<-c('a','b','c','d','e','f','g','h','i','l','m','n','o')
#selection du 1er et dernier element
y[c(1,13)]

y[4:7]
y[4:13]


#longeur 
length(y)
#queue
tail(y,1)
tail(y,2)
