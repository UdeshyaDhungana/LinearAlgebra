# coding: utf-8

import numpy as np
import matplotlib.pyplot as plt

# problem 12
b = np.array([[0, 8, 8, 20]])
t = np.array([[0, 1, 3, 4]])

# scatter plot
plt.scatter(t,b)
plt.show()

# reshape
t = t.T
ones = np.ones((4,1))
t = np.append(ones, t, axis=1)
b = b.T

#Calculating using pseudoinverse
print("The coefficients are:")
x = np.linalg.pinv(t) @ b
print(x)
#c = 1, d = 4

# heights and errors
heights = t @ x

# plot the best fit line
plt.scatter(t[:,1], b)
plt.plot(t[:,1], heights, color='orange')
plt.show()

error = heights - b
min_squared_error = np.linalg.norm(error) ** 2
print(min_squared_error)


# problem 17
print("Problem 17------")
a_1 = np.array([[1, 1, 1, 1]]).T
a_2 = np.array([[0, 1, 3, 4]]).T

x_hat = (a_1.T @ b).item(0)/(a_1.T @ a_1).item(0)
p = x_hat * a_1
print("The projection is")
print(p)

e = b - p
print('The error is')
print(e)

print("The dot of error and vector 'a' is")
print(e.T @ a_1)
#error is perpendicular to a_1

e_mag = np.linalg.norm(e)
print("Magnitude of error:")
print(e_mag)
