library(readxl)
library(data.table)
library(stringr)

dados <- read_excel("dataset/Resultados TXA Felipe.xlsx", 
                    skip = 1)
dados <- data.table(dados)

# data management ---------------------------------------------------------
dados[str_to_lower(`LADO TXA`) == "esq"]$`LADO TXA` <- "Esq"
dados[str_to_lower(`LADO TXA`) == "dir"]$`LADO TXA` <- "Dir"
dados$`LADO TXA` <- factor(dados$`LADO TXA`)

dados$txa <- rep(as.numeric(NA), nrow(dados))
dados$ctr <- rep(as.numeric(NA), nrow(dados))

dados[`LADO TXA` == "Dir"]$txa <- dados[`LADO TXA` == "Dir"]$DIR
dados[`LADO TXA` == "Esq"]$txa <- dados[`LADO TXA` == "Esq"]$ESQ
dados[`LADO TXA` == "Dir"]$ctr <- dados[`LADO TXA` == "Dir"]$ESQ
dados[`LADO TXA` == "Esq"]$ctr <- dados[`LADO TXA` == "Esq"]$DIR
