### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 3c383933-7f97-42d8-bb3b-6e16f71e519b
begin
	using LinearAlgebra
	a = 4 * [1 -1 2;-1 1 -2;2 -2 4]
end

# ╔═╡ dde15574-f548-11eb-0ab9-237c16a6db44
md"
# Solutions for Lecture 5
"

# ╔═╡ cd6d81a1-5ee5-4358-b893-d7fc4fc337d5
md"
## 3

For all three matrices, the uppper left $1\times{}1$ determinant is positive. So, we only need to check their determinants.

$$S = \left[
\begin{array}{cc}
1 & b \\
b & 9 \\
\end{array}
\right]$$

$$9 - b^2 > 0$$

$$|b| < 3$$



$$S = \left[
\begin{array}{cc}
2 & 4 \\
4 & c \\
\end{array}
\right]$$

$$2c-16 > 0$$

$$c > 8$$



$$S = \left[
\begin{array}{cc}
c & b \\
b & c \\
\end{array}
\right]$$

$$c^2 - b^2 > 0$$


From these, we can choose $b$ and $c$ to in the following range
$$b \in (-3,3)$$
$$c \in (8,\infty)$$

Let's choose, $b = 2$ and $c = 9$.

$$\left[
\begin{array}{cc}
1 & 2 \\
2 & 9 \\
\end{array}
\right]
=
\left[
\begin{array}{cc}
1 & 0 \\
2 & 1 \\
\end{array}
\right]
\left[
\begin{array}{cc}
1 & 0 \\
0 & 5 \\
\end{array}
\right]
\left[
\begin{array}{cc}
1 & 2 \\
0 & 1 \\
\end{array}
\right]$$

$$\left[
\begin{array}{cc}
2 & 4 \\
4 & 9 \\
\end{array}
\right]
=
\left[
\begin{array}{cc}
1 & 0 \\
2 & 1 \\
\end{array}
\right]
\left[
\begin{array}{cc}
2 & 0 \\
0 & 1 \\
\end{array}
\right]
\left[
\begin{array}{cc}
1 & 2 \\
0 & 1 \\
\end{array}
\right]$$

$$\left[
\begin{array}{cc}
1 & 2 \\
2 & 9 \\
\end{array}
\right]
=
\left[
\begin{array}{cc}
1 & 0 \\
\frac{2}{9} & 1 \\
\end{array}
\right]
\left[
\begin{array}{cc}
9 & 0 \\
0 & \frac{4}{9} \\
\end{array}
\right]
\left[
\begin{array}{cc}
1 & \frac{2}{9} \\
0 & 1 \\
\end{array}
\right]$$

These are the $LDL^T$ factorizations

---
"

# ╔═╡ 78e6ca3d-23a2-4e72-850d-5614e44b58c8
md"
## 14

Expanding 4(x_1 - x_2 + 2x_3)^2 we get

$$4(x_1^2 - x_1x_2 + 2x_1x_3 - x_2x_1 + x_2^2 - 2x_2x_3 + 2x_3x_1 - 2x_3x_2 + 4x_3^2)$$

The coefficient of $x_ix_j$ term is the entry on $(i,j)$

$$\left[
\begin{array}{ccc}
4 & -4 & 8 \\
-4 & 4 & -8 \\
8 & -8 & 16 \\
\end{array}
\right]$$

"

# ╔═╡ 0c18db8f-1bde-42c2-a919-a8915c2a0891
[1 0 0;1 1 0;-2 0 1] * a

# ╔═╡ c1011299-b755-487e-9b7f-e379b8aab522
md"
The pivots are $4, 0, 0$.
"

# ╔═╡ a474d949-35cd-4a79-937d-4ae0de8e2ff2
rank(a)

# ╔═╡ 85edc173-f8bd-4f1b-bf98-52fee585c0e0
begin
	eigenvals, _ = eigen(a)
	eigenvals
end

# ╔═╡ 9d70f50c-bdf5-4c63-8bdf-d4e9285cb8ef
md"
It's $0, 0, 24$
"

# ╔═╡ f6021cce-c3eb-4a1f-aa53-028a4cd5f20e
det(a)

# ╔═╡ 0d74f88f-edbe-4791-a188-e54a3014cd26
md"
---
"

# ╔═╡ 5b650d28-41ae-457f-9410-106d0b7818d4
md"
## 15
"

# ╔═╡ 7d246eb9-fc3d-4049-93b0-6cb808472b6c
s = [2 2 0; 2 5 3; 0 3 8]

# ╔═╡ 504254d9-0c02-46a7-9070-ce218d512fd1
det(s[1,1])

# ╔═╡ d9622770-4b66-4947-bc50-e627c4dcebe9
det(s[1:2,1:2])

# ╔═╡ 16f19f54-11ec-4dfe-a7ad-dee658272076
det(s)

# ╔═╡ e380c88c-64b9-4e8b-96d6-2d8b8c4a4755
lu(s)

# ╔═╡ 5250fa8d-d8ba-4bd8-8ace-c9f17aed036b
md"
The pivots are $2, 3, 5$ which are the ratio of determinants, i.e. $2, \frac{6}{2}, \frac{30}{6}$

---
"

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[LinearAlgebra]]
deps = ["Libdl"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ Cell order:
# ╟─dde15574-f548-11eb-0ab9-237c16a6db44
# ╟─cd6d81a1-5ee5-4358-b893-d7fc4fc337d5
# ╟─78e6ca3d-23a2-4e72-850d-5614e44b58c8
# ╠═3c383933-7f97-42d8-bb3b-6e16f71e519b
# ╠═0c18db8f-1bde-42c2-a919-a8915c2a0891
# ╟─c1011299-b755-487e-9b7f-e379b8aab522
# ╠═a474d949-35cd-4a79-937d-4ae0de8e2ff2
# ╠═85edc173-f8bd-4f1b-bf98-52fee585c0e0
# ╟─9d70f50c-bdf5-4c63-8bdf-d4e9285cb8ef
# ╠═f6021cce-c3eb-4a1f-aa53-028a4cd5f20e
# ╟─0d74f88f-edbe-4791-a188-e54a3014cd26
# ╠═5b650d28-41ae-457f-9410-106d0b7818d4
# ╠═7d246eb9-fc3d-4049-93b0-6cb808472b6c
# ╠═504254d9-0c02-46a7-9070-ce218d512fd1
# ╠═d9622770-4b66-4947-bc50-e627c4dcebe9
# ╠═16f19f54-11ec-4dfe-a7ad-dee658272076
# ╠═e380c88c-64b9-4e8b-96d6-2d8b8c4a4755
# ╟─5250fa8d-d8ba-4bd8-8ace-c9f17aed036b
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
