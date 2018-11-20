
notas <- c(8.6,6,3.6,8.6,8.1,5.4,7.2,8.9,7.8,9.7,7.2,4.2)
print(conceitos)
conceitos <- c('A','B','F','A','A','D','B','A','B','A','B','F')
print(notas)

notas_turma <- read.csv("./IA/notas_turma - final.csv",header = T)
print(notas_turma)
str(notas_turma)

conceitos_freq <- table(notas_turma$Conceito)
print(conceitos_freq)

barplot(conceitos_freq)

hist(notas_turma$Nota, freq=T, breaks= c(0,5,7,9,10))

