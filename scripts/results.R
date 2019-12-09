source('scripts/input.R')
library(atable)

with(protese, (t.test(txa, ctr, paired = TRUE)))
