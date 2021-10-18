using LinearAlgebra

a = [1 4; 1 0]

q, r = qr(a)

println(q)
println(r)