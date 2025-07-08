
# SaveEat – Surplus Food Donation and Redistribution System

SaveEat is an SQL-based project aimed at reducing food waste by connecting food vendors (restaurants, hotels, supermarkets) with NGOs and food banks that need surplus food. This system ensures the efficient management, donation, and delivery of excess food, contributing to a more sustainable and hunger-free society.

---

# Features

- Donor registration and food category management
- Donation scheduling with quantity and food description
- Delivery agent tracking and route assignments
- NGO registration and pickup scheduling
- SQL queries, views, triggers for data analysis and automation

---

# Project Structure

# Database: MySQL / PostgreSQL
- **Core Tables**:
  - `Vendor`
  - `NGO`
  - `Delivery_Agent`
  - `Food_Category`
  - `Donation`
  - `Delivery`
- # Advanced SQL Features:
  - Views
  - Triggers
  - Joins
  - Subqueries
  - Aggregations
  - Rollbacks

---

# Entity Relationship Diagram (ERD)

![ER Diagram](ERD_Screenshot.png)

---

# Sample SQL Queries

```sql
-- List all donations with vendor and food category details
SELECT d.donation_id, v.vendor_name, f.category_name, d.food_description, d.quantity_kg, d.status
FROM Donation d
JOIN Vendor v ON d.vendor_id = v.vendor_id
JOIN Food_Category f ON d.category_id = f.category_id;

-- View: Show scheduled deliveries with agent names
CREATE VIEW Scheduled_Deliveries AS
SELECT de.delivery_id, da.agent_name, n.ngo_name, de.delivery_time
FROM Delivery de
JOIN Delivery_Agent da ON de.agent_id = da.agent_id

