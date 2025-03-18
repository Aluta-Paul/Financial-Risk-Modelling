
# Load necessary library
library(pracma)  # For numerical root-finding (YTM calculation)

# Bond parameters
face_value <- 1000  # Face value of the bond
coupon_rate <- 0.05  # 5% annual coupon
market_rate <- 0.06  # 6% required return (discount rate)
years_to_maturity <- 5  # Number of years
n <- 2  # Semi-annual payments

# Compute bond price
coupon_payment <- (coupon_rate * face_value) / n
discount_factors <- (1 + market_rate / n) ^ -(1:(years_to_maturity * n))
bond_price <- sum(coupon_payment * discount_factors) + (face_value * discount_factors[length(discount_factors)])

# Function to compute YTM
ytm_function <- function(ytm) {
  discount_factors_ytm <- (1 + ytm / n) ^ -(1:(years_to_maturity * n))
  sum(coupon_payment * discount_factors_ytm) + (face_value * discount_factors_ytm[length(discount_factors_ytm)]) - bond_price
}

# Solve for YTM
ytm_estimate <- uniroot(ytm_function, c(0, 1))$root

# Output results
cat("Bond Price:", round(bond_price, 2), "\n")
cat("Yield to Maturity (YTM):", round(ytm_estimate * 100, 2), "%\n")
