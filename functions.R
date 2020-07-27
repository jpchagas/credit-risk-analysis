#install.packages("readr")
install.packages("randomForest")
install.packages("caret")
install.packages("lattice")
library(readr)
library(ggplot2)


#Extração dos dados da planilha
credit <- read_csv("data/credit_dataset.csv")

#Exibição dos dados
View(credit)

#Analise da tipagem de dados
str(credit)

mapply(hist,as.data.frame(credit),main=colnames(credit),xlab="x") 

#Analise dos atributos dos dados
summary(credit)

cm <- cor(credit,method = "pearson")

# Métodos de Correlação
# Pearson - coeficiente usado para medir o grau de relacionamento entre duas variáveis com relação linear
# Spearman - teste não paramétrico, para medir o grau de relacionamento entre duas variaveis
# Kendall - teste não paramétrico, para medir a força de dependência entre duas variaveis

# Vetor com os métodos de correlação
metodos <- c("pearson", "spearman")

# Aplicando os métodos de correlação com a função cor()
cors <- lapply(metodos, function(method) 
  (cor(credit, method = method)))

head(cors)

# Preprando o plot
require(lattice)
plot.cors <- function(x, labs){
  diag(x) <- 0.0 
  plot( levelplot(x, 
                  main = paste("Plot de Correlação usando Método", labs),
                  scales = list(x = list(rot = 90), cex = 1.0)) )
}

# Mapa de Correlação
Map(plot.cors, cors, metodos)



normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

?apply

credit_normalized <- apply(credit,MARGIN = 2,FUN = normalize)

View(credit_normalized)

cors <- lapply(metodos, function(method) 
  (cor(credit_normalized, method = method)))

cors

Map(plot.cors, cors, metodos)


