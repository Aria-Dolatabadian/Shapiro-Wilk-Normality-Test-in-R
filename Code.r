# Read the data back into R
data_read <- read.csv("data.csv")

# Extract vectors from the data frame
x1 <- data_read$x1
x2 <- data_read$x2

# Plot the density
plot(density(x1), ylim = c(0, 1.1), col = 2)  # Draw density plot for x1
lines(density(x2), col = 3)  # Add density plot for x2
legend("topleft", c("x1", "x2"), col = 2:3, lty = 1)

# Perform Shapiro-Wilk test for normality
shapiro.test(x1)  # Apply shapiro.test for x1
shapiro.test(x2)  # Apply shapiro.test for x2
