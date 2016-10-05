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
data <-read.table("Datos_S&P.csv",T,",", nrows=100)
clases <- sapply(data, class)
data <-read.table("Datos_S&P.csv",T,",", colClasses = clases)
data

#Uso de dput y dget
y <- data.frame(a=1,b="a")
dput(y)
dput(y, file= "y.R")
nueva.y <- dget("y.R")
y
nueva.y

x <- "Programación Actuarial III"
y <- data.frame(a=1, b="a")
dump(c("x","y"), file="data.R")
rm(x,y)
source("data.R")

x <- list (foo= 1:4, bar=0.6, baz= "Hola")
x[ c(1,3)]

x[[c(1,3)]]

x <- list (foo= 1:4, bar=0.6, baz= "Hola")
name<- "foo"


#Se pueden extraer elementos de los elementos extraidos 
x<- list(a= list (10, 12,14), b= list(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]

x<- matrix (1:6,2,3)
x
#El resultado es un vector
x[1,2]
x[2,1]
x[1,]
x[,2]

x<- matrix (1:6,2,3)
x
#El resultado es un vector
x[1,2]
#Con drop= FALSE, se mantiene la dimensión y 
# el resultado sera una matriz.

x[1,2, drop=FALSE]

#Otra forma..

x<- matrix (1:6,2,3)
x
#Si dejamos solamente el espacio, el resultado será un vector
x[1, ]
#Con drop= FALSE, se mantiene la dimensión y 
# el resultado sera una matriz.

x[1, , drop=FALSE]
#Subconjuntos con Nombres
x <- list(aardvark=1:5)
x$a
x[["a"]]
x[["a",exact= FALSE]]


x[1,]
x[,2]

#Valores Faltantes
airquality[1:6,]
Completos<- complete.cases(airquality)
airquality[Completos,]
airquality[Completos,][1:6,]
airquality[1:6,]


#Operaciones vectorizadas
x<- 1:4; y <- 6:9
x+y 
x>2
x>=2
y==8
x*y
x/y

#Operaciones con Matrices
x <- matrix(1:4,2,2) ; y <-  matrix(rep(10,4),2,2)
x*y
x/y
x%*%y

x <- matrix(1:6,2,3)
x
for(i in 1:6){print(x[i])}
x <- matrix(1:6,2,3)
x
for( i in seq_len(nrow(x))){for(j in seq_len(ncol(x))){print(x[i,j])}}

count <- 0
while(count<10){}

sube <- 0
baja <- 0
for(i in 1:100){
z <- 5
while (z>= 3 && z<= 10){
  moneda <- rbinom(1,1,0.5)
  if(moneda== 1){#caminata Aleatora
    z<- z + 0.5
  }else{
      z <- z - 0.5 
  }
}
}
if (z < 10) {baja <- (baja + 1)} else{sube <- (sube + 1)}
sube
baja

#Creación de funciones
suma2 <- function(x,y){
  x+y
}

mayor10 <- function(x){
  x[x>10]
  
}
mayorque <- function(x,n){
  x[x>n]
}

promedioCol <-  function(x, quitar.NA=TRUE){
  nc <- ncol(x)
  medias <-  vector("numeric",nc)
  for(i in 1:nc){
      medias[i] <- mean(x[,i],na.rm =quitar.NA)
  }
  medias
  
}

#Evaluación perezosa
f <- function(a,b){
  a^2
}

g <- function(a,b){
  print(a)
  print(b)
}
?paste

library(ggplot2)
search()

hacer.potencia <- function(n){
  potencia <- function(x){
    x^n
    
  }
  potencia
}

#Esta función regresa comor resultado una función como su valor.
cubica <- hacer.potencia(3)
cuadrada <- hacer.potencia(2)

cubica(3)
cuadrada(3)

ls(environment(cubica))
get("n",environment(cubica))
ls(environment(cuadrada))
get("n", environment(cuadrada))

#Dates and times
    x <- as.Date("1970-01-01")
    x
    unclass(x)
    unclass(as.Date("1970-01-02"))
date()    
as.POSIXct(date())

lapply 
function(x,FUN,...)
{
    FUN <- match.fun(FUN)
    if(!is.vector(x)|| is.object(x))
        x <- as.list(x)#Coerciona
    .Internal(lapply(x,FUN)) #En C++ lo resuelve mas rapido y lo regresa a R
}
#<bytecode: 0x00000000055040>
#<environment:namespace:base>
   

#is.algo evalua si es verdadero o falso

x <-list(a=1:5, b=rnorm(10000))
lapply(x, mean)

x <-list(a=1:5, b=rnorm(10), c=rnorm(10,1), d=rnorm(10,2))
lapply(x, mean)

x <-list(a=1:5, b=rnorm(10), c=rnorm(10,1), d=rnorm(10,2))
sapply(x, mean)

x <-list(a=1:5, b=rnorm(10), c=rnorm(10,1), d=rnorm(10,2))
apply(x, mean)


x <- 1:4
lapply(x,runif)

x <- 1:4
lapply(x,runif, max=15, min=5)

x <- 1:4
sapply(x,runif, max=15, min=5)

x <- 1:4
apply(x,runif, max=15, min=5)



#Usando Apply
x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean)
apply(x,1,sum)

x <- matrix(rnorm(200), 20, 10)
apply(x, 1, quantile, probs=c(0.25,0.75))
?quantile

a <- array(rnorm(2*2*10), c(2,2,10))
apply(a,c(1,2),mean)

rowMeans(a,dims=2)


a <- array(rnorm(2*2*10), c(2,2,10))
apply(a,c(1,3),mean)

rowMeans(a,dims=2)

a <- array(rnorm(2*2*10), c(2,2,10))
apply(a,c(2,3),mean)

rowMeans(a,dims=2)

# las flechitas son las que hacen que no se escriba bien en el teclado de R
#?????? visto por ti  el  amor de mi vida jajaja
list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
mapply(rep, 1:4, 4:1)

noise <- function(n, mean,sd){
    rnorm(n,mean,sd)
}

noise(5,1,2)
noise(1:5,1:5,2)
mapply(noise, 1:5, 1:5, 2)

#Tapply
str(tapply)

library(datasets)
h <- head(airquality)
mls <- split(h[,1:3], h$Month)
mls

s <- split(airquality, airquality$Month)
s <- split(airquality, airquality$Month)
lapply(s, function(x) colMeans(x[,1:3]))


log(-1)
    
imprimeMSJ <- function(x){
    if(is.na(x))
        print("x es un valor faltante")
   
     else if(x>0)
    print("x es mayor que 0")
   
     else 
        print("x es menor o igual que 0")
    invisible(x)
} 
    
