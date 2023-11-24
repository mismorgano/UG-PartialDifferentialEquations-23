
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

#align(center, text(17pt)[
  *Ecuaciones Diferenciales Parciales*\
  *Tarea 2*
])
#align(center)[Antonio Barragán Romero 
  #link("mailto:antonio.barragan@cimat.mx")]


#exercise[][
   
Considere la ecuación $ u u_x + u_y = 1. $
con los datos $ x = s, y = s, z = s/2; quad 0 <= s <= 1 $
Resolver el problema y calcular el Jacobiano asociado.]

*Solución:*
Notemos que las ecuaciones caracteristicas son:
$ cases(dot(x) = u,
        dot(y) = 1,
        dot(u) = 1,), $
cuyas soluciones estan dadas por 
$ x(t, s) =t^2/2 + (s t)/2 + C_1(s) quad y(t,s) = t + C_2(s) quad u(t, s) = t + s/2.  $
Por hipotesis tenemos que 
$ cases(x(0, s ) = s, y(0,s) =s, z(0, s) = s/2), $ cuyo Jacobiano asociado 
$ J = det mat(x_t, y_t;
              x_s, y_s) = mat(u, 1;
                              1, 1) = u -1. $
Luego, con las parametrizaciones dadas tenemos que 
$ x(t, s) =t^2/2 + (s t)/2 + s quad y(t,s) = t + s quad u(t, s) = t + s/2.  $
De lo anterior vemos que $t = (2x - 2y)/(y+2)$ y que $s = y-t$, por lo cual la solución es:
$ u(x, y) &=  (2x - 2y)/(y+2) + (y - (2x - 2y)/(y+2))/2 \ 
          &= (2x - 2y)/(y+2) + (y(y+2) - 2x+2y)/(2(y+2)). $

 
#exercise[][

Considere la ecuación del ejercicio anterior pero con los datos 
$ x = s^2/2, y = s, z=s, quad 0 <= s <= 1 $
Calcular el Jacobiano asociado, encontrar todas las soluciones y grafique algunas de ellas.]
   
*Solución:*
En este caso tenemos que 
$ u(t, s) = t + C_3(s) quad y(t, s) = t + C_2(s) quad x = t^2/2 + t C_3(s) + C_1(s), $
por hipotesis se cumple que $u(0, s) = s = C_3(s)$, $y(0, s) = s = C_2(s)$ y $x(0, s) = s^2/2 = C_1(s)$.
De lo anterior obtenemos que 
$ u(t, s) = t + s quad y(t, s) = t + s quad x = t^2/2 + t s + s^2/2, $
cuyo Jacobiano asociado (en $t=0$) es 
$ J = det mat(x_t, y_t;
              x_s, y_s) = mat(u, 1;
                              s, 1) = u -s. $ 
De lo anterior podemos notar que $x = 1/2(t+s)^2$ y $y = t+s$, por lo cual $u(x, y) = plus.minus sqrt(2x)$, 
$u(x, y) = y$ y por superposición se cumple que 
$ u(x, y) = plus.minus sqrt(2x) + y. $


Ahora veamos las graficas:
// #figure(image("problema2_1.png", width: 100%), caption: []) 
// #figure(image("problema2_2.png", width: 100%), caption: []) 
// #figure(image("problema2_3.png", width: 100%), caption: []) 

#grid(columns: (1fr, 1fr), figure(image("problema2_1.png", width: 100%), caption: []) , figure(image("problema2_2.png", width: 100%), caption: []), figure(image("problema2_3.png", width: 100%), caption: []) )

#exercise[][

Resolver la ecuación $ u_x + 3y^(2/3) u_y = 2 $
con la condición inicial $u(x, 1) = 1+x$.]

