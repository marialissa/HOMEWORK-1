#QUESTAO-02

    #ITEM-03


        #renda
        r <- c(2.3, 1.6, 1.2, 0.9, 2.1, 1.6, 1.8, 1.4, 1.2, 2.8, 3.4, 2.7, 1.6, 1.2, 1.1, 2.5, 2.0, 1.7, 2.1, 3.2)
        #experiencia
        e <- c(2,8,21,1,15,3,28,5,13,20,32,23,1,0,29,18,19,7,12,23)

        #plotagem-graf-dispersao
        plot(e, r, main="Graf. Dispersao - Exp x Renda",
        xlab="Experiencia ", ylab="Renda", pch=19)

        #corr. de Pearson
        cat("coeficiente de corr. Pearson da experiencia e da renda =", cor(e, r), "\n")
