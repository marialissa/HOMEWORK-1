#QUESTAO-03
    #ITEM-04

      library(tidyverse)
      
      dados_bike <- read_csv("HW1_bike_sharing.csv")
      
      #transforma as colunas em vetor
      usuarios_dia <- as.numeric(unlist(dados_bike[, 7])) + as.numeric(unlist(dados_bike[, 8]))
      temp_real <- as.numeric(unlist(dados_bike[, 6])) * 41
      datas <- as.Date(dados_bike[[3]], format = "%Y-%m-%d")
      
      #gráfico da temperatura
          plot(datas, temp_real, type = "l", col = "pink", lwd = 2,
           main = "Temperatura por dia", xlab = "Data", ylab = "Temperatura (°C)")
      par(mfrow = c(1, 1))
     
       #gráfico dos usuários 
      plot(datas, usuarios_dia, type = "l", col = "blue", lwd = 2,
           main = "Usuários por dia", xlab = "Data", ylab = "Total usuários")
