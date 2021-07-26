### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 17b7c8d8-ee1d-11eb-15d6-772b4e4dc9d4
md"
# Solutions for Lecture 1
"

# ╔═╡ 1280eb21-34e6-4330-b55a-2e26ca308385
md"
## 1

The vectors can be chosen

$$\begin{bmatrix}4\\3\\2\\1\end{bmatrix}, \begin{bmatrix}1\\2\\3\\4\end{bmatrix}, and \begin{bmatrix}3\\1\\-1\\-3\end{bmatrix}$$

### In the form $A\textbf{x} = \textbf{b}$

$$\begin{bmatrix}4&&1&&3\\3&&2&&1\\2&&3&&-1\\1&&4&&-3\end{bmatrix}\begin{bmatrix}1\\-1\\-1\end{bmatrix} = \begin{bmatrix}0\\0\\0\\0\end{bmatrix}$$

The shapes of $A$ is $4\times{}3$ and that of $\textbf{0}$ is $4\times{}1$
"

# ╔═╡ 5169c19a-e752-4d24-969a-b43b8ef91307
begin
	A = [4 1 3;3 2 1;2 3 -1;1 4 -3]
	x = [1 -1 -1]'
	A * x
end

# ╔═╡ 262d65d9-9524-451b-b459-64e42bf6ca97
md"
---
"

# ╔═╡ e0cddda7-db5e-4d63-afcd-d3acd0fb5dac
md"
## 4

The vectors are

$$x = \begin{bmatrix}1\\0\\-1\end{bmatrix}$$
$$y = \begin{bmatrix}1\\-1\\0\end{bmatrix}$$


Writing $Ax=0$ as combinations of the columns of $A$.
$$1\begin{bmatrix}1\\1\\1\end{bmatrix} + 0\begin{bmatrix}1\\1\\1\end{bmatrix} + (-1)\begin{bmatrix}1\\1\\1\end{bmatrix}$$

Asking for a third vector $z$ would be meaningless. It would be some linear combination of $x$ and $y$.


"

# ╔═╡ f4186a73-a002-4c24-a518-903e75652678
md"
---
"

# ╔═╡ eb1b15ef-4947-4f68-9169-90f961c77699
md"
## 9

For a $3\times{}3$ matrix $A$ whose column space is all of $\mathbf{R^3}$, $m = 3$,
$n \geq 3$, and $r = 3$.

$n \geq 3$ because the minimum number of vectors in $\mathbf{R^3}$ that can span all of $\mathbf{R^3}$ is $3$. The number of columns may be more than $3$, but the rank wouldn't increase. All the columns after $3$ independent columns would still be linear combinations of those $3$ independent columns.
"

# ╔═╡ 3ff76a37-6f7f-46b3-b4e3-fb44e15b6e44
md"
---
"

# ╔═╡ 0154f634-acf8-4150-89fc-998863729a66
md"
## 18

The factors would be

$$C = \begin{bmatrix}C_A\\C_A\end{bmatrix}$$
$$R = \begin{bmatrix}0&&R_A\end{bmatrix}$$

"

# ╔═╡ Cell order:
# ╟─17b7c8d8-ee1d-11eb-15d6-772b4e4dc9d4
# ╟─1280eb21-34e6-4330-b55a-2e26ca308385
# ╠═5169c19a-e752-4d24-969a-b43b8ef91307
# ╟─262d65d9-9524-451b-b459-64e42bf6ca97
# ╟─e0cddda7-db5e-4d63-afcd-d3acd0fb5dac
# ╟─f4186a73-a002-4c24-a518-903e75652678
# ╟─eb1b15ef-4947-4f68-9169-90f961c77699
# ╟─3ff76a37-6f7f-46b3-b4e3-fb44e15b6e44
# ╟─0154f634-acf8-4150-89fc-998863729a66
