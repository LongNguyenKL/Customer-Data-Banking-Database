# Assuming 'df' is DataFrame containing the 'customers' table

# Calculate mean and standard deviation of age
mean_age = df['AGE'].mean()
std_dev_age = df['AGE'].std()

# Define outlier criteria (e.g., values beyond 3 standard deviations from the mean)
lower_bound = mean_age - 3 * std_dev_age
upper_bound = mean_age + 3 * std_dev_age

# Identify outliers
outliers = df[(df['AGE'] < lower_bound) | (df['AGE'] > upper_bound)]

# Display outliers
print("Outliers:")
print(outliers)

# Counting the number of outliers
num_outliers = len(outliers)
print(f"Number of outliers: {num_outliers}")
