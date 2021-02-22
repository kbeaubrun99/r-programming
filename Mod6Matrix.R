#question 1
A = matrix(c(2,0,1,3), ncol=2)
B = matrix(c(5,2,4,-1), ncol=2)
print(A)
print(B)
#part A
C = A + B
print (C)
#part B
D = A - B
print (D)
#question 2
diag(x = c(4,1,2,3), nrow = 4, ncol = 4)
#question 3
E <- diag(c(3), 5, 5)
E[,1] <- E[,1] + 2
E[1,] <- E[1,] + 1
E[1,1] <- 3
print(E)



