daily_emissions <- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8, 21.9, 10.5, 17.3, 6.2, 18.0, 22.9, 24.6, 19.4, 12.3, 15.9, 20.1, 17.0, 22.3, 27.5, 23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 20.9, 21.4, 18.0, 24.3, 11.8, 17.9, 18.7, 12.8, 15.5, 19.2, 13.9, 28.6, 19.4, 21.6, 13.5, 24.6, 20.0, 24.1, 9.0, 17.6, 25.7, 20.1, 13.2, 23.7, 10.7, 19.0, 14.5, 18.1, 31.8, 28.5, 22.7, 15.2, 23.0, 29.6, 11.2, 14.7, 20.5, 26.6, 13.3, 18.1, 24.8, 26.1, 7.7, 22.5, 19.3, 19.4, 16.7, 16.9, 23.5, 18.4)

media <- mean(daily_emissions)
cat("média:", media, "\n")

mediana <- median(daily_emissions)
cat("mediana:", mediana, "\n")

tabela_freq <- table(daily_emissions)
moda <- names(tabela_freq)[tabela_freq == max(tabela_freq)]
cat("moda:", moda, "\n")

range <- max(daily_emissions) - min(daily_emissions)
cat("amplitude:", range, "\n")

sd <- sd(daily_emissions)
cat("desvio padrão:", sd, "\n")

var <- var(daily_emissions)
cat("variância:", var, "\n")

coef_variation <- (sd(daily_emissions) / mean(daily_emissions)) * 100
cat("coeficiente de variação:", coef_variation, "\n")
