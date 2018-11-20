
amostra <- read.csv("./IA/reglin_amostra - notas.csv", header = T)
print(amostra)

plot(amostra$AP3_a ~ amostra$AP2_a)

reglin <-  lm (amostra$AP3_a ~ amostra$AP2_a +  amostra$AP1_a)
summary(reglin)

dados <- read.csv("./IA/reglin_dados - notas.csv", header = T)

Deduz_AP3 <- function( ap1, ap2) {
  return (ap1 * -0.43 + ap2 * 1.44 - 0.92)
}

Print_AP3 <- function( boletim ) {
  qtd <- length(boletim$AP1)
  for (i in 1:qtd) {
    ap3 <- Deduz_AP3(boletim$AP1[i] ,boletim$AP2[i])
    print (ap3)
  }
}

Print_AP3(dados)


plot(amostra$AP3_a ~ amostra$AP2_a)
ap3_vs_ap2 <- lm (amostra$AP3_a ~ amostra$AP2_a)
abline(ap3_vs_ap2)

plot (amostra$AP1_a , amostra$AP3_a)
ap3_vs_ap1 <- lm (amostra$AP3_a ~ amostra$AP1_a)
abline(ap3_vs_ap1)

pairs(~AP3_a + AP2_a  + AP1_a , data=amostra)
pairs(~amostra$AP3_a , amostra$AP2_a, amostra$AP1_a)

pairs.panels(amostra[c(3,2,1)])
          
plot3d(amostra$AP3_a , amostra$AP2_a, amostra$AP1_a)

cor(amostra)
cor.test(amostra$AP3_a , amostra$AP2_a)
cor.test(amostra$AP3_a , amostra$AP1_a)


