# cálculo amostral --------------------------------------------------------

power.t.test(delta = 5, sd = 6, power = .8, type = "paired") # 13~14
power.t.test(delta = 5, sd = 6, power = .99, type = "paired") # 28~30

# análise de poder --------------------------------------------------------

# sample size = 30/15
power.t.test(delta = 5, sd = 6, type = "paired", n = 30, sig.level = .05)
power.t.test(delta = 5, sd = 6, type = "paired", n = 30, sig.level = .01)
power.t.test(delta = 5, sd = 6, type = "paired", n = 15, sig.level = .01)
power.t.test(delta = 5, sd = 6, type = "paired", n = 15, sig.level = .05)
