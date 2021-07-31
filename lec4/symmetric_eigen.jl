### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 583f2d72-e9e7-11eb-24ed-dd3f45541087
md"
# Symmetric Matrices

Let us talk about a symmetric matrix $S$. Following relation holds:

$$S^{T} = S$$

Let us diagonalize the matrix

$$S = X\Lambda{}X^{-1}$$

From above two equations we can write

$$(X^{-1})^{T}\Lambda^{T}X{^T} = X\Lambda{}X^{-1}$$
$$(X^{-1})^{T}\Lambda{}X^{T} = X\Lambda{}X^{-1}$$

The matrix to the right of $\Lambda{}$ must be same on both sides of the equations. So,

$$X^{T} = X^{-1}$$
$$X^{T}X = I$$

The matrix $X$ is orthogonal. Eigenvectors corresponding to **distinct eigenvalues** are orthogonal! Eigenvectors **can be chosen** perpendicular.

$$X\Lambda{}X^{T} = X\Lambda{}X^{-1}$$

This shows that a symmetric matrix $S$ can be diagonalized as

$$S = Q\Lambda{}Q^{T}$$

where, $Q$ is the eigenvector matrix of $S$.

---
"

# ╔═╡ 5b20d53d-81a3-4264-9cf4-d04664e182f3
md"

## Spectral Theorem

*Every symmetric matrix has the factorization $S = Q\Lambda{}Q^T$ with real eigenvalues $\Lambda{}$ and orthonormal eigenvectors in the columns of $Q$.*

This is also called the *Principal Axis Theorem* in Physics. We can prove this in three steps:

- By proving that all $\lambda{}$'s are real
- By proving orthogonality when eigenvalues are not repeated
- By proving orthogonality when eigenvalues are repeated

---
"

# ╔═╡ ca4f784a-ea23-4ddd-86ea-d83f55856111
md"
## 1. Real Eigenvalues

**Proof:**

Suppose that $S\textbf{x} = \lambda{}\textbf{x}$, $\lambda$ might be a complex number. The complex conjugate of $\lambda{}$ is $\overline{\lambda{}}$. Similarly, the components of $x$ might be complex. Then, $\overline{\textbf{x}}$ is the complex conjugate of $\textbf{x}$.


The equation $S\textbf{x} = \lambda{}\textbf{x}$ leads to $S\overline{\textbf{x}} = \lambda{}\overline{\textbf{x}}$

Transpose the above equation and you get

$$\overline{\textbf{x}}^{T}S = \overline{\textbf{x}}^{T}\overline{\lambda{}}$$

Now take the dot product of first equation with $\overline{\textbf{x}}^{T}$ and the last equation with $\textbf{x}$.

$$\overline{\textbf{x}}^{T}S\textbf{x} = \overline{\textbf{x}}^{T}\lambda{}\textbf{x}$$

and also

$$\overline{\textbf{x}}^{T}S\textbf{x} = \overline{\textbf{x}}^{T}\overline{\lambda{}}\textbf{x}$$

The left hand side of the equation is same. So should be the right side! So,

$$\lambda=\overline{\lambda{}}$$

So, $\lambda$ must be a real number.

---
"

# ╔═╡ 7a2b7fec-aa8c-4625-96f5-83f0cad21cd4
md"
## 2. When no eigenvalues are repeated

Then the eigenvectors are linearly independent. 

*Proof:*

Suppose $S\textbf{x} = \lambda_1{}\textbf{x}$ and $S\textbf{y} = \lambda_2{}\textbf{y}$. We are assuming here that $\lambda_1 \neq \lambda_2$. Take the dot product of first equation with $\textbf{y}$ and the second with $\textbf{x}$.

Use $S^{T} = S$. 

$$(\lambda_1{}\textbf{x})^{T}\textbf{y} = (S\textbf{x})^{T}\textbf{y} = \textbf{x}^{T}S^{T}\textbf{y} = \textbf{x}^{T}S\textbf{y} = \textbf{x}^{T}\lambda_2{}\textbf{y}$$

The left side is $\textbf{x}^{T}\lambda_1{}\textbf{y}$, the right side is $\textbf{x}^{T}\lambda_2{}\textbf{y}$. Since $\lambda_1{} \neq \lambda_2{}$, this proves that $\textbf{x}^{T}\textbf{y} = 0$.

---
"

# ╔═╡ e0638c67-e408-4869-8033-17f480da9792
md"
## 3. What if the eigenvalues are repeated?

When a matrix has $n$ distinct eigenvalues, it's guaranteed that it has $n$ independent eigenvectors. But if there are not $n$ distinct eigenvalues, there might or might not be $n$ independent eigenvectors. But for symmetric matrices, even in this case, there are $n$ independent eigenvectors.

The proof is a bit long and involves Schur's Theorem. I'm just gonna leave it here and take for granted that the spectral theorem is true.

---
"

# ╔═╡ Cell order:
# ╟─583f2d72-e9e7-11eb-24ed-dd3f45541087
# ╟─5b20d53d-81a3-4264-9cf4-d04664e182f3
# ╟─ca4f784a-ea23-4ddd-86ea-d83f55856111
# ╟─7a2b7fec-aa8c-4625-96f5-83f0cad21cd4
# ╟─e0638c67-e408-4869-8033-17f480da9792
