### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ ad450310-c639-4085-9c4a-6e3fa9761419
md"# Diagonalizing a Matrix
If $A$ has $n$ independent eigenvectors, 

$$A X = X \Lambda$$

Here $X$ is the matrix whose columns are the eigenvectors of $A$.

Here's a short intuitive verbal proof: When we multiply $X$ by $A$, we scale each vectors in $X$ by the corresponding eigenvalue it is related to.

Thus, 

$$\Lambda = X^{-1} A X$$
$$A = X \Lambda X^{-1}$$

Note: $X^{-1}$ exists because $X$ is independent. Remember that the columns of $X$ are independent.

Now multiplication becomes really easy.

$$A^{2} = (X \Lambda X^{-1}) (X \Lambda X^{-1})$$

On simplification,

$$A^{2} = X \Lambda^{2} X^{-1}$$

Similarly,

$$A^{k} = X \Lambda^{k} X^{-1}$$

__Remark 1:__ Suppose the eigenvalues of $A$ are all different. Then it is automatic that the eigenvectors are independent. The eigenvector matrix $X$ will be invertible.
__Any matrix that as no repeated eigenvalues can be diagonalized.__ However, this doesn't imply that the matrices with repeated eigenvalues cannot be diagonalized. For example, some symmetric matrices may have repeated eigenvalues, but the eigenvectors are all independent and the matrix can be diagonalized!

__Remark 2:__ The eigenvectors in $X$ come up in the same order as the eigenvalues in $\Lambda$.

__Remark 3:__ Remember that there is no connection between invertibility and diagonalizability.

* Invertibility is concerned with eigenvalues ($\lambda = 0$ or $\lambda \neq 0$)
* Diagonalizability is concerned with eigenvectors. (too few or enough for $X$)

__Remark 4:__ If $(A - \lambda I)x = 0$ leads to $x = 0$, then $\lambda$ is not an eigenvalue.

---"

# ╔═╡ 17ad44b4-5fe2-432e-a54b-a480855827e6
md"## Markov Matrix

$$A = \begin{bmatrix}0.8 & 0.3\\0.2 & 0.7\end{bmatrix}$$

Do it yourself: Diagonalize the matrix $A$ and observe why the higher powers of $A$ approach a steady state.

Note: $A^{k}$ approaches to zero matrix if all the eigenvalues have magnitude smaller than 1. This is because higher powers of $A$ correspond to higher powers of $\Lambda$ from the diagonalization formula. Since $\Lambda$ is a diagonal matrix, its higher powers are the powers of its diagonal entries, which are the eigenvalues of $A$. This means, if the eigenvalues of $A$ have magnitude less than $1$, they decay to zero.

---
"

# ╔═╡ ca966f29-e984-42e1-8e0d-a7c2e696b00c
md"## Similar Matrices

Matrices having same eigenvalues are called similar matrices.

All matrices $A = BCB^{-1}$ are 'similar'. They all share the eigenvalues of $C$.

The matrix $C$ need not be diagonal. The only requirement is that $B$ must be invertible.

Proof: Suppose that $Cx = \lambda x$. Then $BCB^{-1}$ has the same eigenvalues $\lambda$ with the new eigenvector $Bx$:

Same $\lambda$

$$(BCB^{-1})(Bx) = BCx = B \lambda x = \lambda(Bx)$$

A fixed matrix $C$ produces a family of similar matrices $BCB^{-1}$, allowing all $B$.

#### $AB$ and $BA$ are similar

We want following relation to hold for $AB$ and $BA$ to be so

$$\implies{} M(AB)M^{-1} = BA$$ 

If $M = B$

$$\implies{} B(AB)B^{-1} = BA$$
$$\implies{} BA = BA \quad \textbf{QED}$$

That non-zero was there for a reason. $B$ must have an inverse!

---
"

# ╔═╡ c341bd6c-3c89-418e-84e1-2b676442ac51
md"
## Fibonacci Numbers

They are described by following difference equation

$$F_{k+2} = F_{k+1} + F_{k}$$

Find $F_{100}$

__Solution:__

$$u_k = \begin{bmatrix}F_{k+1}\\F_{k}\end{bmatrix}$$

The update rule is then:

$$u_{k+1} = \begin{bmatrix}1 & 1\\1 & 0\end{bmatrix} u_k$$

The initial state is then

$$u_0 = \begin{bmatrix}1\\0\end{bmatrix}$$

Solving for its eigenvalues and eigenvectors, we get

$$\lambda_1 = \frac{1 + \sqrt{5}}{2}$$
$$\lambda_1 = \frac{1 - \sqrt{5}}{2}$$

