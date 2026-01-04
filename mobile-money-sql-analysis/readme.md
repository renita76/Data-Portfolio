📱 Mobile Money Usage in Ghana — SQL Analysis

📌 Project Overview

This project analyzes mobile money and digital financial behavior in Ghana using publicly available data from the World Bank Global Findex Database. The dataset was originally downloaded in wide format (years as columns) and transformed into a long format to support effective SQL-based time-series analysis.

The analysis explores:
	•	Trends in mobile money usage
	•	Digital payment adoption
	•	Mobile phone–based payment behavior
	•	Changes across the years 2011–2021

⸻

💡 Why This Matters

Mobile money plays a critical role in financial inclusion across emerging markets. Understanding how adoption and usage patterns change over time helps FinTech providers, policymakers, and financial institutions evaluate the effectiveness of digital financial infrastructure, identify gaps in access, and inform future investment and policy decisions.

⸻

🛠️ Tools Used
	•	DBeaver — SQL environment for importing, cleaning, and reshaping data
	•	SQLite — database used for executing queries
	•	Git & GitHub — version control and project hosting
	•	Excel — preliminary data inspection

⸻

📂 Dataset Description

Source:
World Bank Global Findex Database

The dataset was downloaded as two CSV files:
	•	...data.csv
	•	...series-metadata.csv

Raw Format (Wide)
The original dataset included:
	•	country_name
	•	country_code
	•	series_name
	•	series_code
	•	2011, 2014, 2017, 2021 (stored as NVARCHAR)

This format is not well-suited for time-series analysis in SQL.

Final Format (Long)
The data was reshaped into a long-format table with the following structure:
	•	country
	•	indicator_code
	•	indicator_name
	•	year
	•	value

Example:

country	indicator_code	indicator_name	year	value
Ghana	FP.MOBILE.XYZ	Used mobile money (%)	2011	34.2

This structure supports efficient filtering, grouping, and trend analysis.

📁 Final cleaned dataset:
/datasets/mobile_money_long.csv

⸻

🧹 Data Cleaning & Transformation
	1.	Imported raw CSV files into SQLite using DBeaver
	2.	Cleaned and standardized column names
	3.	Reshaped the dataset from wide to long format
	4.	Validated year and value fields for analysis

Example transformation:

CREATE TABLE mobile_money_clean AS
SELECT 
    country_name AS country,
    country_code,
    series_name AS indicator_name,
    series_code AS indicator_code,
    "2011" AS y2011,
    "2014" AS y2014,
    "2017" AS y2017,
    "2021" AS y2021
FROM mobile_money_raw;


⸻

🔎 SQL Skills Demonstrated
	•	Data cleaning
	•	Filtering
	•	Aggregations (SUM, AVG, COUNT)
	•	JOIN operations
	•	Time-series grouping by year

⸻

📜 Example SQL Queries

1. Mobile money usage trends in Ghana

SELECT year, value, indicator_name
FROM mobile_money_long
WHERE TRIM(country) = 'Ghana'
  AND LOWER(indicator_name) LIKE '%mobile%'
ORDER BY indicator_name, year;

2. Mobile phone payment behavior

SELECT year, value, indicator_name
FROM mobile_money_long
WHERE TRIM(country) = 'Ghana'
  AND LOWER(indicator_name) LIKE '%phone%'
ORDER BY year;

3. Digital transaction adoption

SELECT year, value, indicator_name
FROM mobile_money_long
WHERE TRIM(country) = 'Ghana'
  AND LOWER(indicator_name) LIKE '%digital%'
ORDER BY indicator_name, year;

4. Digital merchant payment growth

SELECT year, value
FROM mobile_money_long
WHERE TRIM(country) = 'Ghana'
  AND LOWER(indicator_name) LIKE '%merchant%'
ORDER BY year;


⸻

📈 Key Insights
	•	Mobile money usage in Ghana has increased significantly since 2011, with notable acceleration after 2017
	•	Digital payments and merchant payments show steady growth over time
	•	Gender gaps in mobile money usage have narrowed as adoption has increased
	•	Borrowing via mobile money providers remains limited but shows gradual growth

⸻

🧠 Potential Use Cases
	•	Evaluating digital financial inclusion initiatives
	•	Supporting FinTech market entry analysis
	•	Informing policy discussions around cashless payments
	•	Benchmarking Ghana’s mobile money adoption against other emerging markets

⸻

🧩 Future Enhancements
	•	Add a Tableau dashboard for deeper interactive exploration
	•	Expand analysis to include comparisons with other countries
	•	Integrate demographic or income-level data for segmented insights

⸻
