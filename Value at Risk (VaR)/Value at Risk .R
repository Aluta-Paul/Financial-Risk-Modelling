
# Load necessary libraries
library(quantmod)
library(PerformanceAnalytics)
library(tidyverse)

# Fetch stock data from Yahoo Finance
tickers <- c("AAPL", "MSFT", "GOOG")  # Portfolio assets
getSymbols(tickers, src = "yahoo", from = "2022-01-01", to = "2024-01-01")

# Compute daily returns
returns <- na.omit(ROC(merge(Cl(AAPL), Cl(MSFT), Cl(GOOG)), type = "discrete"))

# Compute Historical VaR (95% confidence level)
var_historical <- apply(returns, 2, function(x) quantile(x, probs = 0.05))

# Monte Carlo VaR
set.seed(123)
num_simulations <- 10000
simulated_returns <- matrix(rnorm(num_simulations * ncol(returns), mean = colMeans(returns), sd = apply(returns, 2, sd)), 
                            nrow = num_simulations)
var_mc <- apply(simulated_returns, 2, function(x) quantile(x, probs = 0.05))

# Output results
cat("Historical VaR:", var_historical, "\n")
cat("Monte Carlo VaR:", var_mc, "\n")