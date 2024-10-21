## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(segtest)

## ----fig.alt="A probability mass function of genotypes of a tetraploid F1 population"----
gf <- offspring_gf_3(
  tau = 1, 
  beta = 1/6, 
  gamma1 = 1/3,
  gamma2 = 1/3, 
  p1 = 1,
  p2 = 2)
plot(
  x = 0:4,
  y = gf,
  type = "h",
  xlab = "Genotype", 
  ylab = "Frequency",
  ylim = c(0, 1))

## -----------------------------------------------------------------------------
set.seed(1)
g1 <- 1
g2 <- 2
alpha <- 1/6
xi1 <- 1/3
xi2 <- 1/3
n <- 20
rd <- 10
x <- simf1g(
  n = n, 
  g1 = g1, 
  g2 = g2, 
  alpha = alpha, 
  xi1 = xi1, 
  xi2 = xi2)
gl <- simf1gl(
  n = n, 
  rd = rd, 
  g1 = g1,
  g2 = g2, 
  alpha = alpha, 
  xi1 = xi1,
  xi2 = xi2)

## -----------------------------------------------------------------------------
lout <- lrt_men_g4(x = x, g1 = g1, g2 = g2)

## -----------------------------------------------------------------------------
lout$p_value

## -----------------------------------------------------------------------------
lout_gl <- lrt_men_gl4(gl = gl, g1 = g1, g2 = g2)

## -----------------------------------------------------------------------------
lout_gl$p_value

## -----------------------------------------------------------------------------
x <- c(stats::rmultinom(n = 1, size = 20, prob = rep(1/5, 5)))
lout <- lrt_men_g4(x = x, g1 = g1, g2 = g2)

## -----------------------------------------------------------------------------
lout$p_value

