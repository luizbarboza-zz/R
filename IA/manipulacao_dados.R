notas_turma <- read.csv("./IA/notas_turma - final.csv",header = T)
print(notas_turma)

notas_porCurso <- split(notas_turma$Nota, notas_turma$Curso)
media_notas_porCurso <- sapply(notas_porCurso,mean)
barplot(media_notas_porCurso)

boxplot(notas_porCurso)

