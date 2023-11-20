
#set text(font: "New Computer Modern", size: 12pt)
#set enum(numbering: "(a)")
#let inf = $infinity$
#let e = counter("exercise")
#let exercise(label, body, number: none) = {

  if number != none {
    e.update(number)
  } else {
    e.step()
  }
  box(width: 100%,stroke: 1pt, inset: 5pt, [#text(size: 1.6em)[*Problema #e.display() #label*] \ #body],)
}

#align(center, text(17pt)[
  *Ecuaciones Diferenciales Parciales*\
  *Tarea 1*
])
#align(center)[Antonio Barragán Romero 
  #link("mailto:antonio.barragan@cimat.mx")]

#exercise()[11.1][

Supongamos que $f$ es $T$-periódica y sea $F$ una antiderivada de $f$; por ejemplo 
$ F(x) = integral_0^x f(x) d x, quad -inf <x<inf. $
Muestra que $F$ es $T$-periódica si y solo si la integral de $f$ sobre cualquier intervalo de longitud $T$ es cero.]

*Demostración:* 

Sea $F$ una antiderivada de $f$, entonces se cumple que $F'(x) = f(x)$ para todo $x in RR$. Por el Teorema Fundamental del Calculo tenemos 
$ F(T + x) - F(x) = integral_(x)^(T+x) f(x) d x. $
De lo anterior tenemos que $F$ es $T$-periódica si y solo $F(T+x) - F(x) = 0$ lo cual sucede si y solo si 
$ integral_(x)^(T+x) f(x) d x = 0, $
es decir, la integral sobre todo intervalo de longitud $T$ es cero.


#exercise()[11.4][ 

Muestra que $e^x$ es suma de una función par y una función impar.]

*Demostración:*

Supongamos que $e^x$ es suma de una función par $f$ y una función impar $g$, es decir, 
$ e^x = f(x) + g(x)$. Dado que $f(x) = f(-x)$ para todo $x in RR$ y que $g(-x) = -g(x)$ para todo $x in RR$, entonces 
$ e^(-x) = f(-x) + g(-x) = f(x) - g(x). $
Lo anterior implica que $e^x + e^(-x) = 2f(x)$, por lo cual $ f(x) = (e^x + e^(-x))/2$, de manera similar tenemos que 
$e^x - e^(-x) = 2g(x)$ y por tanto $g(x) = (e^x - e^(-x))/2.$
Por ultimo notemos que 
$ f(x) + g(x) = (e^x + e^(-x))/2 + (e^x - e^(-x))/2 = e^x, $
mas aún,  $f$ y $g$ son únicas.

#exercise()[11.17][

Considera la integral $ integral_0^1 (d x)/(1+x^2) $
+ Evalúa la integral de manera explicita.
+ Usa la serie de Taylor de $1/(1+x^2)$ (una serie geométrica) para obtener una serie infinita para la integral.
+ Iguala la parte a) y la b) para derivar una formula para $pi$.]

*Demostración:*
+ Notemos que $(arctan x)' = 1/(1+x^2)$, por lo cual, el Teorema Fundamental del Calculo nos dice que 
  $ integral_0^1 (d x)/(1+x^2) = arctan(1) - arctan(0) = pi/4 - 0 = pi/4. $
+ Nosotros sabemos que para $abs(u)<1$ se cumple $ 1/(1-u) = sum_(k=0)^(infinity) u^k, $ por lo cual si consideramos $u = -x^2$ tenemos que 
  $ 1/(1+x^2) = sum_(k=0)^(infinity) (-x^2)^k = sum_(k=0)^(infinity) (-1)^k x^(2k), $
  para $abs(-x^2) = abs(x^2)<1.$ Más aún la convergencia anterior es uniforme en su radio de convergencia, que es 1,
  por lo cual se cumple que 
  $ integral 1/(1+x^2) d x = integral sum_(k=0)^(infinity) (-1)^k x^(2k) d x = sum_(k=0)^(infinity) (-1)^k integral x^(2k) d x = sum_(k=0)^(infinity) (-1)^k x^(2k+1)/(2k +1). $
