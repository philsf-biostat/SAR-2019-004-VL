library(readxl)
library(data.table)
library(stringr)

face <- read_excel("dataset/Resultados TXA Felipe.xlsx",
                   sheet = "face", skip = 1)
face <- data.table(face)

# data management ---------------------------------------------------------
face[str_to_lower(`LADO TXA`) == "esq"]$`LADO TXA` <- "Esq"
face[str_to_lower(`LADO TXA`) == "dir"]$`LADO TXA` <- "Dir"
face$`LADO TXA` <- factor(face$`LADO TXA`)

face$txa <- rep(as.numeric(NA), nrow(face))
face$ctr <- rep(as.numeric(NA), nrow(face))

face[`LADO TXA` == "Dir"]$txa <- face[`LADO TXA` == "Dir"]$DIR
face[`LADO TXA` == "Esq"]$txa <- face[`LADO TXA` == "Esq"]$ESQ
face[`LADO TXA` == "Dir"]$ctr <- face[`LADO TXA` == "Dir"]$ESQ
face[`LADO TXA` == "Esq"]$ctr <- face[`LADO TXA` == "Esq"]$DIR

# protese -----------------------------------------------------------------

protese <- read_excel("dataset/Resultados TXA Felipe.xlsx",
                      sheet = "protese", skip = 1)
protese <- data.table(protese)

protese[str_to_lower(`LADO TXA`) == "esq"]$`LADO TXA` <- "Esq"
protese[str_to_lower(`LADO TXA`) == "dir"]$`LADO TXA` <- "Dir"
protese$`LADO TXA` <- factor(protese$`LADO TXA`)

protese$txa <- rep(as.numeric(NA), nrow(protese))
protese$ctr <- rep(as.numeric(NA), nrow(protese))

protese[`LADO TXA` == "Dir"]$txa <- protese[`LADO TXA` == "Dir"]$DIR
protese[`LADO TXA` == "Esq"]$txa <- protese[`LADO TXA` == "Esq"]$ESQ
protese[`LADO TXA` == "Dir"]$ctr <- protese[`LADO TXA` == "Dir"]$ESQ
protese[`LADO TXA` == "Esq"]$ctr <- protese[`LADO TXA` == "Esq"]$DIR

# trim cols ---------------------------------------------------------------

face <- face[, .(SEQ, DATA, DIR, ESQ, LADO=`LADO TXA`, Citometria, txa, ctr)]
protese <- protese[, .(SEQ, DATA, DIR, ESQ, LADO=`LADO TXA`, COR=COLORAÇÃO, txa, ctr)]
