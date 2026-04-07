# Power BI Sales & Inventory Dashboard

An interactive business intelligence dashboard built with Power BI Desktop, connected to a PostgreSQL database. The dashboard analyses sales performance, product performance, customer behaviour, and inventory health across five dedicated pages.

---

## Project Overview

This project connects Power BI directly to a PostgreSQL database containing four tables — `customers`, `products`, `sales`, and `inventory` — and delivers a fully interactive dashboard with cross-filtering, DAX measures, time intelligence, and a custom theme.

---

## Dashboard Pages

| Page | Purpose |
|------|---------|
| **Overview** | Executive summary — total revenue, orders, customers, AOV, revenue trend, top products |
| **Sales Performance** | Monthly revenue trend, orders by month, revenue by city, revenue by quarter |
| **Product Performance** | Top 10 products by revenue and quantity, revenue by category and supplier |
| **Customer Insights** | Revenue by city and membership tier, customer acquisition trend, top 10 customers |
| **Inventory Insights** | Stock levels by product and category, stock vs. sales comparison, low-stock alert table |

---

## Database Schema

Connected via PostgreSQL (live connection).

**customers**
| Column | Type |
|--------|------|
| customer_id | integer (PK) |
| first_name | varchar |
| last_name | varchar |
| email | varchar |
| phone_number | varchar |
| city | varchar |
| registration_date | date |
| membership_status | varchar |

**products**
| Column | Type |
|--------|------|
| product_id | integer (PK) |
| product_name | varchar |
| category | varchar |
| price | numeric |
| supplier | varchar |
| stock_quantity | integer |

**sales**
| Column | Type |
|--------|------|
| sale_id | integer (PK) |
| customer_id | integer (FK) |
| product_id | integer (FK) |
| quantity_sold | integer |
| sale_date | date |
| total_amount | numeric |

**inventory**
| Column | Type |
|--------|------|
| product_id | integer (FK) |
| stock_quantity | integer |

---

## Data Model

**Relationships:**
- `sales[customer_id]` → `customers[customer_id]` (Many-to-One)
- `sales[product_id]` → `products[product_id]` (Many-to-One)
- `inventory[product_id]` → `products[product_id]` (One-to-One)

**Date Table (calculated):**  
Generated via DAX using `CALENDAR(MIN(sales[sale_date]), MAX(sales[sale_date]))` with derived columns for Year, Month, MonthName, Quarter, and YearMonth. Connected to `sales[sale_date]`.

---

## DAX Measures

| Measure | Formula |
|---------|---------|
| Total Revenue | `SUM(sales[total_amount])` |
| Total Orders | `DISTINCTCOUNT(sales[sale_id])` |
| Total Customers | `DISTINCTCOUNT(sales[customer_id])` |
| Avg Order Value | `DIVIDE([Total Revenue], [Total Orders])` |
| Total Quantity Sold | `SUM(sales[quantity_sold])` |
| Revenue per Customer | `DIVIDE([Total Revenue], [Total Customers])` |
| Total Stock | `SUM(inventory[stock_quantity])` |
| Low Stock Products | `COUNTROWS(FILTER(inventory, inventory[stock_quantity] < 20))` |
| New Customers | `DISTINCTCOUNT(customers[customer_id])` |

---