+ De lo anterior tenemos que 
  $ pi/4 = integral_0^1 (d x)/(1+x^2) = sum_(k=0)^(infinity) (-1)^k integral_0^1 x^(2k) d x = sum_(k=0)^(infinity) (-1)^k 1/(2k +1), $
  por lo cual 
  $ pi = sum_(k=0)^(infinity) (-1)^k 4/(2k +1). $

#exercise()[13.1][

Para cada una de los siguientes problemas de valores iniciales en la frontera, determina si existe o no una distribución de temperatura
y encuentra los valores de $beta$ para los cuales una solución de equilibrio existe.
+ $ (diff u)/(diff t) = (diff^2 u) /(diff x^2) +1, quad (diff u)/(diff x)(0, t) = 1, quad (diff u)/(diff x)(a, t) = beta, $
+ $ (diff u)/(diff t) = (diff^2 u) /(diff x^2), quad (diff u)/(diff x)(0, t) = 1, quad (diff u)/(diff x)(a, t) = beta, $
+ $ (diff u)/(diff t) = (diff^2 u) /(diff x^2) + x -beta, quad (diff u)/(diff x)(0, t) = 0, quad (diff u)/(diff x)(a, t) = 0. $]

*Solución:* 
Supongamos que existe una solución de equilibrio, entonces tenemos que existe $phi$ (que no depende del tiempo) tal que 
$u(x, t) = phi(t)$.
+ De lo anterior tenemos que la ecuación la podemos escribir en términos de $phi$ como $ phi''(x) = -1, $
  al integrar obtenemos que 
  $ phi'(x) = -x + C quad "y que " phi(x) = -x^2/2 + C x + D. $
  Por lo cual $u_x (x, t) = -x + C$ y $u(x, t) = -x^2/2 + C x + D$ para todo $x, t$, usando las condiciones iniciales vemos que 
  $u_x(0, t) = C = 1$, entonces $u_x (x, t) = -x + 1$, se sigue que $u_x(a, t) = -a + 1= beta$. 
  De lo anterior, existe una solución de equilibrio si y solo si $beta = 1-a$ y la solución es:
  $ u(x,t) = -x^2/2 + x + D "para" 0<x<a #footnote[Pues es un problema de frontera.], $
  donde $D$ es constante.

+ De manera similar tenemos que $phi''(x) = 0$, lo cual implica que $ phi'(x) = C quad"y que "quad phi(x) = C x + D, $
  usando las condiciones iniciales tenemos que $u_x (0, 1) = 1 = C$, por tanto $u_x (x,t) = 1$, por otro lado
  también se debe cumplir que $u_x (a, t) = 1 = beta$. De lo anterior vemos que existe _solución de equilibrio_
  dada por $ u(x, t) = x + D quad "para" 0<x<a, $
  donde $D$ es constante.

+ En este caso se debe cumplir que $phi''(x) = - (x-beta)$ al integrar#footnote[Usando ideas de *EDO*.] obtenemos que 
  $phi'(x) = -(x-beta)^2/2 + C$ y que $phi(x) = -(x-beta)^3/6 + C x + D$.
  Por las condiciones iniciales tenemos que $u_x (0, t) = -beta^2/2 + C = 0$ y que $u_x (a, t) = -(a-beta)^2/2 + C = 0$,
  lo cual implica que $C=beta^2/2$ y que $ beta^2/2 = (a-beta)^2/2 => beta^2 = a^2 - 2a beta +beta^2 => 0 = a(a-2beta). $
  Como es un problema de frontera podemos suponer que $a!= 0$ y por tanto se debe cumplir que $a - 2beta = 0$, 
  entonces existe _solución de equilibrio_ si y solo si $beta = a/2$ y $C = a^2/8$, la solución esta dada por 
  $ u(x, t) = -(x-a/2)^3/6 + a^2/8 x +D, "para" 0<x<a $
  donde $ D$  es constante.

