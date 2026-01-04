# 🇬🇭 Ghana Infrastructure & Road Safety Analysis
## SQL Project

## 📌 Project Overview

This project analyzes **road safety and transportation data in Ghana** using a structured SQL workflow. The goal is to identify trends and risk patterns that can support **infrastructure planning, transportation safety initiatives, and public-sector decision-making**.

The analysis explores:
- Road accident frequency
- Regional differences
- Accident severity patterns
- Contributing factors (weather, vehicle type, time of day)
- Year-over-year trends

---

## 💡 Why This Matters

Road traffic accidents present serious public health and economic challenges. Understanding when, where, and how accidents occur enables **policymakers, planners, and safety organizations** to prioritize interventions, allocate resources effectively, and design data-informed safety strategies.

---

## 🛠️ Tools Used

- SQL (MySQL / PostgreSQL / DBeaver)
- Excel (initial data inspection)
- Git & GitHub
- Markdown for documentation

---

## 📂 Dataset

**Source:**  
Africa Open Data Initiative or World Bank Open Data

**Typical fields include:**
- `date`
- `region`
- `vehicle_type`
- `casualties`
- `weather_condition`
- `road_type`
- `severity_level`
- `time_of_day`

📁 Dataset location:  
`/dataset/ghana_road_accidents.csv`

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

## 🔎 SQL Skills Demonstrated

- Data cleaning (null handling, category standardization)
- Aggregation and grouping
- Filtering using `WHERE`, `LIKE`, and `BETWEEN`
- Time-series analysis using `YEAR` and `MONTH`
- View creation for downstream analysis

---

## 📜 Example SQL Queries

### Accidents by Region
```sql
SELECT region, COUNT(*) AS accident_count
FROM ghana_accidents
GROUP BY region
ORDER BY accident_count DESC;

Year-over-Year Accident Trends

SELECT YEAR(date) AS year,
       COUNT(*) AS total_accidents
FROM ghana_accidents
GROUP BY YEAR(date)
ORDER BY year;

Severity Breakdown

SELECT severity, COUNT(*) AS cases
FROM ghana_accidents
GROUP BY severity
ORDER BY cases DESC;


⸻

📈 Key Insights
	•	Urban regions experience significantly higher accident volumes
	•	Motorcycle involvement has increased over time
	•	Most accidents occur during dry conditions
	•	Severity increases during evening and early-morning hours

⸻

🧠 Potential Use Cases
	•	Infrastructure investment prioritization
	•	Road safety campaign planning
	•	Transportation policy analysis
	•	Public-sector reporting and dashboards

⸻

🧩 Future Enhancements
	•	Add a Tableau dashboard
	•	Integrate population data for per-capita analysis
	•	Explore predictive modeling for accident severity
