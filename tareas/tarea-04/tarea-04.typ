
#set text(font: "New Computer Modern", size: 12pt)

#let e = counter("exercise")
#let exercise(label, body, number: none) = {

  if number != none {
    e.update(number)
  } else {
    e.step()
  }
  box(width: 100%,stroke: 1pt, inset: 5pt, [#text(size: 1.6em)[*Problema #e.display() #label*] \ #body],)
}

#let infy = $infinity$


#align(center, text(17pt)[
  *Ecuaciones Diferenciales Parciales*\
  *Tarea 4*
])
#align(center)[Antonio Barragán Romero 
  #link("mailto:antonio.barragan@cimat.mx")]


#exercise[][
  Recuelva el siguiente problema
  $ u_(t t) -9u_(x x) = e^x -e^(-x) quad -infy < x< infy, t>0, \
    u(x, 0) = x quad -infy <x<infy, \ 
    u_t (x, 0) = sin(x) quad -infy < x<infy. $
]
*Solución:*
Si tenemos una solución particular $v(x, t)$ del sistema anterior,
entonces por el principio de superposición la solución general es de la forma $u = v + w$, donde
$w$ es solución del sistema homogeneo.

Dado que $e^x-e^(-x)$ no depende de $t$, podemos suponer $v(x, t) = v(x)$, luego $v$ debe satisfacer 
$ -9 v'' = e^x -e^(-x) => v'' = -(e^x -e^(-x))/9, $
integrando dos veces respecto a $x$ tenemos que 
$ v' &=  -1/9 integral e^x d x - 1/9integral e^(-x) (-d x) = -1/9 e^x -1/9 e^(-x), \ 
  => v &=  -1/9 integral e^x + 1/9 integral e^(-x) (- d x) =  -1/9 e^x + 1/9 e^(-x) $

Resolvamos ahora el caso homogeneo.
Notemos que $ u_(t t) -9u_(x x)$ lo podemos escribir como $ (diff_t - 3 diff_x)(diff_t +3diff_x)u = 0, $
// y consideremos el siguiente cambio de coordenadas
// $ xi = x +c t, quad  nu = x - c t. $
// Notemos que $ xi + nu = x$, por la regla de la cadena tenemos que $ diff_x = diff_xi + diff_nu$, de manera simialar
// $xi -nu = 2c t$ y por tanto 
sea $v = u_t + 3 u_x$, entonces se debe cumplir que $v_t - 3v_x=0$, asi tenemos las siguientes ecuaciones de primer orden
$ v_t -3 v_x = 0, quad u_t + 3u_x = v. $
Nosotros sabemos que la solución a la primera ecuación es $v(x, t) = h(x+3t)$, luego queremos encontrar 
solución a la ecuacion $u_t + 3u_x = h(x+3t)$, la cual podemos notar que es lineal entonces la solución 
general esta dada por $u = v+w$, donde $v$ es una solucón al caso particular y $w$ es solución al caso homogeneo.
De manera similar sabemos que la solución al caso homogeneo esta dada por $g(x-3t)$, por otro lado una solución del caso 
particular esta dada por $u(x, t) = f(x+3t)$, con $f'(s) = h(s)/6$, entonces la solucón general esta dada por 
$ u(x,t) = f(x+3t) + g(x-3t). $
Las condiciones inciales nos dicen que: 
$ u(x, 0) = f(x) + g(x) = x, quad u_t (x, 0) = 3f'(x) - 3g'(x) = sin(x), $
de donde obtenemos que $f'(x) + g'(x) = 1$, despejamos para obtener $f'$ y $g'$,  y vemos que
$ f'(s) = sin(s)/6 +1/2,  quad g'(s) = -sin(s)/6 + 1/2, $
integrando obtenemos que 
$  f(s) =  s/2 + 1/6 integral_0^s sin(x) + A + quad g(s) = s/2 + -1/6integral_0^s  + B, $
como $f+g = x$ tenemos que $A + B = 0, $ luego sustituyendo $s=x+3t$ para $f$ y $s = x-3t$ para $g$, se  cumple que 
// #let s = $x+3t$
$ u (x, t) &= 1/2 [(x+3t) + (x-3t)] + 1/6 integral_(x-3t)^(x+3t) sin(s) d s \ 
           &= x -  1/6 [cos(x+3t) - cos(x-3t)].,$
como solución al caso homogeneo.

Por lo dicho al inicio, tenemos que la solución esta dad por 
$ u (x, t) = x -  1/6 [cos(x+3t) - cos(x-3t)] -1/9 e^x + 1/9 e^(-x), $
además (haciendo las cuentas) se puede comprobar que es solución.

#exercise[][
  Resuelve el siguiente problema 
  $ u_t - u_(x x) - 9/4 u = 0, quad 0<x<pi, t>0\ 
    u(0, t) = u_x (pi, t) = 0, quad t>=0, \
    u(x, 0) = sin(3x/2) + sin(9x/2), quad 0<= z<= pi. $
]
*Solución:*
// De manera similar al caso anterior la solución esta dada por $u = v+w$ donde 
// $v$ es una solución particular y $w$ es solución al caso homogeneo.
De manera similar supongamos que $u(x, t) = X(x)T(t)$, sustituyendo en la ecuación obtenemos que 
$ X T' - X'' T -9/4 X T = 0 => T'/T -9/4 = X''/X = -lambda, $
el cual nos genera los siguientes sistemas
$ X'' +lambda X = 0 ,quad T' -9/4T + lambda T = 0 \
  X(0) = 0\
  X'(pi) = 0. $
