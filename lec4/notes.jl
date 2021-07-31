### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ b3f37302-e22f-4130-9480-b50a2c4bf8f7
md"
# Lecture 4
"

# ╔═╡ 6a2c7c16-cdb7-11eb-1b8e-41e376f8a76c
md"
## Introduction

The basic equation is

$$\textbf{Ax} = \lambda{}\textbf{x}$$

The eigenvalue $\lambda{}$ tells whether the vector $x$ is stretched ($\lambda{} > 1$), shrunken($|\lambda{}| < 1$), reversed($\lambda{} < 0$), or left unchanged ($\lambda{} = 1$). The value of $\lambda$ could be $0$. It means that $x$ is in the nullspace of $A$.

When $A$ is squared, the eigenvectors stay the same. The eigenvalues are squared.

*Each eigenvector is multiplied by its eigenvalue*, when we multiply by $A$

$$A^kx = \lambda{}^kx$$
$$A^{-1}x = \frac{1}{\lambda{}}x$$
---
"

# ╔═╡ e1568003-e04b-4b78-a3ff-250ba01bd728
md"## Some special eigenvalues

1. **Singular Matrices**: $\lambda = 0$ is an eigenvalue, because some non-zero $x$ is in the null space of $A-0I = A$.
2. **Symmetric Matrices**: Its eigenvectors are perpendicular.

$\lambda^2 v = P^2v = Pv = \lambda v$
Since, $v \neq 0$, either $\lambda = 1$, or $\lambda = 0$.

The equation can be stated verbally as, projecting twice is same as projecting once.

There is nothing special about $\lambda = 0$. Like every other number, zero might be an eigenvalue and it might not. If $A$ is singular, the eigenvectors for $\lambda = 0$ fill the nullspace: $Ax = 0x = 0$.

---
"

# ╔═╡ b7bc823f-872f-4890-8977-ce3604bcf3b2
md"## Steps for solving an eigenvalue problem:
1. Compute the determinant of $A - \lambda I$.
2. Find the roots of this polynomial
3. For each eigenvalue $\lambda$, solve $(A - \lambda I)x = 0$ to find an eigenvector $x$.

Note: When we say that $x$ is an eigenvector of $A$, any multiple of $x$ is as good as $x$.

---

"

# ╔═╡ 3f86303e-423d-4f05-8620-746419312553
md"## Properties of eigenvalues and eigenvectors
* Eigenvalues are changed when row 1 is added to row 2
* The product of n eigenvalues is the determinant
* The sum of n eigenvalues equals the sum of the n diagonal entries  
$\lambda_1 + \lambda_2 + ... + \lambda_n = trace = a_{11} + a_{22} + ... + a_{nn}$
* Usually, the eigenvector of $A + B$ are generally not $\lambda + \beta$. 
* Same is true for $AB$.
* If two matrices $A$ and $B$ share all $n$ eigenvectors, then only $eig(AB) = \lambda \beta$
* They share all $n$ eigenvectors if and only if $AB = BA$.
---
"

# ╔═╡ 330bfa4c-c37d-4fa7-9843-34d1b8ba835a
md"
## Solutions to linear difference and differential equations

+ Difference equations: Refer to the notebook `diagonalization.jl` in this directory.
+ Differential equations: Refer to the notebook `differential_eqn.jl` in this directory
"

# ╔═╡ 7f22ba49-4a4c-4cca-8402-dbfa4e9e2a11
md"
## Similar Matrices

Refer to the notebook `diagonalization.jl` in this directory.
"

# ╔═╡ f59ab0c2-d043-4b58-a7b3-668f86a30652
md"
## Symmetric Matrices

Refer to the notebook `symmetric_eigen.jl` in this directory.
"

# ╔═╡ Cell order:
# ╟─b3f37302-e22f-4130-9480-b50a2c4bf8f7
# ╟─6a2c7c16-cdb7-11eb-1b8e-41e376f8a76c
# ╟─e1568003-e04b-4b78-a3ff-250ba01bd728
# ╟─b7bc823f-872f-4890-8977-ce3604bcf3b2
# ╟─3f86303e-423d-4f05-8620-746419312553
# ╟─330bfa4c-c37d-4fa7-9843-34d1b8ba835a
# ╟─7f22ba49-4a4c-4cca-8402-dbfa4e9e2a11
# ╟─f59ab0c2-d043-4b58-a7b3-668f86a30652
