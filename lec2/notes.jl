### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 8bd5849e-eefe-11eb-1dfd-2dd611a2a88d
md"
# Lecture 2
"

# ╔═╡ 691d613e-6f00-4d89-a4b7-e3377946f921
md"
## Matrix-Matrix Multiplication $AB$

The usual way to see the matrix multiplication is the dot product of the rows of $A$ and the columns of $B$.

$$c_{ij} = \sum_{k=1}^{n} a_{ik}b_{kj}$$

There's another way to achieve this. It is to look at this multiplication as the columns of $A$ times the rows of $B$. 

$$uv^{T} = \begin{bmatrix}1\\2\\3\end{bmatrix} \begin{bmatrix}4&&5&&6\end{bmatrix} = \begin{bmatrix}4&&5&&6\\8&&10&&12\\12&&15&&18\end{bmatrix}$$

Rank 1 matrix is a column times a row!

+ The column space of the matrix above is the line through $u$.
+ The row space of the matrix above is the line through $v$.
"

# ╔═╡ c70d2ae7-aa70-4dc0-8b6a-2119f19ac619
md"
## Multiplication

We can see a matrix multiplication $AB$ as the sum of rank one matrices!

$$AB = \begin{bmatrix}
| && \space{} && |\\
a_1 && \cdots{} && a_n\\
| && \space{} && |\\
\end{bmatrix}

\begin{bmatrix}
- && b_1^T && -\\
\space{}&&\vdots&&\space{}\\
- && b_n^T && -\\
\end{bmatrix}
= a_1b_1^T + a_2b_2^T + \dots + a_nb_n^T$$

$$\begin{bmatrix}1&&2\\3&&4\end{bmatrix} \begin{bmatrix}5&&6\\7&&8\end{bmatrix}$$

$$= \begin{bmatrix}1\\3\end{bmatrix} \begin{bmatrix}5&&6\end{bmatrix} + 
\begin{bmatrix}2\\4\end{bmatrix} \begin{bmatrix}7&&8\end{bmatrix}$$

$$= \begin{bmatrix}5&&6\\15&&18\end{bmatrix} + \begin{bmatrix}14&&16\\28&&32\end{bmatrix}$$
$$= \begin{bmatrix}19&&22\\43&&50\end{bmatrix}$$

Count the total number of multiplications. In both ways, it turns out to be $mnp$ for a multiplication between $m\times{}p$ and $p\times{}n$ matrices

Here's a short proof on why both ways yield the same answer:

The $i,j$ entry of $a_kb_k$ is $a_{ik}b_{kj}$. Add all those entries to form
$$c_{ij} = \sum_{k=1}^{n} a_{ik}b_{kj}$$. Try it yourself if you're in doubt!
"

# ╔═╡ 964de7b5-3ea2-4ea0-8622-0c43ad5a3617
md"
## Factorizations

But why are we looking at matrix multiplications as the sum of outer products? Outer products reveal more important parts.

There are five important factorizations in Linear Algebra.

+ $A = LU$ is the elimination. $L$ and $U$ are lower triangular and upper triangular respectively. Combinations of the rows of $A$ yields $U$.

+ $A = QR$ is the Gram-Schmidt process. It is the process of orthonormalizing the columns of $A$. $Q$ is orthonormal and $R$ is upper triangular.

+ $S = Q\Lambda{}Q^T$ is the diagonalization of symmetric matrices. The eigenvectors of a symmetric matrices are $n$ in number and can be chosen orthonormal.

+ $A = X\Lambda{}X^{-1}$ is the diagonalization of a square matrix. It shows that the eigenvectors are just scaled from multiplication.

+ $A = U\sum{}V^{T}$ is the singular value decomposition (SVD). The sigmas $\sigma_1$, $\sigma_2$, $\dots$ , $\sigma_n$ are the singular values. Orthonormal singular vectors are in $U$ and $V$.

*Note:*

Symmetric matrix: $S^{T} = S$. All $s_{ij} = s_{ji}$

Orthogonal matrix: $Q^T = Q^{-1}$. The columns are orthogonal to each other
"

# ╔═╡ a8be649e-deb2-4ac7-8fee-2664e1e1b42c
md"
## Sum of rank one

Let us consider the factorization $S = Q\Lambda{}Q^T$

