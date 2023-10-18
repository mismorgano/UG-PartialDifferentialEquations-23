
#set text(font: "New Computer Modern Math")
#set enum(numbering: "(a)")
#let inf = $infinity$
#box(stroke: black)[== Problema 1 [11.1]

Supongamos que $f$ es $T$-periodica y sea $F$ una antiderivada de $f$; por ejemplo 
$ F(x) = integral_0^x f(x) d x, quad -inf <x<inf. $
Muestra que $F$ es $T$-periodica si y solo si la integral de $f$ sobre cualquier intervalo de longitud $T$ es cero.]

*Demostración:*

Sea $F$ una antiderivada de $f$, entonces se cumple que $F'(x) = f(x)$ para todo $x in RR$. Por el Teorema Fundamental del Calculo tenemos 
$ F(T + x) - F(x) = integral_(x)^(T+x) f(x) d x. $
De lo anterior tenemos que $F$ es $T$-periodica si y solo $F(T+x) - F(x) = 0$ lo cual sucede si y solo si 
$ integral_(x)^(T+x) f(x) d x = 0, $
es decir, la integral sobre todo intervalo de longitud $T$ es cero.


== Problema 2 [11.4]

Muestra que $e^x$ es suma de una función par y una función impar.

*Demostración:*

Supongamos que $e^x$ es suma de una función par $f$ y una función impar $g$, es decir, 
$ e^x = f(x) + g(x)$. Dado que $f(x) = f(-x)$ para todo $x in RR$ y que $g(-x) = -g(x)$ para todo $x in RR$, entonces 
$ e^(-x) = f(-x) + g(-x) = f(x) - g(x). $
Lo anterior implica que $e^x + e^(-x) = 2f(x)$, por lo cual $ f(x) = (e^x + e^(-x))/2$, de manera similar tenemos que 
$e^x - e^(-x) = 2g(x)$ y por tanto $g(x) = (e^x - e^(-x))/2,$
mas aún, podemos notar que $f$ y $g$ son unicas.

== problema 3 [11.17]

Considera la integral $ integral_0^1 (d x)/(1+x^2) $
+ Evalua la integral de manera explicita.
+ Usa la serie de Taylor de $1/(1+x^2)$ (una serie geometrica) para obtener una serie infinita para la integral.
+ Iguala la parte a) y la b) para derivar una formula para $pi$.

*Demostración:*
+ Notemos que $(arctan x)' = 1/(1+x^2)$, por lo cual, el Teorema Fundamental del Calculo nos dice que 
  $ integral_0^1 (d x)/(1+x^2) = arctan(1) - arctan(0) = pi/4 - 0 = pi/4. $
+ Nosotros sabemos que para $abs(u)<1$ se cumple $ 1/(1-u) = sum_(k=0)^(infinity) u^k, $ por lo cual si consideramos $u = -x^2$ tenemos que 
  $ 1/(1+x^2) = sum_(k=0)^(infinity) (-x^2)^k = sum_(k=0)^(infinity) (-1)^k x^(2k), $
  para $abs(-x^2) = abs(x^2)<1.$ Más aún la convergencia anterior es uniforme en su radio de convergencia, que es 1,
  por lo cual se cumple que 
  $ integral 1/(1+x^2) d x = integral sum_(k=0)^(infinity) (-1)^k x^(2k) d x = sum_(k=0)^(infinity) (-1)^k integral x^(2k) d x = sum_(k=0)^(infinity) (-1)^k x^(2k+1)/(2k +1). $
+ De lo anterio tenemos que 
  $ pi/4 = integral_0^1 (d x)/(1+x^2) = sum_(k=0)^(infinity) (-1)^k integral_0^1 x^(2k) d x = sum_(k=0)^(infinity) (-1)^k 1/(2k +1), $
  por lo cual 
  $ pi = sum_(k=0)^(infinity) (-1)^k 4/(2k +1). $

== Problema 4 [13.1]

Para cada una de los siguientes problemas de valores iniciales en la frontera, determina si existe o no una distribución de temperatura
y encuentra los valores de $beta$ para los cuales una solución de equilibrio existe.
+ $ (diff u)/(diff t) = (diff^2 u) /(diff x^2) +1, quad (diff u)/(diff x)(0, t) = 1, quad (diff u)/(diff x)(a, t) = beta, $
+ $ (diff u)/(diff t) = (diff^2 u) /(diff x^2), quad (diff u)/(diff x)(0, t) = 1, quad (diff u)/(diff x)(a, t) = beta, $
+ $ (diff u)/(diff t) = (diff^2 u) /(diff x^2) + x -beta, quad (diff u)/(diff x)(0, t) = 0, quad (diff u)/(diff x)(a, t) = 0. $
*Solución:* 
Supongamos que existe una solución de equilibrio, entonces tenemos que existe $phi$ (que no depende del tiempo) tal que 
$u(x, t) = phi(t)$.
+ La ecuación la podemos escribir en terminos de $phi$ como $ phi''(x) = 1 $

