#Here we focus on: Extreme Value Theory (EVT) using Generalized Extreme Value (GEV)

## Overview
This project fits a **Generalized Extreme Value (GEV) distribution** to **S&P 500 daily returns** to model extreme financial risk.

## Features
- **Extreme Value Modeling:** Identifies rare but significant market movements.
- **GEV Parameter Estimation:** Computes **location, scale, and shape** parameters.
- **Visualization:** Plots fitted GEV model to highlight tail risk.

## Requirements
- `quantmod`
- `evd`

## How to Run
```r
source("Generalized Extreme Value.R")
```

## Example Output
```
GEV Parameters: Location = -0.002 Scale = 0.015 Shape = -0.1 
```

## Future Improvements
- Apply **Peak Over Threshold (POT) modeling** for better extreme event analysis.
- Extend to **multi-asset portfolios** for broader risk evaluation.
