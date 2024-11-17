# YouTube Growth Analysis

This project provides a detailed analysis of a YouTube channel's growth over time. The analysis includes key metrics such as subscriber count, total views, income streams, video performance, and expenses.

## Project Overview

This repository contains SQL queries and Python scripts to analyze the following:

1. **YouTube Growth Analysis**: Analyzes the growth in subscribers and views over time.
2. **Income Breakdown**: Analyzes the contributions of different income streams such as AdSense, sponsorships, affiliate marketing, and courses.
3. **Video Performance**: Analyzes the performance of individual videos based on views, likes, and comments.
4. **Expense-to-Income Ratio**: Compares the channel's monthly expenses to income to understand profitability.
5. **Upload Frequency and Growth Correlation**: Analyzes if the frequency of uploads correlates with growth in subscribers and views.

## Tables and Data

The project uses four main tables to store data:

- **youtube_metrics**: Contains the date, video count, subscriber count, and total views.
- **income_streams**: Contains data on various income streams (e.g., AdSense, sponsorships).
- **video_performance**: Contains individual video performance metrics like views, likes, and comments.
- **expenses**: Contains monthly expenses data, including equipment costs, team salary, and ads budget.

## Setup Instructions

### Prerequisites

1. **Install a Database** (e.g., MySQL, PostgreSQL, SQLite).
2. **Install Python** and libraries:
    ```bash
    pip install pandas matplotlib
    ```

## Cloning the Repository

To clone this repository to your local machine, use the following command:

```bash
git clone https://github.com/syedfiza7546/Data-Analysis-Projects-.git
```
## Step 2: Set Up the Database
Create a new database and tables based on the SQL scripts provided in the sql directory:

```
CREATE DATABASE youtube_growth_analysis;
USE youtube_growth_analysis;
```

## Step 3: Insert Sample Data
Use the provided SQL queries to insert mock data into the database for testing.


## Step 4: Run SQL Queries

Run the SQL queries to analyze the data and visualize insights:

1. **YouTube Growth Analysis**  
   Use SQL queries to analyze YouTube growth trends, focusing on metrics like video count, subscriber growth, and view count.

2. **Income Breakdown**  
   Calculate the total income and percentage contribution from different income streams, including AdSense, sponsorships, affiliate income, and courses.

3. **Top Video Performance**  
   Analyze which videos are performing the best based on views, likes, and comments.

4. **Expense-to-Income Ratio**  
   Compare monthly expenses to income to calculate the ratio of expenses over income and analyze profitability.

5. **Upload Frequency and Growth Correlation**  
   Investigate if more frequent uploads correlate with faster growth in terms of subscribers and views.


## Step 5: Visualize Data
The Python script visualize.py loads data from CSV files exported from the SQL queries and visualizes the results using matplotlib.
