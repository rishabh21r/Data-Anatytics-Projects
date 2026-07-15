# ☕ Coffee Sales SQL Data Analysis

## 📌 Project Overview

This project analyzes a coffee retail business dataset using **MySQL** to extract meaningful business insights. The analysis focuses on sales performance, customer behavior, product performance, market potential, and city-wise expansion opportunities.

The objective is to demonstrate practical SQL skills by solving real-world business problems using **Joins, Aggregate Functions, Common Table Expressions (CTEs), Window Functions, and Ranking Functions**.

---

## 🎯 Objectives

- Analyze city-wise revenue performance.
- Calculate average revenue generated per customer.
- Evaluate average rental cost per customer.
- Identify the top-selling products in each city.
- Compare customer count with estimated market size.
- Rank cities based on revenue and consumer population.
- Recommend the best cities for new store expansion.
- Generate actionable business insights for decision-making.

---

## 🛠️ Tech Stack

- **Database:** MySQL
- **Language:** SQL

### SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- HAVING
- INNER JOIN
- Aggregate Functions
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- RANK()
- DENSE_RANK()
- Subqueries

---

## 📂 Database Schema

### City

| Column |
|---------|
| city_id |
| city_name |
| estimated_rent |
| consumers_in_millions |

### Customers

| Column |
|---------|
| customer_id |
| customer_name |
| city_id |

### Products

| Column |
|---------|
| product_id |
| product_name |
| price |

### Sales

| Column |
|---------|
| sale_id |
| customer_id |
| product_id |
| sale_date |
| quantity |
| total |

---

## 📊 Business Problems Solved

- Total Revenue by City
- Revenue per Customer
- Average Rent per Customer
- Top 3 Selling Products by City
- Market Potential Analysis
- Consumer Population Ranking
- Quarterly Revenue Analysis
- Product-wise Revenue Analysis
- City Revenue Comparison
- Customer vs Revenue Analysis
- Store Expansion Recommendation

---

## 📈 Key Insights

- **Pune** generated the highest total revenue among all cities.
- **Chennai** and **Bangalore** consistently delivered strong revenue performance.
- **Cold Brew Coffee Pack (6 Bottles)** was the highest revenue-generating product.
- **Coffee Beans (500g)** ranked among the best-selling products across multiple cities.
- **Delhi** and **Mumbai** have large consumer markets but relatively low customer penetration.
- **Jaipur** has one of the highest customer counts, demonstrating strong customer acquisition.
- Multiple cities still have significant untapped market potential.

---

## 💡 Business Recommendations

### 📍 Recommended Cities for New Store Expansion

#### 1. Delhi
- Largest estimated consumer base (**10.85 million**).
- Currently serves only **68 customers**.
- Significant gap between market size and existing customer base indicates strong untapped demand.
- **Highest priority for opening a new store.**

#### 2. Mumbai
- Estimated consumer base of **7.14 million**.
- Only **27 active customers** despite a large market.
- Low customer penetration presents an excellent expansion opportunity.

#### 3. Kolkata
- Estimated consumer base of **5.22 million**.
- Currently serves just **28 customers**.
- Strong growth potential due to low market penetration.

### Additional Recommendations

- Expand operations in **Pune**, **Chennai**, and **Bangalore** to capitalize on their strong revenue performance.
- Increase marketing efforts in **Delhi** and **Mumbai** to improve customer acquisition.
- Focus inventory on high-performing products:
  - Cold Brew Coffee Pack (6 Bottles)
  - Coffee Beans (500g)
  - Ground Espresso Coffee (250g)
- Optimize rental costs by comparing revenue generated per customer before opening new stores.
- Invest in customer acquisition campaigns in cities with high market potential but low customer penetration.

---

## 📁 Project Structure

```text
Coffee-Sales-SQL-Analysis/
│
├── Dataset/
│   ├── city.csv
│   ├── customers.csv
│   ├── products.csv
│   └── sales.csv
│
├── SQL/
│   ├── Table_Creation.sql
│   ├── Query & Reccomendation.sql
│   
│   
│
├── Results/
│   ├── Query Outputs
│
│
└── README.md
```

---

## 🚀 Skills Demonstrated

- SQL Query Writing
- Relational Database Management
- Data Aggregation
- Data Analysis
- Business Intelligence
- Analytical Thinking
- Window Functions
- Ranking Functions
- Common Table Expressions (CTEs)
- Business Recommendation Generation

---

## 📷 Analysis Included

This project contains SQL queries and analysis for:

- Revenue Analysis
- Customer Analysis
- Product Performance
- City Performance
- Consumer Market Analysis
- Quarterly Revenue
- Product Ranking
- Store Expansion Strategy
- Business Insights & Recommendations

---

## 📌 Conclusion

This project demonstrates how SQL can transform raw transactional data into actionable business insights. Using joins, aggregate functions, CTEs, and window functions, the analysis identifies high-performing cities, customer trends, top-selling products, market opportunities, and strategic locations for future store expansion.

The findings support data-driven decision-making by helping stakeholders optimize operations, prioritize investments, and identify the most promising markets for business growth.

---

## ⭐ If you found this project useful, consider giving it a Star!
