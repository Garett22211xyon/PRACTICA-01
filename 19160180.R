---
TITULO: "PRACTICA 01 PROGRAMACIÓN"
ALUMNO: "LIMAS CERNA ANTONIO JESUS"
CODIGO: 19160180
---

### PROBLEMAS/EJERCICIOS

 **1. ¿Qué cantidad de dinero sobra al repartir 1000$ entre 3 personas?**

```{multiplo}
10000%%3
```

**2. ¿Es el número 4560 divisible por 3?**

```{divisibilidad}
4560%%3 == 0
```

**3. Construya un vector con los números enteros del 2 al 87. ¿Cuáles de esos números son divisibles por 7?**

```{vector}
mi_vector <- c(2:87)
multiple_of_7 = (mi_vector %% 7)==0
mi_vector [multiple_of_7]
```
**4. Construya dos vectores, el primero con los números enteros desde 7 hasta 3, el segundo vector con los primeros cinco números positivos divisibles por 5.**

```{vector}
aea_1 <- c(7:3)
aea_2 <- c(5,10,15,20,25)
```
 
  - Sea A la condición de ser par en el primer vector
```{vector}
multiple_of_2 <- (aea_1 %% 2)==0
A <- aea_1 [multiple_of_2]
```

  - Sea B la condición de ser mayor que 10 en el segundo vector
```{vector}
B <- aea_2 > 10
```

  - ¿En cuál de las 5 posiciones se cumple A y B simultáneamente?

```{vector}
A & B
aea_1 [A & B]
aea_2 [A & B]
```

**5. Consulte este link <https://github.com/fhernanb/Manual-de-R/blob/master/images/anecdota_gauss.PNG> en el cual hay una ańectoda de Gauss n ̃no. Use R para obtener el resultado de la suma solicitada por el profesor del nĩno Gauss.**

```{vector}
vect_a <- c(1:50)
vect_b <- c(51:100)
vect_c <- sum(vect_a + vect_b)
gauss <- vect_c/
```

**6. Construya un vector con los siguientes elementos: 1, -4, 5, 9, -4. Escriba un procedimiento para extraer las posiciones donde est́a el valor ḿınimo en el vector**

```{vector}
v <- c(1,-4,5,9,-4)
for (x in 1:length(v)) {
if(min(v)==v{
  print(x)
}  
}
```

**7. Calcular 8!**
```{vector}
factorial(8)
```

**8.Evaluar la siguiente sumatoria \[\sum_{i=3}^{7}e_{i}\]**

```{vector}
m <- exp(3:7)
sum(m)
```

**9. Evaluar la siguiente productoria \[\prod_{i=1}^{10}log_sqrt(i)\]**

```{vector}
t <- sqrt(1:10)
log10(t)
prod(log10(t))
```

**10. Realizar una funci on que permita calcular el area de una corona circular**

![Segmento circular](https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Circularsegment.svg/1024px-Circularsegment.svg.png)


```{vector}
seg_circ <- function (R, angulo){
  area <- R^2/2 *(angulo - sin(angulo))
  return(area)
}
```

**11. Construya un vector cualquiera e inviertalo, es decir, que el primer elemento quede de ultimo, el segundo de peńultimo y ası sucesivamente. Compare su resultado con el de la funcion _rev_**
```{vector}
vect_norm <- c(1:90)
vect_inv <- c()
long_ <- length(vect_norm)
for (x in length(vect_norm):1) {
  vect_inv <- c(vect_inv, vect_norm[x])
}

rev(vect_norm)
```

**12. Calcular lo siguiente \[\sum_{i=10}^{100}i^3 + 4i^2\]**

```{vector}
g <- 10:100
h <- g**3
i <- g**2
f <- 4*i
sum(h)+4*sum(i)
```

**13. Calcular lo siguiente \[\sum_{i=1}^{25}\frac {2^i}{i} + \frac {3^i}{i^2}\]
```{vector}
a <- 1:25
b <- 2**a
c <- 3**a
d <- a**2
sum(b/a) + sum(c/d)
```

**14. Lea el siguiente archivo <https://raw.githubusercontent.com/fhernanb/datos/master/Paises.txt>**

```{vector}
tabla <- read.delim("https://raw.githubusercontent.com/fhernanb/datos/master/Paises.txt")
names(tabla)
```
 - Calcular el n ́umero de variables del dataset
```{vector}
ncol(tabla)
```
 - ¿Cuantos países hay en el dataset?
```{vector}
length(tabla$Pais)
```
 - ¿Cuál es el país con mayor población?
```{vector}
tabla[tabla$poblacion == max(tabla$poblacion),]$Pais
```
 
 - ¿Cuál es el país con alfabetización más baja?
```{vector}
tabla[tabla$alfabetizacion == min(tabla$alfabetizacion),]$Pais
```

**15. En R hay unas bases de datos incluídas, una de ellas es la base de datos llamada mtcars. Para conocer las variables que estan en mtcars usted puede escribir en la consola ?mtcars o tambien help(mtcars). De la base mtcars obtenga bases de datos que cumplan las siguientes condiciones.**

```{vector}
car <- ?mtcars
```

 - Autos que tengan un rendimiento menor a 18 millas por galón de combustible.

```{vector}
car[car$mpg < 18]
```

 - Autos que tengan 4 cilindros.
 
```{vector}
car[car$cyl==4]
```

 - Autos que pesen más de 2500 libras y tengan transmisión manual
 
```{vector}
car[car$weight>2500 & Transmission==1]
```

**16. La ecuacion de tiempo es la diferencia entre el tiempo solar medio y el tiempo solar aparente (Referencia <http://pbarbier.com/eqtime/eqtime.html>). Si bien esta varia, la forma analitica de esta ecuacion se muestra a continuacion (Usar x como un rango de 0 a 365). Replicar el grafico.**

```{vector}

x <- seq (0,365,30)
y <- (2*pi*(x-81))/365

Ec_tiempo <- function (x,y){
  Grafica <- 9.87*sin(2*y)- 7.53*cos(y) - 1.5*sin(y)
  return(Grafica)
}

```
