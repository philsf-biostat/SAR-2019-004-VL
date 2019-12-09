source('scripts/input.R')
library(atable)
library(tableone)

tabela.desc <- atable::atable(protese, target_cols = c(
  "Sexo",
  "Idade",
  "Altura",
  "Peso",
  "IMC"
), format_to = "Console")

# t.test(dreno ~ group, protese.long, paired = TRUE)
tabela.comp <- print(
  CreateTableOne(vars = "dreno", strata = "group", data = protese.long, argsExact = list(paired = TRUE)),
  printToggle = FALSE, smd = TRUE, exact = TRUE)

