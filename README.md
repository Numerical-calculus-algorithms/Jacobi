# Metodo di Jacobi

Il metodo di Jacobi è un algoritmo iterativo per la risoluzione di sistemi lineari del tipo $Ax = b$ dove $A \in \R^{(n \times n)}$ e $b \in \R^n$.

## Idea generale 

La matrice $A$ viene riscritta come somma di altre due matrici $D$ diagonale ricavata da $A$ e $R$ ricavata sempre da $A$ ma con diagonale nulla, si avrà quindi:

$$
A =\begin{bmatrix}
a_{1,1} & a_{1,2} & \dots  & a_{1,n} \\
a_{2,1} & a_{2,2} & \dots  & a_{2, n} \\
\vdots  & \vdots  & \ddots & \vdots   \\
a_{n,1} & a_{n,2} & \dots  & a_{n, n} 
\end{bmatrix}
= 
\begin{bmatrix}
a_{1,1} &   0     & \dots  & 0 \\
0       & a_{2,2} & \dots  & 0 \\
\vdots  & \vdots  & \ddots & \vdots   \\
0       & 0       & \dots  & a_{n, n} 
\end{bmatrix}
+
\begin{bmatrix}
0       & a_{1,2} & \dots  & a_{1,n} \\
a_{2,1} & 0       & \dots  & a_{2, n} \\
\vdots  & \vdots  & \ddots & \vdots   \\
a_{n,1} & a_{n,2} & \dots  & 0
\end{bmatrix}
$$

## Iterata generale

Dato in input un vettore $x^{(0)} \in \R^n$

$$
Dx^{(k+1)} = b - Rx^{(k)}
$$