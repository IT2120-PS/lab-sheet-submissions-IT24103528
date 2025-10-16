# Set working directory (change the path)
setwd("C:\\Users\\user\\OneDrive\\Desktop\\IT24103528") 

# Import the dataset
housetasks <- read.csv("C:\\Users\\user\\OneDrive\\Desktop\\IT24103528\\Data.csv", header = TRUE) 

# View the dataset
View(housetasks) 

# Rename the first column
names(housetasks)[1] <- "Task" 

# Set the first column as row names
rownames(housetasks) <- housetasks$Task 
housetasks <- housetasks[, -1] 

# Convert data to matrix
housetasks_matrix <- as.matrix(housetasks) 

# Perform Chi-square test
chisq_result <- chisq.test(housetasks_matrix) 

# Display results
chisq_result

#Consider 25% level of significant for the class
#Rejection Region: if the p value for the test is less than 0.25,
#Reject the null hypothesis at 25%  level of significant
#P value for the test got as 2.2e-16