
---

# 📄 **queries.sql **

```sql
-------------------------------------------------------
-- 1. CLEAN COLUMN NAMES
-------------------------------------------------------
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

-------------------------------------------------------
-- 2. CREATE LONG FORMAT TABLE
-------------------------------------------------------
CREATE TABLE mobile_money_long AS
SELECT country, indicator_code, indicator_name, '2011' AS year, CAST(y2011 AS REAL) AS value
FROM mobile_money_clean WHERE y2011 IS NOT NULL

UNION ALL
SELECT country, indicator_code, indicator_name, '2014' AS year, CAST(y2014 AS REAL)
FROM mobile_money_clean WHERE y2014 IS NOT NULL

UNION ALL
SELECT country, indicator_code, indicator_name, '2017' AS year, CAST(y2017 AS REAL)
FROM mobile_money_clean WHERE y2017 IS NOT NULL

UNION ALL
SELECT country, indicator_code, indicator_name, '2021' AS year, CAST(y2021 AS REAL)
FROM mobile_money_clean WHERE y2021 IS NOT NULL;

-------------------------------------------------------
-- 3. ANALYSIS QUERIES
-------------------------------------------------------

-- Mobile money related indicators
SELECT year, value, indicator_name
FROM mobile_money_long
WHERE TRIM(country) = 'Ghana'
  AND LOWER(indicator_name) LIKE '%mobile%'
ORDER BY indicator_name, year;

-- Digital payment indicators
SELECT year, value, indicator_name
FROM mobile_money_long
WHERE TRIM(country) = 'Ghana'
  AND LOWER(indicator_name) LIKE '%digital%'
ORDER BY indicator_name, year;

-- Mobile phone payment usage
SELECT year, value, indicator_name
FROM mobile_money_long
WHERE TRIM(country) = 'Ghana'
  AND LOWER(indicator_name) LIKE '%phone%'
ORDER BY year;

-- Merchant transaction indicators
SELECT year, value
FROM mobile_money_long
WHERE TRIM(country) = 'Ghana'
  AND LOWER(indicator_name) LIKE '%merchant%'
ORDER BY year;
