# ✈️ SkyBook – Flight Booking & Revenue Analytics

### End-to-End Cloud-Based Flight Analytics Project

SkyBook is an end-to-end flight booking and revenue analytics project that transforms raw flight booking data into meaningful business insights using **AWS, SQL, and Microsoft Power BI**.

The project follows a complete cloud-to-dashboard workflow, starting from storing the flight dataset in Amazon S3 and ending with an interactive Power BI dashboard.

---

## 📌 Project Overview

The main goal of SkyBook is to analyse flight booking data and understand important business areas such as:

- Booking volume
- Revenue
- Airline performance
- Routes
- Fare analysis
- Passenger information
- Payment methods
- Booking status
- Monthly booking trends
- City-level revenue

Instead of analysing raw records manually, the project converts the data into structured analytics and interactive visual insights.

---

# 🔄 End-to-End Project Flow

```text
Flight Dataset
      ↓
Amazon S3
      ↓
AWS IAM
      ↓
AWS Glue
      ↓
Glue Data Catalog
      ↓
Amazon Athena
      ↓
SQL Analysis
      ↓
Athena ODBC
      ↓
Power BI
      ↓
Power Query
      ↓
DAX
      ↓
SkyBook Dashboard