$$SQ = S\begin{bmatrix}
| && && |\\
q_1 && \cdots{} && q_n\\
| && && |\\
\end{bmatrix}
= \begin{bmatrix}
| && && |\\
\lambda_1q_1 && \cdots{} && \lambda_nq_n\\
| && && |\\
\end{bmatrix}$$

$$= \begin{bmatrix}
| && && |\\
q_1 && \cdots{} && q_n\\
| && && |\\
\end{bmatrix}

\begin{bmatrix}
\lambda_1&& &&\\
 && \ddots && \\
 && && \lambda_n
\end{bmatrix}$$

Multiply by $Q^{-1} = Q^T$ to get $S = Q\Lambda{}Q^T$.

$$S = (Q\Lambda{})Q^T$$

$$= \begin{bmatrix}
| && && |\\
q_1 && \cdots{} && q_n\\
| && && |\\
\end{bmatrix}

\begin{bmatrix}
\lambda_1&& &&\\
 && \ddots && \\
 && && \lambda_n
\end{bmatrix}

\begin{bmatrix}
- && q_1^T && -\\
 && \vdots && \\
- && q_n^T && -
\end{bmatrix}$$

$$=
\begin{bmatrix}
| && && |\\
\lambda_1q_1 && \cdots{} && \lambda_nq_n\\
| && && |\\
\end{bmatrix}

\begin{bmatrix}
- && q_1^T && -\\
 && \vdots && \\
- && q_n^T && -
\end{bmatrix}$$

$$= (\lambda_1q_1)q_1^T + (\lambda_2q_2)q_2^T + \dots + (\lambda_nq_n)q_n^T$$

These individual terms are the rank one matrices (column times a row)

### Note:

**Spectral Theorem:**
Every symmetric matrix $S$ has $n$ real eigenvalues and $n$ orthonormal eigenvectors.
"

# ╔═╡ f756c8af-3a77-40d2-a483-8b9dd56acbc3
md"
## The Four Fundamental Subspaces

+ The *column space* is the span of the columns of $A$. It's denoted by $C(A)$.
+ The *row space* is the span of all the rows of $A$. It's denoted by $C(A^T)$, meaning that it's also the column space of $A^T$.
+ The *null space* is the set of all solutions to $Ax = 0$. It's denoted by $N(A)$.
+ The *left null space* is the set of all solutions to $A^Tx = 0$. It's denoted by $N(A^T)$.

Here's the [Big Picture](https://ocw.mit.edu/courses/mathematics/18-06sc-linear-algebra-fall-2011/ax-b-and-the-four-subspaces/Unit_1_WIDE.jpg)

+ Row space and null space are in $\mathbf{R^n}$.
+ Column space and left nullspace arer in $\mathbf{R^m}$.

+ Dimension of column space is the number of independent columns = $r$, because $r$ independent vectors can make an $r$ dimensional hyperplane.
+ Similarly, the dimension of row space is $r$, because number of independent rows = number of independent columns.

+ Since the number of free variables in $\mathbf{R^n}$ is $n-r$, it's the dimension of null space.
+ The dimension of left null space is $m-r$ similarly.

__Bonus:__

+ Row space and null space are orthogonal. The equation $Ax = 0$ screams this. The dot product of any vector in the null space with each row is zero, i.e. they are perpendicular. Any vector in the row space is combination of these rows. Hence, any vector in the row space is perpendicular to any vector in the row space.

+ Similarly, column space and the left null space are orthogonal.

+ Any vector in $\mathbf{R^n}$ is a combination of basis of row space and the basis of  null space. When $A$ multiplies this vector, the components from the null space move to $0$ and the ones from the row space move to the column space.

+ Thus, if $b$ is not in the column space, $Ax=b$ is unsolvable. $b$ has to be projected to the column space of $A$, then only we can solve for $x$.
"

# ╔═╡ Cell order:
# ╟─8bd5849e-eefe-11eb-1dfd-2dd611a2a88d
# ╟─691d613e-6f00-4d89-a4b7-e3377946f921
# ╟─c70d2ae7-aa70-4dc0-8b6a-2119f19ac619
# ╟─964de7b5-3ea2-4ea0-8622-0c43ad5a3617
# ╟─a8be649e-deb2-4ac7-8fee-2664e1e1b42c
# ╟─f756c8af-3a77-40d2-a483-8b9dd56acbc3
