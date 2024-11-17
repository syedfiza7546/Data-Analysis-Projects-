-- Find monthly growth in subscribers and views using a window function:
SELECT 
    date, 
    video_count, 
    subscriber_count - LAG(subscriber_count) OVER (ORDER BY date) AS monthly_subscriber_growth,
    total_views - LAG(total_views) OVER (ORDER BY date) AS monthly_view_growth
FROM youtube_metrics;

-- Calculate total income and percentage contribution for each stream:
SELECT 
    month,
    adsense_income + sponsorship_income + affiliate_income + courses_income AS total_income,
    (adsense_income / (adsense_income + sponsorship_income + affiliate_income + courses_income)) * 100 AS adsense_percentage,
    (sponsorship_income / (adsense_income + sponsorship_income + affiliate_income + courses_income)) * 100 AS sponsorship_percentage
FROM income_streams;

-- Find the top 5 performing videos by views:
SELECT 
    title, 
    views, 
    likes, 
    (likes * 1000.0) / views AS likes_per_1000_views
FROM video_performance
ORDER BY views DESC
LIMIT 5;

-- Compare monthly expenses with income:
SELECT 
    e.month, 
    (e.equipment_cost + e.team_salary + e.ads_budget) AS total_expenses,
    (i.adsense_income + i.sponsorship_income + i.affiliate_income + i.courses_income) AS total_income,
    ((e.equipment_cost + e.team_salary + e.ads_budget) / (i.adsense_income + i.sponsorship_income + i.affiliate_income + i.courses_income)) * 100 AS expense_ratio
FROM expenses e
JOIN income_streams i ON e.month = i.month
WHERE (e.equipment_cost + e.team_salary + e.ads_budget) > 
      0.5 * (i.adsense_income + i.sponsorship_income + i.affiliate_income + i.courses_income);

-- Analyze if uploading more videos increases growth:
SELECT 
    video_count, 
    AVG(subscriber_count - LAG(subscriber_count) OVER (ORDER BY date)) AS avg_subscriber_growth
FROM youtube_metrics
GROUP BY video_count;

-- Export Query Results as CSV from SQL
SELECT date, subscriber_count, total_views FROM youtube_metrics;

/* Export to CSV:
After running the query, right-click on the result table.
Select "Export Resultset to File" and choose CSV.
Save the file with an appropriate name (e.g., youtube_growth.csv). */

