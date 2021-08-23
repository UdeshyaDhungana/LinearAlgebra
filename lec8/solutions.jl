### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 57696ae2-0432-11ec-195f-6356291773e6
md"
# Lecture 8 Solutions
"

# ╔═╡ 68aa67ed-030a-452c-bf4a-8173afacf752
md"
## 1

$$||v||_2 = |v_1|^2 + \dots + |v_n|^2$$
$$||v||_1 = |v_1| + \dots + |v_n|$$
$$||v||_{\infty} = max(|v_i|)$$

Let, $||v||_{\infty} = |v_k|$, i.e, $|v_i| \leq |v_k|$ for all $i$.

Multiply both sides by $|v_i|$, we get

$$|v_i| \dot |v_i| \leq |v_k| \dot |v_i|$$
$$|v_i|^2 \leq |v_k| \dot |v_i|$$

This holds for all $i$. Summing up for all $i$.

$$\sum_{i}^{} |v_i|^2 \leq \sum_{i}^{} |v_i||v_k|$$

$$||v||_2^2 \leq ||v||_1 \dot ||v||_{\infty}$$

---
"

# ╔═╡ b322674b-b261-4676-a990-4a0415ec3646
md"
## 7

__To show:__ $||AB||_F^2 \leq ||A||_F^2 ||B||_F^2$

$$AB_{ij} = (row\ i\ of\ A)^T (column\ j\ of\ B)$$

The $ij^{th}$ entry of $AB$ is the dot product between $i^{th}$ row of $A$ and $j^{th}$ column of $B$.

Using Cauchy-Schwarz inequality

$$|AB_{ij}| \leq ||row\ i\ of\ A|| \quad ||column\ j\ of\ B||$$

Squaring both sides

$$|AB_{ij}|^2 \leq ||row\ i\ of\ A||^2 \quad ||column\ j\ of\ B||^2$$

Adding up for all $i$ and $j$

$$\sum_{i}^{}\sum_{j}^{}|AB_{ij}|^2 \quad \leq \quad \sum_{i}^{}\sum_{j}^{} ||row\ i\ of\ A||^2 \quad ||column\ j\ of\ B||^2$$

$$\sum_{i}^{}\sum_{j}^{}|AB_{ij}|^2 \quad \leq \quad \sum_{i}^{} ||row\ i\ of\ A||^2 \quad \sum_{j}^{}||column\ j\ of\ B||^2$$

$$||AB||_F^2 \leq ||A||_F^2 \quad ||B||_F^2$$

Cha cha, real smooth!

---
"

# ╔═╡ Cell order:
# ╟─57696ae2-0432-11ec-195f-6356291773e6
# ╟─68aa67ed-030a-452c-bf4a-8173afacf752
# ╟─b322674b-b261-4676-a990-4a0415ec3646