#exercise[14.11][
Usando la ecuación de onda en una dimensión que gobierna el pequeño desplazamiento de una 
cuerda que vibra uniformemente:
$ (diff^2 u)/(diff t^2) = c^2 (diff^2 u)/(diff x^2), quad 0< x<L, quad t>0, $
deriva la ecuación de la energía para una cuerda que vibra,
$ (d E)/ (d t) = rho c^2 (diff u)/(diff x) (diff u)/(diff t) limits(bar.v)_0^L, $ 
donde la energía Total $E$ es la suma de la energía cinética y la energía potencial, y $rho$
es la densidad lineal, esto es, la masa por unidad de longitud de la cuerda (suponiendo constante),
$ E(t) = rho/2 integral_0^L ( (diff u) / (diff t) )^2 d x + (rho c^2 )/ 2 integral_0^L ((diff u)/(diff x)^2) d x. $]

*Solución:*
Supongamos que $u$ satisface $ (diff^2 u)/(diff t^2) = c^2 (diff^2 u)/(diff x^2), quad 0< x<L, quad t>0, $ entonces
por la formula de integración de Leibniz se cumple que
$ (d E)/(d t) &= rho/2  d/(d t)(integral_0^L u_t^2 d x)+ (rho c^2 )/ 2 d/(d t) (integral_0^L u_x^2 d x) \
              &= rho/2 integral_0^L diff/(diff t) u_t^2 d x + (rho c^2 )/ 2 integral_0^L diff/(diff t) u_x^2 d x, $
luego, por regla de la cadena se cumple que 
$ (d E)/(d t) = rho/2 integral_0^L  2u_t u_(t t) d x + (rho c^2 )/ 2  integral_0^L 2u_x u_(x t) d x, $
por hipótesis tenemos que $u_(t t) = c^2 u_(x x)$ y ademas se cumple que $u_(x t) = u_(t x)$ pues $u in C^2$, por lo cual 
$ (d E)/(d t) &= rho c^2 integral_0^L  u_t u_(x x) d x + rho c^2   integral_0^L u_x u_(x t) d x\ 
              &= rho c^2 integral_0^L  (u_t u_(x x) + u_x u_(t x)) d x \
              &= rho c^2 integral_0^L  diff/(diff x) (u_t u_x) d x, \ $
se sigue por el Teorema Fundamental del Calculo que 
$ (d E)/(d t) = rho c^2 (u_t u_x)limits(bar.v)_0^L, $
como queremos.

#exercise()[15.1][

Muestra que la función $ u  = 1/(sqrt(x^2 +y^2+z^2)), $
es armonica, es decir, es una solución a la ecuación de Laplace en tres dimensiones, $Delta u = 0$.]

*Demostración:*
Queremos que $u_(x x) + u_(y y) + u_(z z) = 0$. Primero, por regla de la cadena, notemos que
$ u_x = -1/2 1/(root(3/2, x^2 +y^2 +z^2))(2x) = -(x^2 +y^2 +z^2)^(-3/2)(x), $
luego, 
$ u_(x x) &= -(-3/2)(x^2 +y^2 +z^2)^(-5/2)(2x)(x) - (x^2 +y^2 +z^2)^(-3/2)\ 
          &= (3x^2)/(x^2 +y^2 +z^2)^(5/2) - 1/(x^2 +y^2 +z^2)^(3/2) $
De manera similar, por simetría, tenemos que 
$ u_(y y) = (3y^2)/(x^2 +y^2 +z^2)^(5/2) - 1/(x^2 +y^2 +z^2)^(3/2), $
$ u_(z z) = (3z^2)/(x^2 +y^2 +z^2)^(5/2) - 1/(x^2 +y^2 +z^2)^(3/2). $
De lo anterior vemos que 
$ u_(x x) + u_(y y) + u_(z z) &= 3(x^2+y^2+z^2)/(x^2 +y^2 +z^2)^(5/2) - 3/(x^2 +y^2 +z^2)^(3/2) \ 
                              &= (3(x^2+y^2+z^2) - 3(x^2+y^2+z^2))/(x^2 +y^2 +z^2)^(5/2)\
                              &= 0, $
