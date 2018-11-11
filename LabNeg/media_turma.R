

MediaTurma <- function (){
    notas <- c(7,8,9,10,2,8,7,7,5,10)
    soma=0
    for (n in notas){
        soma = soma + n
    }
    return (soma/10)
}

med <- MediaTurma()
print(med)


