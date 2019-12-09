source('scripts/input.R')
library(atable)

t.test(dreno ~ group, protese.long, paired = TRUE)