como queremos

#exercise()[19.2][

La ecuación diferencial de Hermite se lee como 
$ y'' -2x y' + lambda y = 0, quad -infinity < x < infinity, $

+ Multiplica por $e^(-x^2)$ y devuelve la ecuación diferencial en forma de Sturm-Liuville. 
 Determina si el problema de Sturm-Liouville resultante es regular o singular.
+ Muestra que los polinomios de Hermite 
 $ H_0(x) = 1, quad H_1(x) = 2x, quad H_2(x)= 4x^2-2, quad H_3(x) = 8x^3-12x $
 son funciones propias del problema de Sturm-Liouville y encuentra los valores propios correspondientes.
+ Usa una función de peso apropiada y muestra que $H_1$ y $H_2$ son ortogonales en el intervalo $(-infinity, infinity)$
 con respecto a esta función de peso.]

*Solución*
+ Recordemos primero que un problema de Sturm-Liouville tiene la forma
  $ (p(x)phi'(x))' + [q(x) + lambda sigma(x)]phi(x) = 0, quad a<x<b, $
  donde $p', q$ y $sigma$ son continuas en $[a, b]$ y $p, sigma$ son positivas.
  Desarrollando un poco notemos que un problema de Sturm-Liouville también tiene la forma 
  $ p(x)'phi'(x) + p(x)phi''(x) + [q(x) + lambda sigma(x)]phi(x) = 0, quad a<x<b, $
  Luego, tenemos que 
  $ 0 = (y'' -2x y' + lambda y)e^(-x^2) = e^(-x^2)y'' -2x e^(-x^2) y' + lambda e^(-x^2) y, $
  comparando coeficientes podemos notar que $p(x) = e^(-x^2)$, $q(x) = 0$ y $sigma(x) =e^(-x^2)$ las cuales son continuas y positivas en todo $RR$.
  Entonces la forma de Sturm-Liouville de la ecuación de Hermite es:
  $ (e^(-x^2)y')' + lambda e^(-x^2) y = 0, $
  dado que el intervalo es infinito el sistema es singular.

+ 
  - Para $y = H_0(x)=1$, entonces $y' = 0$ y  el sistema se convierte en  $ + lambda e^(-x^2) = 0, $ dado que la exponencial es positiva se sigue que $lambda=0.$
  - Suponiendo $y = H_1(x)=2x$ tenemos que $y'=2$ y por tanto el sistema se ve como 
    $ (e^(-x^2)2)' + lambda e^(-x^2) 2x = -4x e^(-x^2) + lambda e^(-x^2)2x = 0 =>  (lambda  - 2)e^(-x^2)x = 0, $
    $x!=0$ implica que $lambda = 2$.
  - Si $y = H_2(x) = 4x^2 -2$ entonces $y' = 8x$, el sistema queda como 
    $ (e^(-x^2)8x)' + lambda e^(-x^2) (4x^2 - 2) = 0, $
    de hecho se debe cumplir que 
    $ 0 = (y'' -2x y' + lambda y)e^(-x^2), $
    como $e^(-x^2)$ es positiva entonces se debe cumplir que $0 = y'' -2x y' + lambda y$, como $y'' = 8$, se debe cumplir que 
    $8 - 16x^2 + lambda(4x^2 -2) = 0 => (4lambda - 16)x^2 + (8-2lambda) = 0, $
    lo cual implica que $4lambda - 16 =0$ y $8-2lambda = 0$ y por tanto $lambda = 4$.
  - Suponiendo $y = H_3(x) = 8x^3 -12x$, tenemos que $y' = 24x^2 -12$ y $y'' = 48x$, por tanto se debe cumplir que 
    $ 48x - 2x(24x^2 -12) + lambda(8x^3 -12x) = 0 => (8lambda - 48)x^3 + (72 -12lambda)x = 0, $ 
    es decir $8lambda - 48 = 0$ y $72 -12lambda=0$ lo cual implica $lambda = 6$.
+ Para checar que $H_1$, $H_2$ son ortogonales consideremos $sigma(x) = e^(-x^2)$, entonces tenemos que 
  $ angle.l H_1, H_2 angle.r = integral_(-inf)^inf 2x e^(-x^2) d x, $
  como $2x e^(-x^2)$ es una función impar  y los limites de integración son simétricos tenemos que la integral vale cero, 
  como queremos.




#exercise()[19.3][

Encuentra todas las funciones $phi$ para las cuales $u(x, t) = phi(x-c t)$ es una solución a la ecuación del calor
$ (diff^2 u)/(diff x^2) = 1/k (diff u)/(diff t), quad -infinity<x<infinity, $
donde $k$ y $c$ son constantes.]

*Solución:*
Supongamos $u(x, t) = phi(x-c t)$ es solución y sea $s=x-c t$ entonces por regla de la cadena tenemos que 
$ u_(x x) = phi''(s)quad "y que"quad u_(t) = -c phi'(s), $
por lo cual se debe cumplir que 
$ phi''(s) =-c/k phi'(s) => phi''(s) + c/k phi'(s) = 0, $
cuyo polinomio característico es $lambda^2 + c/k lambda = 0$, sus ceros son $lambda = 0$ y $lambda=-c/k$, por lo cual 
la solución general esta dada por:
$ phi(s) = A + B e^(-c/k s), $ 
se sigue entonces que 
$ u(x, t) = phi(x -c t) = A + B e^(-c/k (x - c t)), $
donde $A, B$ son constantes.

#exercise()[19.12][

Encuentra todas las funciones $phi$ para las cuales $u(x, t) = phi(x+c t)$ es una solución a la ecuación del calor 
$ (diff^2 u)/(diff x^2) = 1/k (diff u) / (diff t), $
donde $k$ y $c$ son constantes.]

*SoLución:*
Sea $s = x + c t$, la regla de la cadena implica que 
$ u_(x x) = phi''(s)quad "y que"quad u_(t) = c phi'(s), $
entonces de debe cumplir que 
$ phi''(s) =c/k phi'(s) => phi''(s) - c/k phi'(s) = 0, $
su polinomio característico es $lambda^2 - c/k lambda = 0$ cuyas raíces son $lambda = 0$ y $lambda=c/k$, entonces la solución
general es:
$ phi(s) = A + B e^(c/k s), $
y por tanto 
$ u(x, t) = phi(x -c t) = A + B e^(c/k (x - c t)), $
con $A, B$ constantes.

#exercise()[19.15][

Ademas de las ecuaciones lineales, algunos ecuaciones no lineales también pueden resultar en _soluciones de onda viajera_ de la forma
$ u(x, t) = phi(x- c t). $
La _Ecuación de Fisher,_ la cual modela la propagación de un gen ventajoso en una población, donde $u(x, t)$ es la densidad del gen 
en la población al tiempo $t$ y posición $x$, es dada por 
$ (diff u)/(diff t) = (diff^2 u)/(diff x^2) +u(1-u). $
Muestra que la ecuación de Fisher tiene solución de esta forma si $phi$ satisface la ecuación diferencial ordinaria no lineal 
$ phi'' + c phi' + phi(1-phi) =0. $]

*Solución:*
Supongamos que $ u(x, t) = phi(x -c t)$ cumple que $phi'' + c phi' + phi(1-phi) =0$, por regla de la cadena notemos que $u_t = -c phi'$
y que 
$ u_(x x) = phi'', $
por hipótesis $phi'' + c phi' + phi(1-phi) =0$ lo cual implica que $-c phi' = phi''  + phi(1-phi),$ sustituyendo lo anterior notemos que 
$ u_t = u_(x x) + u(1-u), $
es decir, $u$ satisface la ecuación de Fisher, como queremos.

