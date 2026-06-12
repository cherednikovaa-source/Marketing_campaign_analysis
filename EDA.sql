SELECT *
FROM marketings_data 
LIMIT 10;

-- Total number of raws
SELECT COUNT (*)
FROM marketings_data;

-- Number of unique companies
SELECT DISTINCT company
FROM marketings_data;

-- Unique channels
SELECT DISTINCT channel
FROM marketings_data;

-- Unique segments
SELECT DISTINCT customer_segment
FROM marketings_data;

-- Date range
SELECT 
	MIN (date),
	MAX (date),
	MAX(date) - MIN(date) AS period_days
FROM marketings_data;

-- Data distribution over time
SELECT DATE_TRUNC('month', date) AS month,
    COUNT(*) AS campaigns
FROM marketings_data
GROUP BY month
ORDER BY month;