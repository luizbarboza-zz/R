

notas_turma <- read.csv("./IA/notas_turma - final.csv",header = T)
print(notas_turma)
str(notas_turma)

summary(notas_turma)

boxplot(notas_turma$Nota)

