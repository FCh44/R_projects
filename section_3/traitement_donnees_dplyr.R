library("dplyr")

#select()
head(iris)

#Selection des variables avec les noms de variable
select(iris,Sepal.Length,Sepal.Width,Petal.Length,Petal.Width,Species)
#selection avec le :
select(iris,Sepal.Length:Species)

