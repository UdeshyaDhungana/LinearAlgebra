### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ fd80c3c4-928c-4c1b-b50c-0e1ad2fdd5d7
using LinearAlgebra

# ╔═╡ 88bdf5b6-fce1-11eb-07ed-2ff2e1216429
md"
# Solutions to Lecture 7
"

# ╔═╡ b382582b-305d-45a9-996c-823151df25f5
md"
## 2

The closest rank 1 approximation to given matrices are
"

# ╔═╡ 8a1ec823-a062-4454-8eae-7032be3ab940
r = 1 # rank 1 approximation

# ╔═╡ 2ef78822-ff0d-4fbb-a4d1-fbb8fb722f21
function approximator(a, r)
	u, sig, vt = svd(a)
	return u[:,1:r] * diagm(sig)[1:r,1:r] * vt[1:r, :]
end

# ╔═╡ 3d49553d-a8c4-4f3e-a53e-ecaa65f64ac6
approximator([3 0 0; 0 2 0; 0 0 1], r)

# ╔═╡ c2200289-6515-48bb-8f71-420dc4f0c421
approximator([0 3;2 0], r)

# ╔═╡ 615a608f-6e3c-4b47-a00b-411560f95958
approximator([2 1;1 2], r)

# ╔═╡ 36be79ec-4f91-4a69-825b-a4ec46b047fa
md"
---
"

# ╔═╡ b16b4e28-f8b8-4af6-bcea-b4d17a520155
md"
## 10

The singular values of $A^{-1}$ are $\frac{1}{\sigma_1}$ and $\frac{1}{\sigma_2}$

So, $l^2$ norm of $A^{-1}$ is $\frac{1}{\sigma_2}$, the one with larger value.

Also, the square of frobenius norm of $A^{-1}$ is $(\frac{1}{\sigma_1})^2 + (\frac{1}{\sigma_2})^2$

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
# ╟─88bdf5b6-fce1-11eb-07ed-2ff2e1216429
# ╟─b382582b-305d-45a9-996c-823151df25f5
# ╠═fd80c3c4-928c-4c1b-b50c-0e1ad2fdd5d7
# ╠═8a1ec823-a062-4454-8eae-7032be3ab940
# ╠═2ef78822-ff0d-4fbb-a4d1-fbb8fb722f21
# ╠═3d49553d-a8c4-4f3e-a53e-ecaa65f64ac6
# ╠═c2200289-6515-48bb-8f71-420dc4f0c421
# ╠═615a608f-6e3c-4b47-a00b-411560f95958
# ╟─36be79ec-4f91-4a69-825b-a4ec46b047fa
# ╟─b16b4e28-f8b8-4af6-bcea-b4d17a520155
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
