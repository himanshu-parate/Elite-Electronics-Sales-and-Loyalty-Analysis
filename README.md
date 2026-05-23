<div align="center">

# 📊  Elist Electronics Sales & Business Analytics Project

### 📊 End-to-End Data Analysis using SQL | Python | Power BI

<img src="https://img.shields.io/badge/SQL-MySQL-blue?style=for-the-badge&logo=mysql">
<img src="https://img.shields.io/badge/Python-Data%20Analysis-yellow?style=for-the-badge&logo=python">
<img src="https://img.shields.io/badge/PowerBI-Dashboard-orange?style=for-the-badge&logo=powerbi">
<img src="https://img.shields.io/badge/Status-Completed-success?style=for-the-badge">

</div>

---

# Project Background

Elist Electronics, established in 2018, is a global e-commerce company that sells popular electronic products worldwide via its website and mobile app.

The company has significant amounts of data on its sales, marketing efforts, operational efficiency, product offerings, and loyalty program that has been previously underutilized. This project thoroughly analyzes and synthesizes this data in order to uncover critical insights that will improve Elist’s commercial success.

Insights and recommendations are provided on the following key areas:

- **Sales Trends Analysis**: Evaluation of historical sales patterns, both globally and by region, focusing on Revenue, Order Volume, and Average Order Value (AOV).
- **Product Level Performance**: An analysis of Elist’s various product lines, understanding their impact on sales and returns.
- **Loyalty Program Success**: An assessment of the loyalty program on customer retention and sales.
- **Regional Comparisons**: An evaluation of sales and orders by region.

