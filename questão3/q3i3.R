#QUESTAO-03
    #ITEM-03

      library(tidyverse)
      
      dados_bike <- read_csv("HW1_bike_sharing.csv")
      
      
      #para gerar gráf. barra para seasons
      var_seasons <- dados_bike[, 4]
      
      freq_seasons <- table(var_seasons)
      
      print(freq_seasons)
      
      barplot(freq_seasons, main="Frequência absoluta de cada estação",
              xlab="Estações",
              ylab="Frequência de amostras",
              names.arg = c("Primavera", "Verão", "Outono", "Inverno"))

      #para gerar gráf. barra para weathersit
      var_weathersit <- dados_bike[, 5]
      
      freq_weathersit <- table(var_weathersit)      
      
      print( freq_weathersit)
      
      #não adicionei o nome da chuva forte porque ela não tem nenhuma instância então dava erro
      barplot(freq_weathersit, main="Frequência absoluta de cada condição metereológica",
              xlab="Condições metereológicas",
              ylab="Frequência de amostras",
              names.arg = c(" Céu limpo", "Nublado", "Chuva fraca"))
      
