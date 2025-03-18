README.md for sma_backtest

# Simple Moving Average (SMA) Trading Strategy in R

## 📌 Overview
This project implements a **basic SMA crossover trading strategy** and **backtests it using historical stock prices**.

## 📈 Features
- Uses **20-day & 50-day SMAs** to generate buy/sell signals.
- Fetches **historical data from Yahoo Finance**.
- Computes **strategy performance vs. market returns**.

## > Usage
Run:
source("sma_backtest.R")

mathematica
Total Strategy Return: 12.8%

++ Dependencies
quantmod package for stock data and technical analysis.

📌 Future Enhancements
Implement Exponential Moving Averages (EMAs).
Optimize stop-loss & take-profit conditions.