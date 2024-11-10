# -COVID-19 Data Analysis Project-

This repository contains a set of SQL queries for analyzing COVID-19 data using the PortfolioProject database. The queries provide insights into cases, deaths, vaccinations, and population statistics.

## Queries Overview

1. "Country-Level COVID-19 Data"
   - Query: `country_covid_data.sql`
   - Description: Retrieves COVID-19 data including new cases, total deaths, total cases per million, and population for each country.
   - Filter: Includes data for countries with a valid continent.
   - Order: Results are ordered by location and date.

2. "Percentage of Population Infected"
   - Query: `percentage_infected.sql`
   - Description: Calculates the percentage of the population infected by COVID-19 for each country.
   - Result: Includes data for countries with new deaths and population.
   - Order: Results are ordered by location and date.

3. "Highest Death Rate by Country"
   - Query: `highest_death_rate.sql`
   - Description: Identifies countries with the highest death rates, including the maximum death count and percentage of population deaths.
   - Filter: Includes data for countries with a valid continent, population, and death count.
   - Order: Results are ordered by the percentage of population deaths in descending order.

4. "Continent-Wide COVID-19 Data"
   - Query: `continent_covid_data.sql`
   - Description: Provides continent-level COVID-19 data, including the maximum death count and percentage of population deaths.
   - Filter: Includes data for continents with a valid population and death count.
   - Order: Results are ordered by the percentage of population deaths in descending order.

5. "Global COVID-19 Statistics by Date"
   - Query: `global_covid_statistics.sql`
   - Description: Aggregates global COVID-19 statistics by date, including new cases, new deaths, and the percentage of new deaths.
   - Filter: Includes data for continents with valid new cases per day.
   - Order: Results are ordered by the percentage of new deaths.

6. "Total Population vs. Vaccinations Using CTE"
   - Query: `population_vs_vaccinations.sql`
   - Description: Calculates the rolling sum of new vaccinations and their percentage relative to the population for each country.
   - Filter: Includes data for countries with a valid continent and new vaccinations.
   - Result: Includes a CTE for further analysis.
   - Order: Results are ordered by location and date.

7. "Percentage of Max People Vaccinated"
   - Query: `percentage_max_vaccinated.sql`
   - Description: Calculates the percentage of people vaccinated relative to the maximum value within each country.
   - Result: Includes data for countries with a valid continent and new vaccinations.
   - Order: Results are ordered by location and date.

## Instructions

- Execute the SQL queries against your PortfolioProject database.
- Adjust filter criteria or sorting options as needed for your analysis.
- Ensure that the database schema matches the table and column names used in the queries.

## Usage

To reproduce this initial exploration, follow these steps:

1. **Clone the repository**:
   ```bash
https://github.com/syedfiza7546/-COVID-19-Data-Analysis-Project-.git
