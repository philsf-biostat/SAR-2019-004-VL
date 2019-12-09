source('scripts/input.R')
library(atable)

tabela.desc <- atable::atable(protese, target_cols = c(
  "Sexo",
  "Idade",
  "Altura",
  "Peso",
  "IMC"
), format_to = "Console")

t.test(dreno ~ group, protese.long, paired = TRUE)