The respective eigenvectors are

$$x_1 = \begin{bmatrix}\lambda_1\\1\end{bmatrix}$$
$$x_2 = \begin{bmatrix}\lambda_2\\1\end{bmatrix}$$

Expressing $u_0$ as the combinations of the eigenvectors, we get

$$u_0 = \frac{1}{\lambda_1 - \lambda_2} x_1 - \frac{1}{\lambda_1 - \lambda_2} x_2$$

Then,

$$u_{100} = \frac{\lambda_1^{100}}{\lambda_1 - \lambda_2} x_1 - \frac{\lambda_2^{100}}{\lambda_1 - \lambda_2} x_2$$

Since $\lambda_2$ has magnitude less than 1, it decays. So the part involving higher powers of $\lambda_2$ decays to zero. And the other part survives. The $100^{th}$ Fibonacci number is thus the nearest integer to:

$$\frac{1}{\sqrt{5}} \left( \frac{1 + \sqrt{5}}{2} \right) ^{100}$$
---
"

# ╔═╡ 953c3dbf-2db0-4f5b-adfd-f2705326cffc
md"## Multiplication by Higher Powers of $A$

$$A^{k}u_0 = (X\Lambda X^{-1}) \ldots (X\Lambda X^{-1}) u_0 = X\Lambda^{k}X^{-1}u_0 = X\Lambda^{k} c.$$
Because,

Write $u_0$ as a combination of the eigenvectors, i.e. $c_1x_1 + \ldots + c_nx_n$ of the eigenvectors. Then $u_0 = Xc$, i.e. $c = X^{-1}u_0.$

This is how you can solve difference equation. It is exactly what we did in the previous section.

Let me show you how it's done using programming.

---
"

# ╔═╡ 8c0ba3ea-12ed-439e-b213-647b5f63c8a9
md"## Solving a Difference Equation

What is the solution to $F_{k+2} = F_{k+1} + F_{k}$ given that $u_0 = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$ ? Find its $4^{th}$ term. Notice, this is the difference equation of the Fibonacci series.

__Solution__:

Let,

$$u_k = \begin{bmatrix}F_{k+1} \\ F_{k}\end{bmatrix}$$

Then the rules are:

$$F_{k+2} = F_{k+1} + F_{k}$$
$$F_{k+1} = F_{k+1}$$

The difference equation in matrix form is:

$$u_{k+1} = \begin{bmatrix}1 & 1 \\ 1 & 0 \end{bmatrix} u_{k}$$

"

# ╔═╡ de5bbf4c-4578-427c-ad1c-34fdb0ec2c60
import LinearAlgebra as la

# ╔═╡ 7d15903d-ac64-4ba4-9234-23bbf50ed8d7
function multiply_using_diagonalization(A, k, u)
	lam, X = la.eigen(A)
	lam = lam .* (Matrix{Float64}(la.I, size(A)))
	X_inv = inv(X)
	c = X_inv * u
	return X * lam^(k-1) * c
end

# ╔═╡ 35c95438-c240-4ed5-a75d-2154b1a90b4f
A = [1 1;1 0]

# ╔═╡ b60c80cc-332f-4ba9-b4e0-e83d08558c75
u = [1 0]'

# ╔═╡ e136095a-e1aa-4b71-a2c4-6697870a0cac
u_99 = multiply_using_diagonalization(A, 10, u)

# ╔═╡ aae2cf20-10b0-4d1d-bdcc-7ea7d5c19062
md"$F_{10} = 55$.
You can give other difference equations a try!"

# ╔═╡ Cell order:
# ╟─ad450310-c639-4085-9c4a-6e3fa9761419
# ╟─17ad44b4-5fe2-432e-a54b-a480855827e6
# ╟─ca966f29-e984-42e1-8e0d-a7c2e696b00c
# ╟─c341bd6c-3c89-418e-84e1-2b676442ac51
# ╟─953c3dbf-2db0-4f5b-adfd-f2705326cffc
# ╟─8c0ba3ea-12ed-439e-b213-647b5f63c8a9
# ╠═de5bbf4c-4578-427c-ad1c-34fdb0ec2c60
# ╠═7d15903d-ac64-4ba4-9234-23bbf50ed8d7
# ╠═35c95438-c240-4ed5-a75d-2154b1a90b4f
# ╠═b60c80cc-332f-4ba9-b4e0-e83d08558c75
# ╠═e136095a-e1aa-4b71-a2c4-6697870a0cac
# ╟─aae2cf20-10b0-4d1d-bdcc-7ea7d5c19062
