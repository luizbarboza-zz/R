

notas <- c(8.6,6,3.6,8.6,8.1,5.4,7.2,8.9,7.8,9.7,7.2,4.2)
print(conceitos)
conceitos <- c('A','B','F','A','A','D','B','A','B','A','B','F')
print(notas)

notas_turma <- read.csv("./IA/notas_turma - final.csv",header = T)
print(notas_turma)

notas <- notas_turma$Nota
print(notas)
conceitos <- notas_turma$Conceito
print(conceitos)

str(notas_turma)

ap1 <- notas_turma$AP1
ap2 <- notas_turma$AP2
ap3 <- notas_turma$AP3

notas <- ap1 * 0.4 + ap2 * 0.4 + ap3 * 0.2
print(notas)
print(notas_turma$Nota)


