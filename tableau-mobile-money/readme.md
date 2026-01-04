# 📊 Mobile Money Usage in Ghana — Tableau Dashboard  
### Interactive Visualization Project

---

## 📌 Project Overview
This Tableau dashboard visualizes **mobile money and digital financial behavior in Ghana** using data derived from the World Bank Global Findex dataset.  

The dashboard highlights:  
- Mobile money account ownership trends over 2011–2021  
- Digital payment adoption  
- Savings and credit behavior via mobile money  
- Gender differences in mobile money usage  
- Key insights and trends over time  

> This project builds on prior SQL analysis where the data was cleaned, reshaped into long format, and aggregated for visualization.

---

## 🛠️ Tools Used
- **Tableau Public Desktop** — dashboard creation  
- **SQL (DBeaver)** — data cleaning, transformation, and aggregation  
- **Excel** — preliminary data inspection and reshaping  
- **Git & GitHub** — version control and portfolio hosting  

---

## 📂 Dataset
- **Source:** World Bank Global Findex Database  
- **Final cleaned dataset:** `/dataset/mobile_money_long.csv`  

Columns include:  
- `country`  
- `year`  
- `indicator_name`  
- `indicator_code`  
- `value`  

> Only Ghana is visualized in this dashboard. Indicators include mobile money usage, digital payments, mobile phone payments, and merchant payments.

---

## 📈 Dashboard Screenshot

![Mobile Money Dashboard](https://github.com/renita76/Data-Portfolio/blob/b3442335279481a08ffe9102426eda637547a967/tableau-mobile-money/images/Ghana%20Mobile%20Money%20Dashboard.png)

---

## 🌐 Interactive Dashboard

**View on Tableau Public:** [Mobile Money Dashboard — Ghana](https://public.tableau.com/views/GhanaMobileMoneyDashboard/GhanaMobileMoneyDashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  

> Replace the link above with your actual Tableau Public URL.

---

## 🔍 Dashboard Features

- **Interactive filters:**  
  - Filter by **indicator_name** to explore different behaviors (e.g., mobile money account ownership, digital payments, borrowed from mobile money providers)  
  - Year filter: trends over 2011–2021  
- **Charts:**  
  1. **Mobile Money Usage Trends** — multi-line chart showing adoption for multiple indicators  
  2. **Digital Transaction Adoption** — multi-line chart for digital payments trends  
  3. **Merchant Payments** — trend lines showing adoption of mobile/phone merchant payments  
- **KPI summary cards** (optional)  
- Clean layout with vertical and horizontal containers for proper chart alignment  

> All charts are **tiled in containers** for neat layout. Any floating objects were removed to avoid layout messages in Tableau.

---

## 📊 Example KPIs

- % of adults with a mobile money account  
- % of women using digital payments  
- Change in mobile money adoption from 2011 → 2021  
- Savings and credit behavior via mobile money  

---

## 🧠 Insights

- Mobile money usage in Ghana has grown significantly since 2011, with a noticeable jump after 2017.  
- Gender gaps in usage are narrowing; both men and women are increasingly using mobile money.  
- Digital payments and merchant payments have increased steadily, reflecting telco-driven adoption and financial inclusion reforms.  
- Borrowing via mobile money providers is a small but growing behavior captured in the dataset.  

---
## 🧩 Folder Structure

tableau-mobile-money/
│── README.md
│── datasets/
│ └── mobile_money_long.csv
│── images/
│ ├── ghana_mobile_money_dashboard.png
│ ├── chart1_mobile_trends.png
│ ├── chart2_digital_transactions.png
│ └── chart3_merchant_payments.png
│── workbook/
│ └── mobile_money_dashboard.twbx



---

## ✅ How to Use
1. Explore the **interactive Tableau Public link** for full functionality  
2. Use filters to focus on specific years or indicators  
3. Download the workbook from the `/workbook` folder to explore in Tableau Desktop or Tableau Reader
