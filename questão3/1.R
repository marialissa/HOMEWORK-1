library(tidyverse)

dados_bike <- read_csv("HW1_bike_sharing.csv")

total_observacoes <- nrow(dados_bike)

dados_bike$dteday <- as_date(dados_bike$dteday)

data_inicio <- min(dados_bike$dteday)
data_fim <- max(dados_bike$dteday)

colunas_numericas <- c()
colunas_categoricas <- c()

categorias_em_numero <- c("season", "yr", "mnth", "hr", "holiday", "weekday", "workingday", "weathersit")

for (coluna in names(dados_bike)) {
  
  if (coluna %in% categorias_em_numero) {
    colunas_categoricas <- c(colunas_categoricas, coluna)
    
  } else if (is.numeric(dados_bike[[coluna]])) {
    colunas_numericas <- c(colunas_numericas, coluna)
    
  } else {
    colunas_categoricas <- c(colunas_categoricas, coluna)
  }
}


cat("Número Total de Observações:", total_observacoes, "\n\n")

cat("Período da Amostra:\n")
cat("Data de Início:", format(data_inicio, "%d/%m/%Y"), "\n")
cat("Data de Fim:", format(data_fim, "%d/%m/%Y"), "\n\n")

cat("Classificação das Variáveis:\n")
cat("Variáveis Numéricas:\n", paste(" -", colunas_numericas, collapse = "\n"), "\n\n")

cat("Variáveis Categóricas:\n", paste(" -", colunas_categoricas, collapse = "\n"), "\n")
