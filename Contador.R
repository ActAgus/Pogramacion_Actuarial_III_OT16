sube<- 0
baja<- 0
x<- 1

repeat{
  z <- 5 
  caminata<- vector("numeric")
  ciclo<- while(z>=3 && z<=10){
          print(z)
          caminata <- c(caminata,z)
          moneda <- rbinom(1,1,0.5)
  if(moneda == 1) { #caminata aleatoria
          z<- z+ 1 }
 else { z<- z- 1}
 }
     
  if(z<3){sube<- sube+1}
  else {baja<- baja +1}
           
 x<- x+1
     
 if(x==100){break}
}
 
sube
baja