temperature.df<-data.frame(jour=1:31,temperature=c(10,12,10,15,11,12,13,14,18,12,
                                                   12,12,14,15,16,12,14,13,10,10,
                                                   14,12,13,15,10,10,10,12,15,12,
                                                   10))
temperature.df
mean(temperature.df$temperature)
plot(temperature.df$jour,temperature.df$temperature,type="b",
     xlab="Jour",
     ylab="Température en d°",
     main="Température du mois de Janvier",
     col="blue")
