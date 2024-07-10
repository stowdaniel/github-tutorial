# START -------------------------------------------------------------------

# This is a function to calculate BMI
# It takes a vector of heights (in meters)
# And a vector of weights (in KG)

# THERE ARE NO CHECKS OR WARNINGS FOR PLAUSIBLE VALUES


# BMI FUNCTION ------------------------------------------------------------

bmi_converter <- function(height, weight) {
  message("The BMI function assumes units are m for height and kg for weight")
  bmi <- weight / (height ^ 2)
  return(bmi)
}

# TESTING -----------------------------------------------------------------
set.seed(123)
# Height in cm
height <- rnorm(50, 165, 10)
height <- height / 100
hist(height)

# Weight in kg
weight <- rnorm(50, 65, 10)
hist(weight)

# Histogram of BMI
hist(bmi_converter(height = height, weight = weight))

bmi_converter(h = height, w = weight)
# END ---------------------------------------------------------------------
