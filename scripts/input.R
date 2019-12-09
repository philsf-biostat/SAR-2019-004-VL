library(readxl)
library(data.table)
library(stringr)

# data management ---------------------------------------------------------
protese <- read_excel("dataset/Resultados TXA Felipe.xlsx",
                      sheet = "protese", range = "A3:I41")
protese <- data.table(protese)

protese[str_to_lower(`LADO TXA`) == "esq"]$`LADO TXA` <- "Esq"
protese[str_to_lower(`LADO TXA`) == "dir"]$`LADO TXA` <- "Dir"
protese$`LADO TXA` <- factor(protese$`LADO TXA`)
protese$Sexo <- factor(rep(NA, nrow(protese)), levels = c("F", "M"))
protese$Idade <- rep(as.numeric(NA), nrow(protese))
protese$Altura <- rep(as.numeric(NA), nrow(protese))
protese$Peso <- rep(as.numeric(NA), nrow(protese))
protese$IMC <- rep(as.numeric(NA), nrow(protese)) #protese$Peso/(protese$Altura^2)

protese$txa <- rep(as.numeric(NA), nrow(protese))
protese$ctr <- rep(as.numeric(NA), nrow(protese))

protese[`LADO TXA` == "Dir"]$txa <- protese[`LADO TXA` == "Dir"]$DIR
protese[`LADO TXA` == "Esq"]$txa <- protese[`LADO TXA` == "Esq"]$ESQ
protese[`LADO TXA` == "Dir"]$ctr <- protese[`LADO TXA` == "Dir"]$ESQ
protese[`LADO TXA` == "Esq"]$ctr <- protese[`LADO TXA` == "Esq"]$DIR

# trim cols ---------------------------------------------------------------
protese <- protese[, .(
  SEQ,
  Sexo,
  Idade,
  Altura,
  Peso,
  IMC,
  DATA,
  DIR,
  ESQ,
  LADO=`LADO TXA`,
  COR=COLORAÇÃO,
  txa,
  ctr
  )]

# trim empty rows
protese <- protese[!(SEQ %in% 39:50)]

# long format -------------------------------------------------------------
protese.long <- tidyr::gather(data = protese[, -"COR" ], key = "group", value = "dreno", ctr, txa)
