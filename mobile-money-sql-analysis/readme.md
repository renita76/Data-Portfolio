# 📱 Mobile Money Usage in Ghana — SQL Analysis

## 📌 Project Overview
This project analyzes **mobile money and digital financial behavior in Ghana** using publicly available data from the **World Bank Global Findex Database**.  
The dataset originally downloaded in **wide format** (years as columns) was transformed into a cleaner **long format** for better SQL analysis.

The analysis explores:
- Trends in mobile money usage  
- Digital payment adoption  
- Mobile phone payment behavior  
- Changes across the years 2011–2021  

This project demonstrates SQL cleaning, transformation, and exploratory analysis skills using a real Ghana-focused dataset.

---
## 🛠️ Tools Used
- **DBeaver** – SQL environment for importing, cleaning, and reshaping data  
- **SQLite** – database used for executing queries  
- **Git & GitHub** – version control and project hosting  
- **Excel** – quick data inspection  


---

# 📂 Dataset Description

### **Source**
World Bank Global Findex Database  
(Downloaded as two CSV files: `...data.csv` and `...series-metadata.csv`)

### **Raw Format (Wide)**
The original dataset included:
- `country_name`
- `country_code`
- `series_name`
- `series_code`
- `2011`, `2014`, `2017`, `2021` (as NVARCHAR)

This format is not SQL-friendly for time-series analysis.

### **Final Format (Long)**
A long-format table was created:

| country | indicator_code | indicator_name | year | value |
|--------|----------------|----------------|------|--------|
| Ghana  | FP.MOBILE.XYZ  | Used mobile money (%) | 2011 | 34.2 |

This format supports grouping, filtering, and time-series queries.

📁 *Final cleaned dataset:*  
`/datasets/mobile_money_long.csv`

---

# 🧹 Data Cleaning & Transformation Steps

### **1. Import CSV into DBeaver (SQLite database)**
- Loaded the raw `data.csv` file  
- Created table: `mobile_money_raw`

### **2. Cleaned column names**
```sql
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