The cleaned dataset, along with all transformation and cleaning steps performed in Excel, can be found [here](https://github.com/Rohan-Morajkar/Elite-Electronics-Analysis/blob/main/Celan%20dataset.xlsx).

An interactive PowerBI dashboard can be downloaded [here](https://github.com/himanshu-parate/Elite-Electronics-Sales-and-Loyalty-Analysis/blob/main/Elist%20Electronics%20Dashboard.pbix).

Targeted SQL queries regarding various business questions can be found [here](https://github.com/himanshu-parate/Elite-Electronics-Sales-and-Loyalty-Analysis/blob/main/Business%20Questions%20answered.sql).

# Data Structure & Initial Checks

Elist’s database structure as seen below consists of four tables: orders, customers, geo_lookup, and order_status, with a total row count of 108,127 records.

![Data structure](https://github.com/user-attachments/assets/5388ede8-c832-48f6-9137-306417caa099)

# Executive Summary

### Overview of Findings

After peaking in late 2020, the company’s sales have continued to decline, with significant drops in 2022. Key performance indicators have all shown year-over-year decreases: order volume by 36%, revenue by 42%, and average order value (AOV) by 9%. While this decline can be broadly attributed to a return to pre-pandemic normalcy, the following sections will explore additional contributing factors and highlight key opportunity areas for improvement.

Below is the overview page from the PowerBI dashboard and more examples are included throughout the report. The entire interactive dashboard can be downloaded [here](https://github.com/Rohan-Morajkar/Elite-Electronics-Analysis/blob/main/Elist%20Electronics%20Dashboard.pbix).

![Screenshot 2025-06-11 124915](https://github.com/user-attachments/assets/01f14c5a-6c59-4f89-9db1-718efff6c936)


 ### Sales Trends:

- **The company’s sales peaked in May 2020 with 2,727 orders totaling $7,97,247 monthly revenue.**  
  This corresponds with the boom in economy-wide spending due to pandemic-induced changing consumer behavior.

- Beginning in March 2021, **revenue declined on a year-over-year basis for 22 consecutive months.**  
  Revenue hit a company lifetime low in December 2022, with the company earning just over $180K.

- Across the full period, **members contributed $12.5M out of the total $20.3M revenue (~62%)**, highlighting their critical importance to the company’s revenue stream.

- In **2019**, members accounted for **93% of revenue** ($2.5M of $2.7M), but this dominance declined consistently over the years:
  - **2020**: 72% from members ($5.2M of $7.2M)
  - **2021**: 47% from members ($3.1M of $6.6M)
  - **2022**: 42% from members ($1.6M of $3.8M)

- This trend reflects a **declining reliance on loyal members** or possibly a **drop in engagement and retention**. It raises a need to **re-evaluate loyalty strategies**, improve retention campaigns, and strengthen member-exclusive benefits to reverse the fall in member-driven revenue.
  
![Screenshot 2025-06-11 125835](https://github.com/user-attachments/assets/f330cafb-e3bd-40b7-af82-7c45948219fd)

### Product Performance:

- **85% of the company’s orders are from just three products**, Gaming Monitor, Apple AirPods Headphones, and Samsung Charging Cable Pack. These three products accounted for $3.5M in revenue in 2022, 70% of the company’s total.
  
- **MacBook Air Laptop** has the **highest AOV ($1,596)** with only **3K orders**, yet it contributes **$4.5M** to total revenue, showing strong premium product performance.
  
- **Gaming Monitor** leads in revenue generation at **$7.1M**, supported by a solid **17K orders**, making it both high demand and high earning.
  
- **Apple AirPods** dominate in order volume (**35K orders**) but have a **low AOV of $160**, generating less revenue than expected — indicating popularity but low unit value.
  
- **ThinkPad Laptop**, with an **AOV of $1,097** and just **2K orders**, shows potential if demand can be increased through targeted campaigns.
  
- Low-performing products like **Apple iPhone** and **Bose Soundsport Headphones** have both low order counts and revenue, suggesting the need for strategy review or phasing out.
  
- Accessories such as **Samsung Charging Cable Pack ($20 AOV)** and **Samsung Webcam ($51 AOV)** offer limited revenue potential individually but can be leveraged in bundles to increase cart size.


![Screenshot 2025-06-16 111531](https://github.com/user-attachments/assets/f8f3c48a-9810-4797-bb1c-fc75cada2634)


###  Regional Performance:

- **North America led across all metrics**, generating the highest revenue of **$10M**, with the **largest order count (40,861)** and a solid **AOV of $257**. This made it the strongest-performing region overall.

- **EMEA and APAC had comparable AOVs** ($257 and $272 respectively), but **lower order volumes** resulted in **moderate revenue figures** of **$6M (EMEA)** and **$2.2M (APAC)**. **LATAM**, with the **lowest order count and AOV**, contributed only **$1.5M**.

- **Revenue trends peaked in early 2020**, particularly in North America with close to **$1M in monthly revenue**, but **all regions showed a steady decline from early 2021 onward**, indicating a widespread drop in demand post-COVID surge.

![Screenshot 2025-06-11 130416](https://github.com/user-attachments/assets/1ba4eea6-859f-4b6b-8b3a-7e09fef51651)

##  Recommendations

### 1. Reignite Sales Growth
- **Launch promotional campaigns** during Q2, as historical data shows this quarter consistently performs better across years.
- Develop seasonal marketing strategies aligned with previous sales peaks (e.g., May 2020).
- Introduce flash sales or bundling during off-peak months (e.g., Q4) to reduce sales dips.

### 2. Revamp Loyalty Program
- Reassess and enhance the **value proposition of the loyalty program** to reverse declining member revenue share (from 93% in 2019 to 42% in 2022).
- Implement **member-only deals**, early product access, or tier-based incentives to improve **retention and engagement**.
- Launch **reactivation campaigns** targeted at lapsed members using historical purchasing behavior.

### 3. Optimize Product Strategy
- Focus marketing spend and inventory planning on **top 3 performers**: Gaming Monitor, Apple AirPods, and Samsung Charging Cable Pack.
- Promote high AOV but underperforming products like **ThinkPad Laptop** through **targeted ads** or **bundled upgrades**.
- Phase out persistently low performers unless strategic or brand-aligned; repurpose them in **bundles** to boost AOV.
- Upsell opportunities: Use accessories (e.g., Webcam, Cables) in **combo offers** to increase cart size.

### 4. Regional Strategy Alignment
- Double down on **North America**, the highest-performing region, through enhanced local promotions and logistics optimization.
- Grow **EMEA and APAC** by analyzing NA success strategies and tailoring them to cultural preferences and product trends.
- Explore demand generation in **LATAM** by introducing competitively priced entry-level SKUs and regional influencer marketing.

### 5. Address Post-Pandemic Decline
- Invest in **retargeting past customers** from the 2020-2021 surge through email or SMS marketing.
- Launch **customer surveys** to understand post-COVID expectations and adapt offerings accordingly.
- Consider expanding into **new product categories or services** (e.g., warranties, subscriptions) to diversify revenue sources.

Himanshu Parate
Data Analytics | SQL | Power BI | Python | Machine Learning
# ⭐ If you like this project
Give it a ⭐ on GitHub and connect with me!# Elite-Electronics-Sales-and-Loyalty-Analysis
