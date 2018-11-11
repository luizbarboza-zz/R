
aprovacao <- function(nota, freq){
    if (nota >= 7 & freq >= 0.75){
        return ("Aprovado")
    }else{
        return ("Reprovado")
    }
}
 
  
   
aprov <- aprovacao(10,0.8)
print(aprov)
