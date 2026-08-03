# Customer Churn Analysis

Customer churn analysis project built using SQL, Excel and Power BI to identify customer retention patterns, churn drivers and high-risk customer segments. The project combines data cleaning, SQL analysis and interactive dashboards to generate business insights that support customer retention strategies.

---

## Project Overview

This project analyses the IBM Telco Customer Churn dataset to answer key business questions, including:

- What is the overall customer churn rate?
- Which contract types have the highest churn?
- Which internet services experience the most churn?
- Which payment methods are associated with higher customer loss?
- How does customer tenure influence churn?

The analysis was completed using SQL, Excel and Power BI.

---

## Tools Used

- SQL
- Excel
- Power BI

---

## Dataset

IBM Telco Customer Churn Dataset

Total Customers: **7,043**

---

## Business Questions Answered

- Overall customer churn rate
- Churn by contract type
- Churn by internet service
- Churn by payment method
- Churn by customer tenure
- Identification of high-risk customer segments

---

## Key Insights

- Overall customer churn rate is **26.54%**.
- Customers with **Month-to-month contracts** have the highest churn rate (**42.71%**).
- **Fiber optic** customers experience the highest churn rate (**41.89%**).
- Customers paying through **Electronic check** show the highest churn rate (**45.29%**).
- Most customer churn occurs within the **first 12 months** of service.

---

## Repository Structure

```
customer-churn-analysis/
│
├── data/
│   ├── raw/
│   │   └── WA_Fn-UseC_-Telco-Customer-Churn.csv
│   └── cleaned/
│       └── Telco-Customer-Churn-Cleaned.csv
│
├── excel/
│   └── customer_churn_dashboard.xlsx
│
├── powerbi/
│   └── customer_churn_dashboard.pbix
│
├── sql/
│   └── customer_churn_analysis.sql
│
├── screenshots/
│   ├── excel_dashboard.png
│   ├── excel_dashboard_contract_filter.png
│   ├── excel_dashboard_internet_filter.png
│   ├── powerbi_dashboard.jpeg
│   ├── powerbi_dashboard_contract_filter.jpeg
│   ├── powerbi_dashboard_fiber_optic_filter.jpeg
│   ├── sql_contract_churn_analysis.png
│   └── sql_high_risk_customers.png
│
├── LICENSE
└── README.md
```

---

## Excel Dashboard

The Excel dashboard provides interactive analysis using Pivot Tables, Pivot Charts and Slicers.

Features include:

- Overall churn summary
- Contract-wise churn analysis
- Internet service churn analysis
- Payment method analysis
- Tenure group analysis
- Interactive Contract and Internet Service filters

### Dashboard

![Excel Dashboard](screenshots/excel_dashboard.png)

### Contract Filter

![Excel Contract Filter](screenshots/excel_dashboard_contract_filter.png)

### Internet Service Filter

![Excel Internet Filter](screenshots/excel_dashboard_internet_filter.png)

---

## Power BI Dashboard

The Power BI dashboard provides an interactive view of customer churn patterns.

Visuals include:

- KPI Cards
- Churn by Contract
- Churn by Internet Service
- Churn by Payment Method
- Churn by Tenure
- Interactive slicers for Contract and Internet Service

### Dashboard

![Power BI Dashboard](screenshots/powerbi_dashboard.jpeg)

### Contract Filter

![Power BI Contract Filter](screenshots/powerbi_dashboard_contract_filter.jpeg)

### Fiber Optic Filter

![Power BI Fiber Optic Filter](screenshots/powerbi_dashboard_fiber_optic_filter.jpeg)

---

## SQL Analysis

Example SQL analyses performed include:

- Customer churn rate by contract type
- High-risk customer identification
- Customer segmentation
- Business performance analysis

### Contract Churn Analysis

![SQL Contract Analysis](screenshots/sql_contract_churn_analysis.png)

### High-Risk Customers

![SQL High Risk Customers](screenshots/sql_high_risk_customers.png)

---

## Business Recommendations

- Encourage customers to move from Month-to-month to long-term contracts.
- Improve customer experience for Fiber optic users.
- Investigate customer dissatisfaction associated with Electronic check payments.
- Focus retention campaigns on customers within their first year of service.
- Prioritise proactive engagement for customers identified as high-risk.

---

## Author

**Sharmistha Barua**

GitHub: https://github.com/iam-sharmistha

LinkedIn: https://www.linkedin.com/in/iamsharmistha
