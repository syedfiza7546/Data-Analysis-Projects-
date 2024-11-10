# File: SF_Salaries.ipynb

 - **Description**: This Python project loads, cleans, and performs data analysis on the `Salaries.csv` dataset. The project includes handling missing values, removing unnecessary columns, and generating summary statistics to gain insights from the data. The dataset is cleaned to ensure that it only contains relevant information, and the code produces a comprehensive analysis of the data, including a description of each column and count of missing values.
  - **Key Skills**: 
    - **Data Loading and Cleaning**: Uses `pandas` to load and clean the data, handling missing values and irrelevant columns.
    - **Handling Missing Data**: Identifies missing values and counts them using `data1.isnull()`.
    - **Data Analysis with Pandas**: Descriptive statistics are generated using `data1.describe()` for deeper insights into the dataset.
    - **Removing Irrelevant Columns**: Unnecessary columns like `Id`, `Notes`, `Agency`, and `Status` are dropped to simplify analysis and focus on the essential data.
    
    #### Code Breakdown:

    ```python
    import pandas as pd

    # Load the dataset
    data1 = pd.read_csv('/content/Salaries.csv')

    # Display a warning if columns have mixed types
    <ipython-input-4-9bc0313fa97f>:1: DtypeWarning: Columns (3,4,5,6,12) have mixed types. Specify dtype option on import or set low_memory=False.
    data1 = pd.read_csv('/content/Salaries.csv')

    # Show the first few rows of the data
    data1

    # Check the structure of the dataset
    data1.info()

    # Count missing values in each column
    data1[data1.isnull()].count()

    # Display the columns in the dataset
    data1.columns

    # Drop irrelevant columns
    data1 = data1.drop(['Id', 'Notes', 'Agency', 'Status'], axis=1)

    # Show the updated columns
    data1.columns

    # Display descriptive statistics for the data
    data1.describe(include='all')
    ```

    #### Key Steps in the Code:
    1. **Data Loading**: The dataset `Salaries.csv` is loaded into a Pandas DataFrame using `pd.read_csv()`. A warning may appear if some columns have mixed types, which can be handled by specifying the correct data types.
    2. **Exploring the Data**: The code uses `.info()` to check the structure and datatypes of the dataset and `.isnull().count()` to check for any missing values in the dataset.
    3. **Data Cleaning**: The code drops unnecessary columns (`Id`, `Notes`, `Agency`, `Status`) to streamline the data and focus on the relevant fields for analysis.
    4. **Descriptive Statistics**: The `.describe()` method generates a summary of the dataset, which includes count, mean, standard deviation, and other descriptive statistics for each column.

---

This project allows you to gain insights from a given dataset, clean it, and prepare it for more advanced analysis or visualization. It provides a solid foundation in data wrangling and statistical analysis with Python using Pandas.
