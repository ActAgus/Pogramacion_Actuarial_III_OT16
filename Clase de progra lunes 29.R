#MATRICES
m<- matrix(nrow=2,ncol=3)
m
dim(m)
attributes(m)
#Cambio de dimensiones de 2x3 a 3x2
dim(m) <- c(3,2)
m
#Crear una matriz con datos
m <- matrix(1:6,3,2)
m

m <- matrix(1:6,3,3,TRUE)
m
class(m)
str(m)

dim(m) <- c(2,5) #esto va a producir un error de rango

x <- c(1,2,3)
y <- c("a","b","c")
z <- c(x,y)
z

m1 <- rbind(m,y)
m1

m2 <- cbind(m,y)
m2