De donde podemos notar que $p(x) = 1$, $q(x) = 0$, $sigma(x) =1,$ $alpha_1 = 1$, $beta_2 = 1$, luego 
por Teorema 4.7 nos asegura que los valores propios son no negativos, entonces $lambda = mu^2$.

Si $mu=0$, entonces $X'' =0$ lo cual implica que $X(x) = A x + B$, luego $X(0) = 0= B $ 
y $X'(pi) = 0 = A$, entonces $X$ es la solución cero, la cual no nos interesa.

Si $mu >0$, tenemos que $X'' + mu^2 X =0$ cuya solución general $ X(x) = a cos(mu x) + b sin (mu x), $
por las condiciones iniciales tenemos que $X(0) = a = 0$, lo cual implica que $X(x) = b sin(mu x)$, 
entonces $X'(x) = -b mu cos(mu x)$ y por tanto $X'(pi) = 0 = -b mu cos(mu pi)$, $b$ no puede ser $0$
pues tendriamos la solución trivial, luego se debe cumplir que $cos(mu pi) = 0$, lo cual 
nos genera los valores propios $mu_n = (2n-1)/2$, las correspondientes funciones propias son $X_n (x) = sin(mu_n x).$

Ademas sabemos que la solución a $T' -9/4T + lambda T = 0$ correspondiente a $mu_n$ es $T_n (t) = e^(-(mu_n^2-9/4)t)$.
Por el principio de superposición tenemos que $ u(x, t) = sum_(n=1)^(infinity) c_n X_n (x) T_n (t) = sum_(n=1)^(infinity) c_n sin(mu_n x)e^(-(mu_n^2-9/4)t), $
de donde podemos notar que 
$ u(x, 0) = sin(3x/2) + sin(9x/2) =sum_(n=1)^(infinity) c_n sin(mu_n x), $
como la representación en series de Fourier es unica tenemos que $c_n =0$ para todo $n in NN$ exepto $n = 2, 5$.
De lo anterior obtenemos que 
$ u(x, t) &= sin(3/2 x) e^(-(3/2)^2 + 9/4)t + sin(9/2 x) e^(-(9/2)^2 + 9/4)t \ 
          &= sin(3/2 x) + sin(9/2 x) e^( 9/4 - 81/4 )t \
          &= sin(3/2 x) + sin(9/2 x) e^( -18 )t. $

#exercise[][
  Resuelve la ecuación de Laplace
  $ u_(x x) + u_(y y) = 0 $
  en el rectangulo $ 0 < x< b,  quad 0<y<d, $
  sujeto a las condiciones 
  $ u(0, y) = f(y), u(b, y) = g(y), u(x, 0) = 0, u(x, d) = 0 $
]

*Solución:*
Supongamos que $u(x, y) = X(x) Y(y)$ entonces se debe cumplir que 
$ -X'' /X = Y''/Y = -lambda, $
donde $lambda$ es constante. Usando las condiciones de frontrera, se debe cumplir que $X(x)Y(0) = 0$ y 
$X(x)Y(d) = 0$, para tener soluciones no triviales suponemos $Y(0) = Y(d) = 0$ y tenemos el sistema
$ Y'' + lambda Y = 0, quad 0<y<d, \
 Y(0) = 0 \ 
 Y(d) = 0, $
el cual podemos notar es un problema de Sturm-Liouville, cuyos valores propios son $ lambda_n = mu_n^2 = (n^2pi^2)/d^2, $
y funciones propias $ Y_n (y) = sin((n pi y)/d), $
para $n>=1$. 
Para estos valores de $lambda_n$, la ecuación para $X$ es: 
$ X'' -mu_n^2 X = 0, $
cuya solución general es $ X_n (x)= alpha_n cosh(mu_n x) + beta_n sinh(mu_n x). $
Luego, por el principio de superposición tenemos que 
$ u(x, y) = sum_(n=1)^infinity X_n (x) Y_n (y) = sum_(n=1)^infinity (alpha_n cosh(mu_n x) + beta_n sinh(mu_n x)) sin(mu_n y), $
usando las condiciones inicales se debe cumplir que 
$ u(0, y) = sum_(n=1)^infinity alpha_n sin(mu_n y) = f(y), $
entonces los $alpha_n$'s deben ser los coeficientes seno de la serie de Fourier de $f$ y por tanto 
$ alpha_n = 2/d integral_0^d f(y) sin(mu_n y) d y. $
Para $x = b$ tenemos que 
$ u(b, y) =  sum_(n=1)^infinity (alpha_n cosh(mu_n b) + beta_n sinh(mu_n b)) sin(mu_n y) = g(y),  $ 
y de manera similar, los $ (alpha_n cosh(mu_n b) + beta_n sinh(mu_n b))$'s deben ser los coeficientes seno 
de la serie de Fourier de $g$ y por tanto
$  (alpha_n cosh(mu_n b) + beta_n sinh(mu_n b)) = 2/d integral_0^d g(y) sin(mu_n y) d y = gamma_n, $
lo cual implica que 
$ beta_n = (gamma_n-alpha_n cosh(mu_n b) )/ sinh(mu_n b), $
se sigue que
$ X_n (x) &= alpha_n cosh(mu_n x) + (gamma_n-alpha_n cosh(mu_n b) )/ sinh(mu_n b) sinh(mu_n x)\
          &= 1/(sinh(mu_n b)) [alpha_n sinh(mu_n(b-y)) + gamma_n sinh_(mu_n y)]. $

De lo anteior tenemos que la solución es:
$ u (x, y) = sum_(n=1)^infinity 1/(sinh(mu_n b)) [alpha_n sinh(mu_n(b-y)) + gamma_n sinh_(mu_n y)] sin(mu_n y), $
con $alpha_n, beta_n$ y $gamma_n$ como se describieron anteriormente.