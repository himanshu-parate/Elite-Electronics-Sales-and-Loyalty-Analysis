<div align="center">

# 🛒 Retail Sales Analytics Project

### 📊 End-to-End Data Analysis using SQL | Python | Power BI

<img src="https://img.shields.io/badge/SQL-MySQL-blue?style=for-the-badge&logo=mysql">
<img src="https://img.shields.io/badge/Python-Data%20Analysis-yellow?style=for-the-badge&logo=python">
<img src="https://img.shields.io/badge/PowerBI-Dashboard-orange?style=for-the-badge&logo=powerbi">
<img src="https://img.shields.io/badge/Status-Completed-success?style=for-the-badge">

</div>

---

# 📌 Problem Statement

This project analyzes retail sales data to uncover:
- Customer behavior patterns
- Product performance
- Revenue trends
- Regional sales differences
- Payment method usage

The goal is to convert raw transactional data into **actionable business insights**.

---

# 🧰 Tools & Technologies

| Tool | Purpose |
|------|--------|
| MySQL | Data storage & querying |
| SQL | Data analysis |
| Python | Data cleaning & processing |
| Pandas | Data manipulation |
| Jupyter Notebook | Analysis environment |
| Power BI | Data visualization |

---

# 📂 Project Architecture

```
Retail-Sales-Analysis/
│
├── data/
│   └── retail_sales_large.csv
│
├── sql/
│   └── retail_sales_analysis.sql
│
├── python/
│   ├── data_cleaning.py
│   └── mysql_connection.py
│
├── notebooks/
│   └── retail_analysis.ipynb
│
├── images/
│   ├── dashboard.png
│   ├── revenue.png
│   ├── payment_analysis.png
│
└── README.md
```

---

# 📊 Dataset Overview

The dataset contains:

- Order ID
- Order Date
- Customer Name
- Age
- Gender
- Product Category
- Product Name
- Quantity
- Price
- Discount %
- Payment Method
- Region

---

# 📸 Project Preview

## 📊 Dashboard Overview

<p align="center">
  <img src="images/dashboard.png" width="800">
</p>

---

## 💰 Revenue Analysis

<p align="center">
  <img src="images/revenue.png" width="800">
</p>

---

## 💳 Payment Analysis

<p align="center">
  <img src="images/payment_analysis.png" width="800">
</p>

---

# 🧠 Key Business Insights

✔ High-value customers contribute majority of revenue  
✔ Certain product categories dominate sales  
✔ Online payment methods are most frequently used  
✔ Regional differences strongly affect revenue  
✔ Discounts significantly impact purchase behavior  

---

# 🧾 Sample SQL Queries

### 1️⃣ Total Revenue

```sql
SELECT SUM(price * quantity) AS total_revenue
FROM retail_sales;
```

---

### 2️⃣ Top Customers

```sql
SELECT customer_name,
       SUM(price * quantity) AS total_spent
FROM retail_sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;
```

---

### 3️⃣ Revenue by Payment Method

```sql
SELECT payment_method,
       SUM(price * quantity) AS revenue
FROM retail_sales
GROUP BY payment_method;
```

---

# 🐍 Python Workflow

### 🔹 Data Cleaning
- Removed null values
- Standardized column types
- Fixed inconsistent entries

### 🔹 MySQL Connection

```python
import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password",
    database="retail_project"
)

print("Connected Successfully!")
```

---

# 📈 Key KPIs

- 💰 Total Revenue
- 🧾 Total Orders
- 👥 Unique Customers
- 📦 Top Products
- 💳 Payment Distribution

---

# 🚀 Future Improvements

- Machine Learning Sales Prediction
- Customer Segmentation (Clustering)
- Real-time dashboard streaming
- Advanced forecasting models

---

# 👨‍💻 Author

**Himanshu Parate**

Aspiring Data Analyst | SQL | Python | Power BI | Machine Learning

---

# ⭐ If you like this project
Give it a ⭐ on GitHub and connect with me!# Elite-Electronics-Sales-and-Loyalty-Analysis