*Solución:*
Notemos que las ecuaciones caracteristicas son:
$ cases(dot(x) = 1, dot(y) =3y^(2/3), dot(u) = 2), $
por lo cual $ x(t, s) = t + C_1(s) quad y(t, s) = (t+ C_2(s))^3 quad u(t, s) = 2t + C_3(s). $
Consideremos la parametrizacion: $ cases(x(0, s) = s, y(0, s) = 1, u(0, s) = 1+s), $
cuyo Jacobiano es $ J = det mat(x_t, y_t; 
                                x_s, y_s) =det  mat(1, 3y^(2/3);
                                                1, 0) = -3y^(2/3), $
el cual es invertible siempre que $y!= 0$.

De lo anterior obtenemos que $ x(t, s) = t+s quad y(t, s) = (t+1)^3 quad u(t, s) = 2t + 1 + s, $
y notemos que la solución esta dada por:
$ U(x, y) = 2t + 1 + s = (t+s) + (t+1) = x + y^(1/3). $


#exercise[][

Considere el problema de Cauchy $ u_x + u_y =1, u(x, x) = x$.
Mostrar que tiene una infinidad de soluciones.]

*Solución:*
Notemos que las ecuaciones caracteristicas son: $ cases(dot(x) = 1, dot(y) = 1, dot(u) = 1), $
y la parametrización esta dada por: $x = s, quad y = s, quad u = s, $
cuyo Jacobiano es $ J = det mat(x_t, y_t; x_s, y_s) = det mat(1, 1; 1, 1) = 0, $
por lo cual la solución no es unica.

Más aún, notemos que $u=x$ y $u=y$ son solucón por lo cual $u(x, y) = alpha x + beta y$ debe ser solución, entonces se debe cumplir que 
$ 1 = u_x + u_y = alpha + beta, $
y por tanto $beta = 1-alpha$, luego $u(x, y) = alpha x + (1-alpha) y,$
por ultimo notemos que $u(x, x) = alpha x + (1-alpha) x = x.$

De lo anterior tenemos que $u(x, y) = alpha x + (1-alpha) y, $
es solución para todo $alpha in RR$.


#exercise[][

Considere la ecuación $ (y+u)u_x + y u_y = x-y, $
con la condición inicial $u(x, 1) = 1+x.$]

*Solución:*
Las ecuaciones caracteristicas son: $ cases(dot(x) = y+u, dot(y) =y, dot(u) = x-y), $
una parametrizacion natural es: $ x = s, quad y = 1, quad u = 1+s, $
luego el sistema a resolver es: $ cases(dot(x) = y+x+1, dot(y) =y, dot(u) = x-y). $
Entonces se cumple que $y = c_1e^t$, la condicion inicial nos dice que $y = e^t$, por lo cual 
ahora debemos resolver $dot(x) = e^t + x +1$, procedamos por factor integrante: 
$ dot(x) = e^t + x +1 &=> dot(x) -x =e^t+1  => e^(-t)dot(x) - e^(-t)x = e^(-t)(e^t+1) \ 
                      &=> d/(d t) (e^(-t)x) = 1+e^(-t) \ 
                      &=> integral d/(d t) (e^(-t)x) d t = integral 1+e^(-t) d t \
                      &=> e^(-t)x = t-e^(-t) + C_2 \ 
                      &=> x = t e^t - 1 + C_2e^t. $
Por la condición inicial tenemos que $C_2 = s+1$, así que $x(t,s) = t e^t - 1 + (s+1)e^t.$

Por ultimo resolvamos 
$ dot(u) = x-y &= t e^t - 1 + (s+1)e^t- e^t \ 
         => integral d u &= integral (t e^t - 1 + (s+1)e^t- e^t) d t \ 
         => u &= e^t (t-1) -t +s e^t +C_3, $
dada la parametrización obtenemos que $C_3=2$ y por tanto
$ cases(x(t, s) = t e^t - 1 + (s+1)e^t, y(t, s) = e^t, u(t, s) = e^t (t-1) -t +s e^t + 2). $
De lo anterior tenemos que $t = ln(y)$ y $s = (x - ln(y)y +1)/y -1$, por lo que 
$ u(x, y) &= y(ln(y) -1) - ln(y) + ((x - ln(y)y +1)/y -1) y +2 \ 
          &= x - 2y - ln(y) + 3. $