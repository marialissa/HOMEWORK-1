library(tidyverse)
library(knitr)

nome_arquivo <- "HW1_bike_sharing.csv" 
dados_bikes <- read_csv(nome_arquivo)


dados_analise <- dados_bikes |> 
  select(temp, casual, registered)

sumario_estatistico <- summary(dados_analise)

tabela_resultados <- kable(sumario_estatistico,
                           caption = "Tabela 1: Medidas Descritivas para Uso de Bicicletas",
                           format = "pipe")

print(tabela_resultados)
