### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 7b5aec93-2af9-48ae-bba2-f854d2d9e7fe
using LinearAlgebra

# ╔═╡ 5e511068-f720-11eb-14e8-d3591a9e3bac
md"
# Solutions
"

# ╔═╡ 0cfdad1b-6db1-442d-b252-371262704071
md"
## 1

$$x^Tx$$

Writing x as linear combination of the orthonormal eigenvectors
$$=\left(
\begin{bmatrix}
 & & \\
v_1 & \dots & v_n\\
 & & \\
\end{bmatrix}
\begin{bmatrix}
c_1\\
\vdots\\
c_n
\end{bmatrix}\right)^T
\begin{bmatrix}
 & & \\
v_1 & \dots & v_n\\
 & & \\
\end{bmatrix}
\begin{bmatrix}
c_1\\
\vdots\\
c_n
\end{bmatrix}$$


$$=\begin{bmatrix}
 & & \\
c_1 & \dots & c_n\\
 & & \\
\end{bmatrix}
\left(\begin{bmatrix}
v_1\\
\vdots\\
v_n\\
\end{bmatrix}
\begin{bmatrix}
 & & \\
v_1 & \dots & v_n\\
 & & \\
\end{bmatrix}
\right)
\begin{bmatrix}
c_1\\
\vdots\\
c_n\\
\end{bmatrix}$$

$$c_1^2 + c_2^2 + \dots + c_n^2$$

---

$$x^TSx$$

Writing x as linear combination of the orthonormal eigenvectors
$$=\left(
\begin{bmatrix}
 & & \\
v_1 & \dots & v_n\\
 & & \\
\end{bmatrix}
\begin{bmatrix}
c_1\\
\vdots\\
c_n
\end{bmatrix}\right)^T
\begin{bmatrix}
 & & \\
 & S & \\
 & & \\
\end{bmatrix}
\begin{bmatrix}
 & & \\
v_1 & \dots & v_n\\
 & & \\
\end{bmatrix}
\begin{bmatrix}
c_1\\
\vdots\\
c_n
\end{bmatrix}$$

$$=\begin{bmatrix}
 & & \\
c_1 & \dots & c_n\\
 & & \\
\end{bmatrix}
\begin{bmatrix}
v_1\\
\vdots\\
v_n\\
\end{bmatrix}
\left(
\begin{bmatrix}
 & & \\
 & S & \\
 & & \\
\end{bmatrix}
\begin{bmatrix}
 & & \\
v_1 & \dots & v_n\\
 & & \\
\end{bmatrix}
\right)
\begin{bmatrix}
c_1\\
\vdots\\
c_n\\
\end{bmatrix}$$

$$=\begin{bmatrix}
 & & \\
c_1 & \dots & c_n\\
 & & \\
\end{bmatrix}
\left(\begin{bmatrix}
v_1\\
\vdots\\
v_n\\
\end{bmatrix}
\begin{bmatrix}
 & & \\
\lambda_1v_1 & \dots & \lambda_nv_n\\
 & & \\
\end{bmatrix}
\right)
\begin{bmatrix}
c_1\\
\vdots\\
c_n\\
\end{bmatrix}$$

$$=\begin{bmatrix}
 & & \\
c_1 & \dots & c_n\\
 & & \\
\end{bmatrix}
\begin{bmatrix}
\lambda_1 & & \\
 & \ddots & \\
 & & \\
\end{bmatrix}
\begin{bmatrix}
c_1\\
\vdots\\
c_n\\
\end{bmatrix}$$

$$=\begin{bmatrix}
 & & \\
\lambda_1c_1 & \dots & \lambda_nc_n\\
 & & \\
\end{bmatrix}
\begin{bmatrix}
c_1\\
\vdots\\
c_n\\
\end{bmatrix}$$

$$\lambda_1c_1^2 + \lambda_2c_2^2 + \dots + \lambda_nc_n^2$$

---
"

# ╔═╡ 5e3ac370-bca8-41a5-a35b-00ab21ceae5b
md"
## 6

I don't have the textbook. So, I'm gonna have to use Julia for computing $U$, $\Sigma$ and $V^T$ for $\begin{bmatrix}3 & 4\\0 & 5\end{bmatrix}$
"

# ╔═╡ 8b1253ff-ee8b-4d7a-94c5-f058b8a04b15
begin
	a = [3 4;0 5]
	svd(a)
end

# ╔═╡ 3243225c-a2d3-40d8-abb2-05c8be1e3986
md"
__Note:__ $U$ and $V$ for $A$ are respectively $V$ and $U$ for $A^T$. This is because $A^TA$ for $A$ is $AA^T$ for $A^T$ and $AA^T$ for $A$ is $A^TA$. The sigmas are same though!
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
# ╟─5e511068-f720-11eb-14e8-d3591a9e3bac
# ╟─0cfdad1b-6db1-442d-b252-371262704071
# ╟─5e3ac370-bca8-41a5-a35b-00ab21ceae5b
# ╟─7b5aec93-2af9-48ae-bba2-f854d2d9e7fe
# ╠═8b1253ff-ee8b-4d7a-94c5-f058b8a04b15
# ╟─3243225c-a2d3-40d8-abb2-05c8be1e3986
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
