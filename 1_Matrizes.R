#--------------------------------------------------------------------------------
# Disciplina: Métodos Quantitativos em CC - 2017
# Professor : Luis Enrique Zárate
# Alunos    : Matheus Alcântara
#             Pedro Ruas
#             Marcos W. Rodrigues
#--------------------------------------------------------------------------------

# Aula 14/03/2017

# Definindo matrizes 3x3

A <- matrix(sample(0:9,9), nrow=3, ncol=3)
B <- matrix(sample(0:9,9), nrow=3, ncol=3)
#A <- matrix(c(1,2,6,2,3,5,1,7,9), nrow=3, ncol=3, byrow=TRUE, dimnames=list(c("X","Y","Z"), c("A","B","C")))
#B <- matrix(c(5,9,3,4,2,1,1,0,4), nrow=3, ncol=3, byrow=TRUE, dimnames=list(c("X","Y","Z"), c("A","B","C")))
#C <- matrix(c(5,3,2,1,1,0), nrow=3, ncol=2, byrow=TRUE, dimnames=list(c("X","Y","Z"), c("A","B")))

cat("Matriz A:\n") ; A
cat("Matriz B:\n") ; B

# Operações com matrizes

cat("Soma dos elementos das matrizes (A+B):\n") ; A+B
cat("Escalar multiplica cada elemento da matriz (3*A):\n") ; A ; 3*A
cat("Multiplicação dos elementos das matrizes (A*B):\n") ; A ; B ; A*B
cat("Multiplicação de matrizes (A*B):\n") ; A ; B ; A %*% B
cat("Multiplicação da matriz pela matriz identidade resulta na própria matriz (A*I):\n") ; A ; diag(3) ; A %*% diag(3)

cat("Diagonal da matriz da matriz A:\n") ; diag(A)

cat("Transposta da matriz A:\n") ; t(A)
cat("Matriz inversa de A (Somente matriz quadrada):\n") ; solve(A)
cat("Multiplicação da matriz inversa de A pela matriz B (A'*B):\n") ; crossprod(A,B)

cat("Determinante da matriz A - (det(A)):\n") ; det(A)
cat("Determinante da matriz transposta A - det(T(A)):\n") ; det(t(A))

# Aula 21/03/2017

# Sistemas de equações

#  x + 2y + 3z = 20  
# 2x + 5y + 9z = 100  
# 5x + 7y + 8z = 200

A <- matrix(data=c(1, 2, 3, 2, 5, 9, 5, 7, 8), nrow=3, ncol=3, byrow=TRUE)    
b <- matrix(data=c(20, 100, 200), nrow=3, ncol=1, byrow=FALSE)
S <- round(solve(A, b), 3) ; rownames(S) <- c("x","y","z")
cat("Solução do sistema de equações [A][b]:\n") ; A ; b ; S

# Autovalores e autovetores

cat("Autovalores e autovetores da matriz A:\n") ; eigen(A)

# Método dos mínimos quadrados

# Falta fazer...

# Método de redução Gauss-Jordan

# Falta fazer...
