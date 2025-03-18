
# This project Focus: Value at Risk (VaR) Model

## Overview
This project implements a **Value at Risk (VaR) Model** using **Historical and Monte Carlo simulations** to estimate the risk of a portfolio.

## Features
- **Historical VaR:** Uses past returns to estimate potential losses.
- **Monte Carlo VaR:** Simulates potential future returns using statistical modeling.
- **Multi-asset Portfolio:** Applies VaR to stocks like Apple (AAPL), Microsoft (MSFT), and Google (GOOG).

## Requirements
- `quantmod`
- `PerformanceAnalytics`
- `tidyverse`

## How to Run
```r
source("var_model.R")
```

## Example Output
```
Historical VaR: -0.021 -0.018 -0.022 
Monte Carlo VaR: -0.025 -0.020 -0.023 
```
Challange: 
can you improve it with more theory?? 
push the chanes to this repo ^^
---