# Mobile Money Usage in Ghana — SQL Analysis

## 📌 Project Overview
This project analyzes mobile money usage trends in Ghana using publicly available FinTech datasets (from the World Bank Global Findex and GSMA Mobile Money reports).

The goal is to understand:
- Mobile money adoption levels  
- Transaction frequency  
- Demographic differences  
- Growth trends over time  

## 🛠️ Tools Used
- SQL (MySQL/PostgreSQL)
- Git/GitHub
- Excel (for previewing dataset)

---

# 📂 Dataset Description
The dataset includes:
- Country
- Year
- Gender
- Account ownership
- Mobile money account usage
- Payment frequency
- Savings & credit via mobile money

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

### 1. Mobile money adoption by year
```sql
SELECT year, 
       AVG(mobile_money_account) AS avg_mobile_money_usage
FROM mobile_money
WHERE country = 'Ghana'
GROUP BY year
ORDER BY year;

### 2. Usage differences by gender
```sql
SELECT gender,
       AVG(made_mobile_payment) AS usage_rate
FROM mobile_money
WHERE country = 'Ghana'
GROUP BY gender;

### 3. Mobile savings patterns
SELECT year,
       SUM(saved_with_mobile_money) AS total_mobile_savers
FROM mobile_money
WHERE country = 'Ghana'
GROUP BY year;

