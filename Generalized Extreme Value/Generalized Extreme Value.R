
# Focus: Extreme Value Theory (EVT) using Generalized Extreme Value (GEV)

# Load necessary libraries
library(evd)  # For GEV distribution (important!!!!)

# Fetch historical S&P 500 data
ticker <- "^GSPC"
getSymbols(ticker, src = "yahoo", from = "2010-01-01", to = "2024-01-01")

# Compute daily returns
sp500_returns <- na.omit(dailyReturn(Cl(get(ticker))))

# Fit GEV model
gev_fit <- fgev(sp500_returns)

# Plot results
plot(gev_fit, main = "GEV Fit to S&P 500 Returns")

# Extract estimated parameters
gev_params <- gev_fit$estimate
cat("GEV Parameters: Location =", gev_params[1], "Scale =", gev_params[2], "Shape =", gev_params[3], "\n")
