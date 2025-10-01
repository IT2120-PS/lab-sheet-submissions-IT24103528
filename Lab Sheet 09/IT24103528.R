# Set working directory
setwd("C:\\Users\\user\\OneDrive\\Desktop\\IT24103528") 

# Generate random sample of baking times
set.seed(123)   # for reproducibility
sample_times <- rnorm(25, mean = 45, sd = 2) 
sample_times 
# One-sample t-test
t.test(sample_times, mu = 46, alternative = "less") 
