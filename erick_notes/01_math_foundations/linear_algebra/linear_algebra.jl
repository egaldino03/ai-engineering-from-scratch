using LinearAlgebra

a = [1.0, 2.0, 3.0]
b = [4.0, 5.0, 6.0]

println("a + b = ", a + b)
println("a * b = ", dot(a, b))       # 'dot(a, b)' substitui o produto escalar 'a ⋅ b'
println("|a| = ", norm(a))           # 'norm(a)' substitui a raiz do produto escalar '√(a ⋅ a)'
println("cosine = ", dot(a, b) / (norm(a) * norm(b)))

# Matrix-vector multiplication
W = [0.1 -0.2 0.3; 0.4 0.5 -0.1]
x = [1.0, 0.5, -0.3]
println("Wx = ", W * x)
println("This is a neural network layer.")
