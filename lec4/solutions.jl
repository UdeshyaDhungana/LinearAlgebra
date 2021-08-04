### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 3e19467d-cdab-40b2-8b86-148a341131b7
using PlutoUI

# ╔═╡ 9bc7de4c-858e-4994-adb7-220607710bf0
begin
	using LinearAlgebra
	
	a = [0 2;1 1]
	lam_a, x_a = eigen(a)
	with_terminal() do
		println(lam_a)
		println(x_a)	
	end
end

# ╔═╡ e82785b4-f505-11eb-2eff-7784de148344
md"
# Solutions to Lecture 4
"

# ╔═╡ 914d1c53-006a-4174-adc5-344713a5f425
md"
## 2
"

# ╔═╡ e5f19329-a6ec-461f-9425-6ccc67eb9730
begin
	ainv = inv(a)
	lam_ai, x_ai = eigen(a)
	with_terminal() do
		println(lam_ai)
		println(x_ai)
	end
end

# ╔═╡ 4fdfffe2-ddda-481f-b4e1-cf343c3c9373
md"
The matrix $A^{-1}$ has same eigenvectors as $A$. Eigenvalues of $A^{-1}$ are inverse of that of eigenvalues of $A$.

This is because $A^{-1}$ is the transformation that undoes the effect of $A$. $A$ scales its eigenvectors by $\lambda{}$, then, $A^{-1}$ must undo this, i.e. scale them by $\frac{1}{\lambda{}}$. Also, the same vectors which are eigenvectors of $A$ are scaled back by $A^{-1}$, so the eigenvectors of $A^{-1}$ are also the same.

---
"

# ╔═╡ d4b23741-66cb-4995-b2db-be5422b43c51
md"
## 11

We know that $det(A) = det(A^T)$. Here's why.

$$PA = LU$$

This means that matrix $P$ re-orders the rows of $A$ for $ref(A)$ operation, $PA$ changes to $LU$ upon factorizing. Also,

$$det(AB) = det(A) \cdot det(B)$$

$$det(P) \cdot det(A) = det(L) \cdot det(U)$$ 

This also yields

$$det(P^T) \cdot det(A^T) = det(L^T) \cdot det(U^T)$$

First, $det(L) = det(L^T)$ (both have 1 in their diagonal) and $det(U) = det(U^T)$ (those triangular matrices have the same diagonal). Third, $det(P) = det(P^T)$ because $P^TP = I$ and permutation matrices have determinant $1$ or $-1$. So both must be $1$ or both must be $-1$. That leaves us with

$$det(A) = det(A^T)$$

Now, coming to the answer.

$$det(A-\lambda{}I) = det(A-\lambda{}I)^T$$

Since, $I^T = I$,

$$det(A-\lambda{}I) = det(A^T-\lambda{}I)$$ 
"

# ╔═╡ b4010412-6e9a-4180-bcf3-07472e8b1265
begin
	# An example to show eigenvectors of b and b^T are different
	b = [1 2;3 4]
	bt = Matrix(transpose(b))
	
	_, b_eig = eigen(b)
	_1, bt_eig = eigen(bt)
	
	with_terminal() do
		print(b_eig)
		println()
		print(bt_eig)
	end
end

# ╔═╡ 3aacea3f-fb82-4d0b-8195-42ef1135600e
md"
---
"

# ╔═╡ 7d9a551e-4c40-4232-b5f7-2445f118a2c4
md"
## 15
"

# ╔═╡ 26d437fa-15be-4587-aa1d-e0e8b4c2391b
begin
	A = [1 2;0 3] * 1.0
	lam_A, X_A = eigen(A)
	Lambda_A = lam_A .* Matrix(1.0I, size(A))
	
	A3 = X_A * Lambda_A^(3) * inv(X_A)
	Ainv = X_A * (Lambda_A)^(-1) * inv(X_A)
	
	with_terminal() do
		println("Result from diagonalization:")
		println(A3)
		println("Actual result:")
		println(A^3)
		
		println()
		
		println("Result from diagonalization:")
		println(Ainv)
		println("Actual result:")
		println(A^-1)
	end
end

# ╔═╡ 9db02cc0-0345-4e04-a13b-773d888750ed
begin
	B = [1 1;3 3] * 1.0
	lam_B, X_B = eigen(B)
	Lambda_B = lam_B .* Matrix(1.0I, size(B))
	
	B3 = X_B * (Lambda_B)^(3) * inv(X_B)
	
	# Inverse does not exist
	# Binv = X_B * (Lambda_B)^(-1) * inv(X_B)
	
	with_terminal() do
		println("Result from diagonalization:")
		println(B3)
		println("Actual result:")
		println(B^3)
	end
	
	# This results in SingularException Error
	# println("Result from diagonalization:")
	# println(Binv)
	# println("Actual result:")
	# println(B^-1)
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.9"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "81690084b6198a2e1da36fcfda16eeca9f9f24e4"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.1"

[[Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[LinearAlgebra]]
deps = ["Libdl"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[Parsers]]
deps = ["Dates"]
git-tree-sha1 = "bfd7d8c7fd87f04543810d9cbd3995972236ba1b"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "1.1.2"

[[PlutoUI]]
deps = ["Base64", "Dates", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "Suppressor"]
git-tree-sha1 = "44e225d5837e2a2345e69a1d1e01ac2443ff9fcb"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.9"

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[Reexport]]
git-tree-sha1 = "5f6c21241f0f655da3952fd60aa18477cf96c220"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.1.0"

[[Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[Suppressor]]
git-tree-sha1 = "a819d77f31f83e5792a76081eee1ea6342ab8787"
uuid = "fd094767-a336-5f1f-9728-57cf17d0bbfb"
version = "0.2.0"

[[Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
"""

# ╔═╡ Cell order:
# ╟─e82785b4-f505-11eb-2eff-7784de148344
# ╟─914d1c53-006a-4174-adc5-344713a5f425
# ╠═3e19467d-cdab-40b2-8b86-148a341131b7
# ╠═9bc7de4c-858e-4994-adb7-220607710bf0
# ╠═e5f19329-a6ec-461f-9425-6ccc67eb9730
# ╟─4fdfffe2-ddda-481f-b4e1-cf343c3c9373
# ╟─d4b23741-66cb-4995-b2db-be5422b43c51
# ╠═b4010412-6e9a-4180-bcf3-07472e8b1265
# ╟─3aacea3f-fb82-4d0b-8195-42ef1135600e
# ╟─7d9a551e-4c40-4232-b5f7-2445f118a2c4
# ╠═26d437fa-15be-4587-aa1d-e0e8b4c2391b
# ╠═9db02cc0-0345-4e04-a13b-773d888750ed
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
