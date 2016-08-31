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

#Factores 
x <- factor(c("si","no","si","si","no","si","no"))
x
unclass(x)
x <- factor(c("si","no","si","si","no","si","no")) levels= c("si","no")
x <- factor(c("azul","azul","rojo","azul","amarillo","verde", "azul"))
x
table(x)


#Valores Faltantes
x <-c(1,2,NA,10,3)
is.na(x)
is.nan(x)

x <-c(1,2,NaN,10,3)
is.na(x)
is.nan(x)

#Data frames
x <- data.frame(Erick=1:4, Lori= c(T,T,F,F))
row.names(x) <- c("Primero","segundo","Tercero","Cuarto")
x
nrow(x)
ncol(x)
attributes(x)
names(x) <- c("Yarely", "Karen")
x

#Los nombres no son exclusivos de los datas frames
x <- 1:3
names(x) #NULL
names(x) <- c("Hugo", "Paco", "Luis")
x

x <- list(a=1:10, b=100:91,c=51:60)
x
names(x) <- c("Seq1", "Seq2", "Seq3")
x


m<- matrix(1:4, 2,2)
m
attributes(m)
dimnames(m) <- list(c("fil1","fil2"),c("col1","col2"))
m

z <- matrix(NA,6,6)
z
attributes(z)
dimnames(z) <- list(c("1","2","3","4","5","6"),c("A","B","C","D","E","F"))
z

getwd()
setwd("~/GitHub/Pogramacion_Actuarial_III_OT16")
data <- read.csv("Datos_S&P.csv")
data <-read.table("Datos_S&P.csv",T,",")
data



