#mostra o dir
getwd()
----------------------------------------------------------------------------
#muda o dir
setwd("C:/users/831531/Desktop/aula")
----------------------------------------------------------------------------
#tudo que tem no dir
dir()
----------------------------------------------------------------------------
#criação de um vetor com expressão do gene a em 13 amostras
vec <- c(84.334,90.4555,34.989,43.222,23,25,424,0.568,0.349,45.984,62.847,17.233,12.085)
----------------------------------------------------------------------------
#obrservar o vetor vec
vec
----------------------------------------------------------------------------
#verificar modo/tipo do vec
mode(vec)
----------------------------------------------------------------------------
#verificar tamanho do vetor vec
length(vec)
----------------------------------------------------------------------------
#verificar estrutura do vetor vec
str(vec)
----------------------------------------------------------------------------
#verificar classe do vetor vec
class(vec)
----------------------------------------------------------------------------
#observar os 6 primeiros elementos do vetor
head(vec)
----------------------------------------------------------------------------
#observar os 6 ultimos elementos do vetor
tail(vec)
----------------------------------------------------------------------------
#ordenar o vetor vec criado
sort(vec, decreasing = TRUE)
----------------------------------------------------------------------------
#ordenar o vetor vec criado
order(vec)
order(vec, decreasing = T)
----------------------------------------------------------------------------
#arredondar valores do vec
round(vec)
----------------------------------------------------------------------------
#criar vetor com valores arredondados
nvec <- round(vec)
----------------------------------------------------------------------------
#diferça gerada pelo arredondamento
vec - nvec
----------------------------------------------------------------------------
#somando diferneça gerada pelo arredondamento
sum(vec - nvec)
----------------------------------------------------------------------------
#media do vetor
mean(vec)
----------------------------------------------------------------------------
#desvio padrão do vetor
sd(vec)
----------------------------------------------------------------------------
#sumario estatistico dos dados
summary(vec)
----------------------------------------------------------------------------
#histograma do vetor
hist(vec)
----------------------------------------------------------------------------
#função z score
z <- (vec - mean(vec))/sd(vec)
z
#organizando e mostrando o z
sort(z)
----------------------------------------------------------------------------
#vendo a posição do individuo
order(z)
----------------------------------------------------------------------------
#mostrando individuo
vec[7]
----------------------------------------------------------------------------
#ver normalidade e ver se é uma glauciana a meta é 0.5 em p-value
shapiro.test(vec)
----------------------------------------------------------------------------
#grafico boxplot
boxplot(vec, main="vec", xlab="vec", ylab="value", col = "blue")
----------------------------------------------------------------------------
                ##RECICLAGEM MAIS PERFORMATICA##
#criando vetor de 1  até 1.000.000
x <- 1:1000000

#colocando os valores elevado a segunda postencia os valores de x e salvando em y2
y2 <- x^2
----------------------------------------------------------------------------
               ##RECICLAGEM MENOS PERFORMATICA##
#criando vetor do mesmo tamanho de x
y1 <-numeric(length(x))

#colocando os valores elevado a segunda postencia os valores de x e salvando em y1
for (i in 1:length(x)) {
  y1[i] <- x[i]^2
}
----------------------------------------------------------------------------
##vendo se os dados são igual entre os vetores
identical(y1,y2)
----------------------------------------------------------------------------

#cria semente para numero randomico
set.seed(20)

#cria valores randomicos uniformes
dist_un <- runif(300000, min=5, max = 10)

#histograma das distribuição uniforme
hist(dist_un)

#cria valores randomicos normais(gaussiana)
dist_norm <- rnorm(30000000, mean = 20, sd=2)

#histograma das distribuição normal(gaussiana)
hist(dist_norm)

#organiza os dados randomicos
s_dt <-sort(dist_norm)

#mostra os 6 primeiros
head(s_dt)

#mostra os 6 ultimos
tail(s_dt)

----------------------------------------------------------------------------

#cria valores randomicos poisson
poisson <- rpois(1000, lambda = 6)

hist(poisson)
