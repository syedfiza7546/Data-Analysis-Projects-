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

### Step 1: Clone the Repository

Clone this repository to your local machine:
```bash
git clone https://github.com/syedfiza7546/youtube_growth_analysis.git
