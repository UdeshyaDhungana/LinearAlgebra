### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ df041056-edfd-11eb-29c4-8d17def22b2d
md"


# Notes


## $A\textbf{x} = \textbf{b}$

How do you perform the following multiplication?

$$\begin{bmatrix}1&&0&&1\\2&&1&&3\\3&&7&&10\end{bmatrix}\begin{bmatrix}4\\2\\1\end{bmatrix}$$

Two ways! As far as I can remember

1.  Dot product of rows of the matrix and the vector
2.  Linear Combination of columns of $A$

The first one is really easy.

Let me explain the second one. Let us denote the matrix by $A$.

$$\begin{bmatrix}1&&0&&1\\2&&1&&3\\3&&7&&10\end{bmatrix}\begin{bmatrix}4\\2\\1\end{bmatrix} = 4\begin{bmatrix}1\\2\\3\end{bmatrix} + 2\begin{bmatrix}0\\1\\7\end{bmatrix} + 1\begin{bmatrix}1\\3\\10\end{bmatrix}$$

This shows you a bigger picture! Multiplying a vector by a matrix is taking the
combination of columns of the columns of $A$, with the 'scalars' being the entries of the vector.


## Column Space

If we allow the multiplication of any vector $x = \begin{bmatrix}x_1\\x_2\\x_3\end{bmatrix}$ in the previous section, what we get is all the possible combinations of the columns of the matrix.
This range, where the columns of $A$ can reach is called the column space of $A$.

For example,

Let,

$$A = \begin{bmatrix}2&&1&&1\\1&&2&&1\\1&&1&&0\end{bmatrix}$$

The column space of $A$ is $\mathbb{R^3}$. Try it out. By allowing
any combination of the columns of $A$, you can produce every vector
in $\mathbb{R^3}$.

But for the first matrix you encountered in this note, the
column space is just a plane inside $\mathbb{R^3}$.

$$B = \begin{bmatrix}1&&0&&1\\2&&1&&3\\3&&7&&10\end{bmatrix}$$

But why? The key to understanding this is *independence*.


## Independence

The third column of the matrix above is the sum of first two columns. It adds nothing new.
The combination of first two columns form a plane. The third column also lies inside the
plane. So it doesn't add anything.

*Note:* The number of independent columns of a matrix is called its rank. It is denoted by $r$.
It is also the dimension of the column space.

Let's take a few more examples

$$B = \begin{bmatrix}1&&2&&5\\1&&2&&5\\1&&2&&5\end{bmatrix}$$

The rank is $1$ for the above matrix. The second and the third columns are just multiples
of the first column.

To be honest, there is no way to tell which column is dependent on which. The first and second columns are also the multiples of the third column. We like to move from left to the right!


## Matrix $C$

The matrix $C$ is the matrix formed by taking the independent columns of $A$.
The basis of a space is just enough number of independent vectors required to span the space.
Then, the span of $C$ is the column space of $A$. And the basis of column space of $A$
are the columns of $C$.

For

$$A = \begin{bmatrix}5&&2&&9\\1&&3&&7\\9&&0&&9\end{bmatrix}$$

The matrix $C$ is


$$C = \begin{bmatrix}5&&2\\1&&3\\9&&0\end{bmatrix}$$

Here, $n = 3$, and $r = 2$. The third column is $1$ times the first column added with
$2$ times the second column. So, we don't include it in $C$.


## Matrix $R$

The matrix $C$ connects the matrix $A$ by a third matrix $R$. Let's look at an example.

$$A = \begin{bmatrix}1&&3&&8\\1&&2&&6\\0&&1&&2\end{bmatrix} = \begin{bmatrix}1&&3\\1&&2\\0&&1\end{bmatrix}\begin{bmatrix}1&&0&&2\\0&&1&&2\end{bmatrix} = CR$$

Absolutely beautiful!

-   When C multiplies the first column of $R$, $\begin{bmatrix}1\\0\end{bmatrix}$, it produces the first column of $A$.
-   When C multiplies the second column of $R$, $\begin{bmatrix}0\\1\end{bmatrix}$, it produces the second column of $A$.
-   When C multiplies the second column of $R$, $\begin{bmatrix}2\\2\end{bmatrix}$, it produces the third column of $A$.

We see that the columns of $A$ are the linear combination of the columns of $C$.

The matrix $R$ is the **row-reduced echelon** form of $A$.

The matrix above was of rank 2, so the number of columns of $C$ was also 2 (Obvious, since the columns
of $C$ are only the independent columns from $A$), so was the number of rows in $R$.

For a rank one matrix,

$$A = \begin{bmatrix}1&&-1&&3\\1&&-1&&3\\1&&-1&&3\end{bmatrix}
  = \begin{bmatrix}1\\1\\1\end{bmatrix}\begin{bmatrix}1&&-1&&3\end{bmatrix}
  = CR$$

See that the number of rows and columns in $R$ and $C$ is exactly equal to the rank of matrix.


## Column Rank $=$ Row Rank

We said that the rank of a matrix is the number of independent columns of a matrix.
Does that guarantee that $r$ is also the row rank of a matrix, i.e. is the number of independent rows
of $A$ also equal to $r$.

See the $A = CR$ factorization from previous section for yourself!

$$A = \begin{bmatrix}1&&3&&8\\1&&2&&6\\0&&1&&2\end{bmatrix} = \begin{bmatrix}1&&3\\1&&2\\0&&1\end{bmatrix}\begin{bmatrix}1&&0&&2\\0&&1&&2\end{bmatrix} = CR$$

Just like the columns of $A$ were the linear combination of the columns of $C$, the rows of $A$ are also
the linear combination of the rows of $R$. Look closely!

What combination of the rows of $R$ give the first row of $A$. You'll find the answer in the matrix $C$.
The numbers are exactly equal to the rows of $C$. Just as in the case of columns,

-   When R multiplies the first row of $C$, $\begin{bmatrix}1&&3\end{bmatrix}$, it produces the first row of $A$.
-   When R multiplies the second row of $C$, $\begin{bmatrix}1&&2\end{bmatrix}$, it produces the second row of $A$.
-   When R multiplies the second row of $C$, $\begin{bmatrix}0&&1\end{bmatrix}$, it produces the third row of $A$.

This reveals one of the fundamental theorem of Linear Algebra.

*The column rank is equal to the row rank which is the rank of a matrix*, i.e.
the number of independent columns and the number of independent rows in a matrix is same.

"

# ╔═╡ Cell order:
# ╟─df041056-edfd-11eb-29c4-8d17def22b2d
