### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 93a1fe60-f8df-11eb-2411-5711f98999c7
md"
# Lecture 7
"

# ╔═╡ 507ed230-4dd7-42ea-b2a3-4c5a62874c05
md"
## Introduction

The first $k$ pieces of SVD is the best approximation to $A$ of rank $k$.

If $B$ has rank $k$, then $\left||A-B\right||\ \geq \left||A-A_k\right||$

This is called __Eckart-Young Theorem__
"

# ╔═╡ 95e84bc0-4fa1-473b-854f-a5da7542496f
md"
## Norm

The $l^2$ norm of a matrix is its biggest singular value

$$\left||A\right|| = \sigma_1$$

Some norm of vectors are:

$$l^2\ norm: \quad \left||v\right||_2 = \sqrt{v_1^2 + \dots | v_n^2}$$
$$l^1\ norm: \quad \left||v\right||_1 = \left|v_1\right| + \dots + \left|v_n\right|$$
$$l^{\infty}\ norm: \quad \left||v\right||_{\infty} = max(\left|v\right|_i)$$

__Some properties of norm:__

$$\left||cv\right|| = \left|c\right| \left||v\right||$$
$$\left||v+w\right|| \geq \left||w\right|| + \left||w\right||$$

The second one might be familiar to you.

Some norms of matrices:

$$\left||A\right||_2 = \sigma_1$$
$$\left||A\right||_F = \sqrt{sum(square\ of\ all\ entries)}$$

The second one is called Frobenius norm

$$\left||A\right||_{Nuclear} = \sigma_1 + \sigma_2 + \dots + \sigma_r$$

The last one had to do something with a prize worth of 1 Million in a competition organized by Netflix (Something with predicting movie ratings).
It's also used in predicting MRI scan.

If I multiply $A$ by orthogonal matrix, norm does not change.

$$\left||Qv\right|| = \left||v\right||_2$$

"

# ╔═╡ 0ac67f5e-5b8f-49a3-b95d-3928dde2881f
md"
## Principal Component Analysis

### Comparison with Least Squares

In least squares we minimize the vertical error, i.e. $\left||b - Ax\right||^2$. The result of this equation is

$$X = (A^TA)^{-1}A^Tb$$

### Algorithm

It involves minimizing the perpendicular distance from best fit line to actual values. 

__1. Make mean zero by subtracting average value of each feature__

$$A_0 = \begin{bmatrix}- & heights & -\\- & ages & -\end{bmatrix}$$

$$A = A_0 - \begin{bmatrix}a_h & \dots & a_h\\a_a & \dots & a_a\end{bmatrix}$$

__2. The solution is of the form__

$$age = c \times height$$
$$c = \sigma_1$$
"

# ╔═╡ Cell order:
# ╟─93a1fe60-f8df-11eb-2411-5711f98999c7
# ╟─507ed230-4dd7-42ea-b2a3-4c5a62874c05
# ╟─95e84bc0-4fa1-473b-854f-a5da7542496f
# ╟─0ac67f5e-5b8f-49a3-b95d-3928dde2881f
