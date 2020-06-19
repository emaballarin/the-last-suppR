set.seed(151)
oldpar <- par(mfrow=c(2,2))

tenfold1000 <- rep(1:10, rep(1000,10))

boxplot(split(rnorm(1000*10), tenfold1000), ylab="normal - 1000")
boxplot(split(rt(1000*10, 7), tenfold1000),
        ylab=expression(t[7]*" - 1000"))

tenfold100 <- rep(1:10, rep(100, 10))

boxplot(split(rnorm(100*10), tenfold100), ylab="normal - 100")
boxplot(split(rt(100*10, 7), tenfold100),
        ylab=expression(t[7]*" - 100"))

par(oldpar)

