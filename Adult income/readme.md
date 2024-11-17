---

## Project Overview

This project provides an in-depth analysis of a dataset, focusing on data cleaning, exploration, and basic analytics using pandas. The project covers techniques for sampling, handling missing data, removing duplicates, and performing univariate and bivariate analyses. It also includes steps for memory optimization and advanced filtering.

---

## Key Topics Covered

- Fetching random samples
- Using pandas functions:
  - `isin`
  - `between`
  - `unique`
  - `dropna`
  - `replace`
  - `duplicated`
  - `drop_duplicates`
  - `astype`
  - `apply`
- Understanding:
  - Univariate analysis
  - Bivariate analysis
  - Memory optimization

---

## Questions Answered

1. **Display Top 10 Rows of the Dataset**  
2. **Check Last 10 Rows of the Dataset**  
3. **Find the Shape of the Dataset**: Determine the number of rows and columns.  
4. **Get Information About the Dataset**: Includes the total rows, columns, data types, and memory requirements.  
5. **Fetch a Random Sample (50%) From the Dataset**  
6. **Check for Null Values in the Dataset**  
7. **Perform Data Cleaning**: Replace `?` with `NaN`.  
8. **Drop All Missing Values**  
9. **Check for Duplicate Data and Drop Them**  
10. **Get Overall Statistics About the DataFrame**  
11. **Drop Columns**: Remove `education-num`, `capital-gain`, and `capital-loss`.  
12. **Analyze the Distribution of the `Age` Column**  
13. **Find Total Number of Persons Aged Between 17 and 48** (inclusive) using `between`.  
14. **Analyze the Distribution of the `Workclass` Column**  
15. **Count Persons With Bachelors and Masters Degrees**  
16. **Perform Bivariate Analysis**  
17. **Replace Salary Values With 0 and 1**  
18. **Find the Workclass With the Highest Salary**  
19. **Determine Who Has a Better Chance of Earning >50K (Male or Female)**  
20. **Convert `workclass` Column Data Type to `category`**

---

## Steps to Run the Project

### Prerequisites
1. Install Python and necessary libraries:
   ```bash
   pip install pandas matplotlib seaborn
   ```

### Dataset
Ensure the dataset is in the same directory as your script and is named appropriately.

### Running the Analysis
1. Load the dataset using pandas.
2. Follow the questions in the order listed above.
3. Use pandas functions like `replace`, `dropna`, `duplicated`, and `astype` for data cleaning and optimization.
4. Generate visualizations for univariate and bivariate analyses using `matplotlib` or `seaborn`.

---

## Code Examples

### Example: Fetching Random Samples
```python
# Fetch a random 50% sample
sample_data = data.sample(frac=0.5)
```

### Example: Replacing Missing Values
```python
# Replace '?' with NaN
data.replace('?', pd.NA, inplace=True)
```

### Example: Analyzing Age Distribution
```python
# Distribution of Age
data['age'].plot(kind='hist', bins=20, title='Age Distribution')
plt.show()
```

### Example: Dropping Columns
```python
# Drop unnecessary columns
data.drop(['education-num', 'capital-gain', 'capital-loss'], axis=1, inplace=True)
```

### Example: Memory Optimization
```python
# Convert 'workclass' to a category
data['workclass'] = data['workclass'].astype('category')
```

