-- Open your database tool and create a database for the project.
CREATE DATABASE ali_abdaal_analysis;
USE ali_abdaal_analysis;

-- Create the required tables in your database. Use the schema provided earlier to structure your tables.
CREATE TABLE youtube_metrics (
    date DATE PRIMARY KEY,
    video_count INT,
    subscriber_count INT,
    total_views BIGINT
);
CREATE TABLE income_streams (
    month DATE PRIMARY KEY,
    adsense_income DECIMAL(10, 2),
    sponsorship_income DECIMAL(10, 2),
    affiliate_income DECIMAL(10, 2),
    courses_income DECIMAL(10, 2)
);
CREATE TABLE video_performance (
    video_id INT PRIMARY KEY,
    title VARCHAR(255),
    upload_date DATE,
    views INT,
    likes INT,
    comments INT
);
CREATE TABLE expenses (
    month DATE PRIMARY KEY,
    equipment_cost DECIMAL(10, 2),
    team_salary DECIMAL(10, 2),
    ads_budget DECIMAL(10, 2)
);
-- loading the data and inserting values
INSERT INTO youtube_metrics (date, video_count, subscriber_count, total_views)
VALUES
    ('2023-01-01', 50, 1000000, 200000000),
    ('2023-02-01', 55, 1050000, 210000000),
    ('2023-03-01', 60, 1100000, 220000000);

   
LOAD DATA INFILE "C:\Users\Syed Fiza\Downloads\youtube_metrics.csv"
INTO TABLE youtube_metrics
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

/* Move the File to the Allowed Directory
If a directory is specified in secure_file_priv:

Move your CSV file (youtube_metrics.csv) to that directory.
Example: C:\ProgramData\MySQL\
Update the LOAD DATA INFILE command to use the new path */

SHOW VARIABLES LIKE 'secure_file_priv';

-- replacing duplicates
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/youtube_metrics.csv'
REPLACE INTO TABLE youtube_metrics
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

/* If you're facing difficulties with the LOAD DATA INFILE method due to permissions or configuration issues, 
you can try loading your CSV file into MySQL using MySQL Workbench's import tool instead. */