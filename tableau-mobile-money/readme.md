# 📊 Mobile Money Usage in Ghana — Tableau Dashboard  
### Interactive Visualization Project

---

## 📌 Project Overview
This Tableau dashboard visualizes **mobile money and digital financial behavior in Ghana** using data derived from the World Bank Global Findex dataset.  

The dashboard builds directly on a **SQL-based analysis** that cleaned and transformed the raw data into a long format for trend and time-series analysis.  

The dashboard highlights:
- Mobile money usage trends over 2011–2021  
- Digital payment adoption  
- Merchant payments and mobile phone payment behavior  
- Gender and demographic differences (if applicable)  
- Key insights on savings and credit via mobile money

---

## 🛠️ Tools Used
- **Tableau Public** — for interactive dashboard creation  
- **SQL (DBeaver + SQLite)** — for data cleaning and transformation  
- **Excel** — for initial inspection and formatting  
- **GitHub** — version control and portfolio hosting

---

## 📂 Dataset
The dataset originates from the **World Bank Global Findex Database**.  

**Key columns in the cleaned long-format dataset:**
- `country`  
- `year`  
- `indicator_name` (e.g., mobile money usage, digital payments, merchant payments)  
- `value`  

➡️ **Dataset stored in:**  
`/datasets/mobile_money_long.csv`

**Note:** Raw data was transformed from wide to long format for easier time-series analysis.

---

## 📈 Dashboard Link
👉 **Interactive Tableau Public Dashboard:**  
[View Dashboard on Tableau Public](https://public.tableau.com/views/GhanaMobileMoneyDashboard/GhanaMobileMoneyDashboard?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  

**Static Dashboard Screenshot:**  
![Dashboard Overview](images/dashboard.png)

---

## 🔍 Dashboard Structure & Features

The dashboard includes **three main charts**:

1. **Mobile Money Usage Trends**  
   - Multi-line chart showing all mobile-money-related indicators over 2011–2021  
   - Filters applied: `country = Ghana`, relevant mobile money indicators  

2. **Digital Transactions Adoption**  
   - Multi-line chart showing adoption of digital payment methods  
   - Filters applied: `country = Ghana`, indicators containing "digital"  

3. **Digital Merchant Payments Growth**  
   - Multi-line chart showing growth of merchant payments over time  
   - Filters applied: `country = Ghana`, indicators containing "merchant"  

**Dashboard Features:**
- Year filter for time range selection  
- Indicator filter to toggle specific trends  
- Tooltips showing indicator values and year for context  
- Color-coded lines for each indicator to differentiate trends  
- Clean, professional layout with all charts aligned using containers

---

## 📊 Key Metrics & Insights
- % of adults with a mobile money account  
- Mobile phone or card usage for payments  
- Growth of digital transactions over 2011–2021  
- Merchant payment adoption trends  

**Insights:**  
- Mobile money adoption in Ghana has grown steadily since 2011  
- Digital payments and merchant payments show sharp increases in recent years  
- Overlapping indicators (e.g., mobile + phone payments) are captured in trends to reflect real adoption behavior  

---

## 🧩 Folder Structure

tableau-mobile-money/
│── README.md
│── datasets/
│ └── mobile_money_long.csv
│── images/
│ ├── dashboard.png
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