== Problema 5 [14.11]
Usando la ecuación de onda en una dimensión que gobierna el pequeño dezplasamiento de una 
cuerda que vibra uniformemente:
$ (diff^2 u)/(diff t^2) = c^2 (diff^2 u)/(diff x^2), quad 0< x<L, quad t>0, $
deriva la ecuación de la energia para una cuerda que vibra,
$ (d E)/ (d t) = rho c^2 (diff u)/(diff x) (diff u)/(diff t) limits(bar.v)_0^L, $ 
donde la energia Total $E$ es la suma de la energia cinetica y la energia potencial, y $rho$
es la densidad lineal, esto es, la masa por unidad de longitud de la cuerda (suponiendo constante),
$ E(t) = rho/2 integral_0^L ( (diff u) / (diff t) )^2 d x + (p c^2 )/ 2 integral_0^L ((diff u)/(diff x)^2) d x. $

*Solución:*
Supongamos que existen $X$, $T$ tales que $u(x, t) = X(x) T(t)$ es solución al problema anterior.
Entonces tenemos que 
$ X(x)T''(t) = 1/pi^2 X''(x) T(t) => T''(t)/T(t) = 1/pi^2 X''(x)/X(x), $


== Problema 6 [15.1]

Muestra que la función $ u  = 1/(sqrt(x^2 +y^2+z^2)), $
es armonica, es decir, es una solución a la ecuación de Laplace en tres dimensiones, $Delta u = 0$.

*Demostración:*
Queremos que $u_(x x) + u_(y y) + u_(z z) = 0$. Primero, por regla de la cadena, notemos que
$ u_x = -1/2 1/(root(3/2, x^2 +y^2 +z^2))(2x) = -(x^2 +y^2 +z^2)^(-3/2)(x), $
luego, 
$ u_(x x) &= -(-3/2)(x^2 +y^2 +z^2)^(-5/2)(2x)(x) - (x^2 +y^2 +z^2)^(-3/2)\ 
          &= (3x^2)/(x^2 +y^2 +z^2)^(5/2) - 1/(x^2 +y^2 +z^2)^(3/2) $
De manera similar, por simetria, tenemos que 
$ u_(y y) = (3y^2)/(x^2 +y^2 +z^2)^(5/2) - 1/(x^2 +y^2 +z^2)^(3/2), $
$ u_(z z) = (3z^2)/(x^2 +y^2 +z^2)^(5/2) - 1/(x^2 +y^2 +z^2)^(3/2). $
De lo anterior vemos que 
$ u_(x x) + u_(y y) + u_(z z) &= 3(x^2+y^2+z^2)/(x^2 +y^2 +z^2)^(5/2) - 3/(x^2 +y^2 +z^2)^(3/2) \ 
                              &= (3(x^2+y^2+z^2) - 3(x^2+y^2+z^2))/(x^2 +y^2 +z^2)^(5/2)\
                              &= 0, $
como queremos

== Oroblema 7 [19.2]

La ecuación diferencial de Hermite se lee como 
$ y'' -2x y' + lambda y = 0, quad -infinity < x < infinity, $

+ Multiplica por $e^(x^2)$ y devuelve la ecuación diferencial en forma de Sturn-Liuville. 
 Determina si el problema de Sturm-Liouville resultante es regular o singular.
+ Muestra que los polinomios de Hermite 
 $ H_0(x) = 1, quad H_1(x) = 2x, quad H_2(x)= 4x^2-2, quad H_3(x) = 8x^3-12x $
 son funciones propias del problema de Sturm-Liouville y encuentra los valores propios correspondientes.
+ Usa una función de peso apropiada y muestra que $H_1$ y $H_2$ son ortogonales en el intervalo $(-infinity, infinity)$
 con respecto a esta función de peso.

== Problema 8 [19.3]

Encuentra todas las funciones $phi$ para las cuales $u(x, t) = phi(x-c t)$ es una solución a la ecuación del calor
$ (diff^2 u)/(diff x^2) = 1/k (diff u)/(diff t), quad -infinity<x<infinity, $
donde $k$ y $c$ son constantes.

== Problema 9 [19.12]

Encuentra todas las funciones $phi$ para las cuales $u(x, t) = phi(x+c t)$ es una solución a la ecuación del calor 
$ (diff^2 u)/(diff x^2) = 1/k (diff u) / (diff t), $
donde $k$ y $c$ son constantes.

== Problema 10 [19.15]

Ademas de las ecuaciones lienales, algunos ecuaciones no lineales tambien pueden resultar en _soluciones de onda viajera_ de la forma
$ u(x, t) = phi(x- c t). $
La _Ecuación de Fisher,_ la cual modela la propagación de un gen ventajoso en una población, donde $u(x, t)$ es la densidad del gen 
en la población al tiempo $t$ y posiciín $x$, es dada por 
$ (diff u)/(diff t) = (diff^2 u)/(diff x^2) +u(1-u). $
Muestra que la ecuación de Fisher tiene solución de esta forma si $phi$ satisface la ecuación diferencial ordinaria no lineal 
$ phi'' + c phi' + phi(1-phi) =0. $


