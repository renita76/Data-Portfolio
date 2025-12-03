# 🇬🇭 Ghana Infrastructure Analysis — SQL Project  
### 📊 Road Safety & Transportation Insights

## 📌 Project Overview
This project analyzes transportation and road safety data in Ghana using a structured SQL workflow.  
The goal is to uncover trends that can support public-sector decision-making, including:

- Road accident frequency  
- Regional differences  
- Accident severity patterns  
- Contributing factors (weather, vehicle type, time of day)  
- Year-over-year changes  

This project demonstrates practical data analytics skills applied to Ghana’s infrastructure challenges.

---

## 🛠️ Tools Used
- SQL (MySQL / PostgreSQL / DBeaver)
- Excel (initial review)
- Git & GitHub
- Markdown for documentation

---

## 📂 Dataset
**Source:** Africa Open Data Initiative OR World Bank Open Data (depending on your final choice)

Typical columns include:
- Date  
- Region  
- Vehicle type  
- Casualties  
- Weather condition  
- Road type  
- Severity level  
- Time of day  

➡️ **Dataset located in:**  
`/dataset/ghana_road_accidents.csv`

---

## 🔎 SQL Skills Demonstrated
- Data cleaning (removing null values, standardizing categories)
- Aggregation & grouping
- Joins (if multiple tables used)
- Trend analysis (YEAR, MONTH functions)
- Creating views for dashboards
- Filtering with WHERE, LIKE, BETWEEN

---

## 📜 Example SQL Queries

### 1. Accidents by Region
```sql
SELECT region, COUNT(*) AS accident_count
FROM ghana_accidents
GROUP BY region
ORDER BY accident_count DESC;
```

### 2. Year-over-Year Accident Trends
```sql
SELECT YEAR(date) AS year,
       COUNT(*) AS total_accidents
FROM ghana_accidents
GROUP BY YEAR(date)
ORDER BY year;
```

### 3. Severity Breakdown
```sql
SELECT severity, COUNT(*) AS cases
FROM ghana_accidents
GROUP BY severity
ORDER BY cases DESC;
```

---

## 📈 Key Insights (Example)
- Urban regions show significantly higher accident volumes  
- Motorcycles account for a rising share of accident involvement  
- Dry weather accidents dominate — challenging the assumption that rain is the primary cause  
- Severity spikes during evening and early morning hours  

---

## 🧩 Project Folder Structure
```
ghana-infrastructure-analysis/
│── README.md
│── dataset/
│── sql/
│── analysis/
```

---

## 🧠 Future Improvements
- Add Tableau dashboard  
- Integrate population data for per-capita analysis  
- Build a machine learning severity prediction model  

