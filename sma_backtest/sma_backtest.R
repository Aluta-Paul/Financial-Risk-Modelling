
#**Relevance:** Algorithmic Trading, Quantitative Finance, Trading Desk  

### **Objective:**  
# - Implement a **basic trading strategy** using **moving averages**.  
# - Backtest it against historical stock prices.  

---
  
  ### **sma_backtest.R**
# Load necessary libraries
library(quantmod)

# Fetch historical stock prices (Example: Apple Inc.)
symbol <- "AAPL"
getSymbols(symbol, src = "yahoo", from = "2022-01-01", to = "2023-12-31")

# Extract adjusted closing prices
stock_prices <- Cl(get(symbol))

# Define moving averages
short_window <- 20
long_window <- 50

sma_short <- SMA(stock_prices, n = short_window)
sma_long <- SMA(stock_prices, n = long_window)

# Generate trading signals
signals <- ifelse(sma_short > sma_long, 1, 0)  # Buy when short SMA crosses above long SMA
signals <- lag(signals)  # Lag to avoid lookahead bias

# Compute returns
returns <- dailyReturn(stock_prices)
strategy_returns <- returns * signals

# Plot the strategy
plot(stock_prices, main = "SMA Trading Strategy", col = "blue")
lines(sma_short, col = "green", lwd = 2)
lines(sma_long, col = "red", lwd = 2)
legend("topright", legend = c("Stock Price", "Short SMA", "Long SMA"),
       col = c("blue", "green", "red"), lwd = 2)

# Performance summary
cat("Total Strategy Return:", round(sum(strategy_returns, na.rm = TRUE) * 100, 2), "%\n")

## ENd work to improve .then push here!!