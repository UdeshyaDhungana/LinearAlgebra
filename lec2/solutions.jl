### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 3fa2be38-efb3-11eb-3cf0-93de0c3354e0
md"
# Solutions for Lecture 2
"

# ╔═╡ fc834092-0bbc-4167-9952-ef405437addc
md"
## 2

+ Yes, $a$ and $b$ can be multiplied. $a$ is of shape $m\times{}1$ and $b$ is of shape $1\times{}p$. 

+ The shape of $ab^T$ is $m \times p$.

+ The number $(ab^T)_{ij}$ is formed by multiplying $i^{th}$ entry from $a$ and the $j^{th}$ entry from $b$. The number is $a_i\times{}b_j$.

+ The matrix $aa^T$ is of shape $m\times{}m$. It is of rank $1$. It's $(i,j)^{th}$ entry is $a_i\times{}a_j$.
"

# ╔═╡ 8b16ae53-6120-4916-854c-86d8eb775874
md"
## 6

The rank one matrices which make up the product $AB$ are:

+ $\begin{bmatrix}| & 0 & 0\\a_1 & 0 & 0\\| & 0 & 0\\\end{bmatrix}$
+ $\begin{bmatrix}0 & | & 0\\0 & a_2 & 0\\0 & | & 0\\\end{bmatrix}$
+ $\begin{bmatrix}0 & 0 & |\\0 & 0 & a_3\\0 & 0 & |\\\end{bmatrix}$
"

# ╔═╡ 8df48289-73f9-4bc4-b642-eefbf87175fd
md"
### Example
"

# ╔═╡ 985872b9-e498-4ef8-bd05-b93db1ae12ec
begin
	import LinearAlgebra as la
	a = [1 2 3;4 5 6;7 8 10]
	a1 = a[:,1]
	a2 = a[:,2]
	a3 = a[:,3]
	
	i = Matrix(la.I, 3, 3) * 1.0
	b1 = i[1,:]'
	b2 = i[2,:]'
	b3 = i[3,:]'

	a == a1 * b1 + a2 * b2 + a3 * b3
end

# ╔═╡ Cell order:
# ╟─3fa2be38-efb3-11eb-3cf0-93de0c3354e0
# ╟─fc834092-0bbc-4167-9952-ef405437addc
# ╟─8b16ae53-6120-4916-854c-86d8eb775874
# ╟─8df48289-73f9-4bc4-b642-eefbf87175fd
# ╠═985872b9-e498-4ef8-bd05-b93db1ae12ec
