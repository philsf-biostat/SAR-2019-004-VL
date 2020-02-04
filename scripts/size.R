library(pwr)

# cálculo amostral --------------------------------------------------------

pwr.t.test(power = 0.8, type = "paired", d = 0.4)

# análise de poder --------------------------------------------------------

# sample size = 50
pwr.t.test(power = 0.8, type = "paired", n = 51)
