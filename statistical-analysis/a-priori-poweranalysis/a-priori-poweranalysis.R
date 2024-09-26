install.packages("pwr")

# Load necessary packages
library(pwr)

# Set parameters
effect_size <- 0.30  # You'll need to determine an appropriate effect size
alpha <- 0.05  # Significance level
power <- 0.80  # Desired power
groups_per_factor <- 2  # Number of groups per factor

# Perform power analysis
sample_size <- pwr.anova.test(k = groups_per_factor, f = effect_size, sig.level = alpha, power = power)$n

# Print the result
print(paste("The required sample size is:", ceiling(sample_size)))