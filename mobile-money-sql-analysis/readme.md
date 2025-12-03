# Mobile Money Usage in Ghana — SQL Analysis

## 📌 Project Overview
This project analyzes mobile money usage trends in Ghana using publicly available FinTech datasets (from the World Bank Global Findex and GSMA Mobile Money reports).

The goal is to understand:
- Mobile money adoption levels  
- Transaction frequency  
- Demographic differences  
- Growth trends over time  

## 🛠️ Tools Used
- **DBeaver** – SQL environment for importing, cleaning, and reshaping data  
- **SQLite** – database used for executing queries  
- **Git & GitHub** – version control and project hosting  
- **Excel** – quick data inspection  


---

# 📂 Dataset Description
The long-format dataset includes:

- `country` → Country name (e.g., Ghana)
- `year` → 2011, 2014, 2017, 2021
- `value` → Numeric value for the indicator
- `indicator_code` → Series code (e.g., FP.CPI.MM.ZS)
- `indicator_name` → Indicator description (e.g., Adults with a mobile money account (% age 15+))

This long-format dataset simplifies analysis, aggregation, and visualization.


*(You will upload the CSV file here after downloading it.)*

---

# 🔎 SQL Skills Demonstrated
- Data cleaning  
- Filtering  
- Aggregations (SUM, AVG, COUNT)  
- JOIN operations  
- Time-series grouping by Year

---

# 📜 Example SQL Queries

### 1. Mobile money usage trends in Ghana
```sql
SELECT year, value, indicator_name
FROM mobile_money_long
WHERE TRIM(country) = 'Ghana'
  AND LOWER(indicator_name) LIKE '%mobile%'
ORDER BY indicator_name, year;


### 2. Mobile phone payment behavior
```sql
SELECT year, value, indicator_name
FROM mobile_money_long
WHERE TRIM(country) = 'Ghana'
  AND LOWER(indicator_name) LIKE '%phone%'
ORDER BY year;


### 3. Digital transaction adoption
SELECT year, value, indicator_name
FROM mobile_money_long
WHERE TRIM(country) = 'Ghana'
  AND LOWER(indicator_name) LIKE '%digital%'
ORDER BY indicator_name, year;


### 4. Digital merchant payment growth
```sql
SELECT year, value
FROM mobile_money_long
WHERE TRIM(country) = 'Ghana'
  AND LOWER(indicator_name) LIKE '%merchant%'
ORDER BY year;

