# 📊 Mobile Money Usage in Ghana — Tableau Dashboard

## 📌 Project Overview

This project presents an **interactive Tableau dashboard** visualizing **mobile money and digital financial behavior in Ghana** using data derived from the **World Bank Global Findex Database**.

The dashboard translates previously cleaned and aggregated data into clear visual insights, allowing users to explore trends in **mobile money adoption, digital payments, and financial behavior** over time. The analysis focuses on the years **2011–2021** and is designed to support **high-level decision-making and trend evaluation**.

---

## 💡 Why This Matters

Mobile money is a foundational component of **financial inclusion** in Ghana and across many emerging markets. Visualizing adoption and usage patterns helps **FinTech companies, policymakers, and financial institutions** assess progress, identify underserved groups, and understand how digital financial behavior evolves over time.

Clear, interactive dashboards enable non-technical stakeholders to engage with data and make informed decisions without needing to run queries or interpret raw datasets.

---

## 👥 Intended Audience

This dashboard is designed for:
- Data analysts and business analysts  
- FinTech and digital payments teams  
- Policymakers and development organizations  
- Product and strategy stakeholders seeking high-level trend insights  

---

## 🛠️ Tools Used

- **Tableau Public Desktop** — dashboard design and visualization  
- **SQL (SQLite via DBeaver)** — data cleaning, transformation, and aggregation  
- **Excel** — preliminary data inspection  
- **Git & GitHub** — version control and portfolio hosting  

---

## 📂 Dataset

**Source:**  
World Bank Global Findex Database  

**Final cleaned dataset:**  
`/dataset/mobile_money_long.csv`

**Key fields include:**
- `country`
- `year`
- `indicator_name`
- `indicator_code`
- `value`

The dashboard visualizes **Ghana-specific indicators only**, focusing on mobile money usage, digital payments, mobile phone payments, and merchant transactions.

---

## 📈 Dashboard Features

### Interactive Filters
- Indicator selection to explore different financial behaviors  
- Year filter for temporal trend analysis  

### Visualizations
- Mobile money account ownership trends (multi-line time series)  
- Digital payment adoption over time  
- Merchant and mobile phone payment trends  
- KPI summary views (where applicable)  

All visuals are built using **tiled containers** to maintain a clean and structured layout.

---

## 📊 Example KPIs

- % of adults with a mobile money account  
- % of adults using digital payments  
- Change in mobile money adoption from **2011 → 2021**  
- Gender-based differences in mobile money usage  

---

## 🔍 Key Insights

- Mobile money adoption in Ghana has increased steadily since 2011, with a significant acceleration after 2017  
- Digital and merchant payments show consistent growth, reflecting expanding cashless transaction behavior  
- Gender gaps in mobile money usage have narrowed over time  
- Borrowing via mobile money providers remains limited but is gradually increasing  

---

## 🌐 Interactive Dashboard

**View on Tableau Public:** [Mobile Money Dashboard — Ghana](https://public.tableau.com/views/GhanaMobileMoneyDashboard/GhanaMobileMoneyDashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  

---

## 📈 Dashboard Screenshot

![Mobile Money Dashboard](https://github.com/renita76/Data-Portfolio/blob/b3442335279481a08ffe9102426eda637547a967/tableau-mobile-money/images/Ghana%20Mobile%20Money%20Dashboard.png)


## 🧠 Potential Use Cases

- Monitoring financial inclusion progress  
- Supporting FinTech market analysis and expansion planning  
- Informing policy and development initiatives  
- Communicating complex trends to non-technical stakeholders  

---

## 🧩 Future Enhancements

- Add additional KPIs for regional or demographic comparison  
- Integrate comparisons with other countries in the region  
- Expand annotations to highlight policy or market milestones  
