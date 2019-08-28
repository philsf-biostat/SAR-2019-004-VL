library(readxl)
library(data.table)
dados <- read_excel("dataset/Resultados TXA Felipe.xlsx", 
                    skip = 1)
dados <- data.table(dados)
