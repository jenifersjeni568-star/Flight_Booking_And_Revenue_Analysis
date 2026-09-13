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
```
---

☁️ 1. Flight Dataset
--

The project starts with a flight booking dataset containing information related to flights, passengers, fares, airlines, routes, cities, payment methods and booking status.

The raw dataset is used as the source for the complete analytics workflow.

---

🪣 2. Amazon S3 – Data Storage
--

Amazon S3 is used as the cloud storage layer for the flight dataset.

* The flight booking file is uploaded to the project S3 bucket so that AWS Glue can later discover its structure and Amazon Athena can query the cataloged data.

Actual S3 Bucket Used
```text

new-etl-source-bucket

```
Project Data Location

```text
s3://new-etl-source-bucket/customer-db/
```
Purpose
- Store the raw flight dataset
- Provide cloud-based storage
- Make the dataset available for AWS data processing

---

🔐 3. AWS IAM – Access Management
--

AWS IAM is used to manage permissions between the AWS services involved in the project.

An IAM role is configured so that the Glue process can access the required S3 data and work with the Glue Data Catalog.

Actual IAM Role Used
```text
new-etl-role
```
Purpose
- Control service access
- Provide required permissions
- Allow AWS Glue to access the S3 data

---

🔎 4. AWS Glue – Data Discovery
-

AWS Glue is used to discover the structure of the flight dataset.

The Glue Crawler scans the data stored in S3 and identifies the available fields and their data types.

Actual Glue Resources Used

Database:
```text
customer-db
```
Crawler:
```text
new-etl-crawler
```
The crawler automatically identifies the structure of the dataset and registers the discovered information in the Glue Data Catalog.

---

🗂️ 5. Glue Data Catalog
-

- The Glue Data Catalog stores the metadata discovered by AWS Glue.

- It maintains information about the database, table structure, columns and data types.

- This cataloged information allows Amazon Athena to understand the flight dataset and query it using SQL.

---

🔍 6. Amazon Athena – SQL Analysis
--

Amazon Athena is used as the SQL analysis layer.

Athena allows SQL queries to be executed directly on the cataloged flight data without requiring a traditional database server.

Analysis Performed

The project contains 20 SQL queries covering:

- Total booking records
- Total revenue
- Average fare
- Minimum fare
- Maximum fare
- Airline-wise booking count
- Airline-wise revenue
- Route-wise booking count
- Booking status distribution
- Revenue by booking status
- Average passenger age
- Age range
- Payment method distribution
- Payment method revenue
- Departure city booking count
- City-wise revenue
- Top 10 highest fare bookings
- Confirmed bookings
- Cancelled bookings
- Completed bookings

The SQL layer helps answer business questions from the flight dataset.

---

🔗 7. Athena ODBC – Connectivity
-

After the AWS-side data preparation and SQL analysis, Athena ODBC is used as the connectivity bridge between Amazon Athena and Power BI.

The configured ODBC connection allows Power BI Desktop to access the required cataloged flight data.

Flow
```text
Amazon Athena
      ↓
Athena ODBC
      ↓
Power BI Desktop
```
---

📊 8. Power BI – Data Connection
-

- Power BI Desktop is used to connect to the flight data through the configured Athena ODBC connection.

- The required database and flight table are selected and loaded into Power BI for further preparation and visualization.

---

🧹 9. Power Query – Data Preparation
-

Power Query is used inside Power BI to prepare the data before building the dashboard.

The following fields are checked and prepared:

- Flight date
- Fare
- Passenger age
- Airline
- Route
- Departure city
- Booking status
- Payment method

Power Query is also used to check data types, standardize values and prepare the date field for monthly trend analysis.

---

🧮 10. DAX – KPI Development
-

DAX measures are created in Power BI to calculate important business indicators dynamically.

Main DAX Measures
```text
Total Bookings = COUNTROWS(FlightData)

Total Revenue = SUM(FlightData[fare])

Average Fare = AVERAGE(FlightData[fare])

Average Age = AVERAGE(FlightData[age])

Confirmed Bookings =
CALCULATE(
    COUNTROWS(FlightData),
    FlightData[bookingstatus] = "Confirmed"
)

Cancelled Bookings =
CALCULATE(
    COUNTROWS(FlightData),
    FlightData[bookingstatus] = "Cancelled"
)

Completed Bookings =
CALCULATE(
    COUNTROWS(FlightData),
    FlightData[bookingstatus] = "Completed"
)
```
These measures provide dynamic KPI values that respond to report filters.

---

📈 11. SkyBook Dashboard
-

The final output of the project is an interactive Power BI dashboard containing two main pages.


✈️ Page 1 – Flight Booking Overview
--

The first page provides an overall view of flight booking performance.

Key Information

- Total Bookings
- Total Passengers
- Total Revenue
- Total Airlines
- Total Routes
- Bookings by Airline
- Payment Method
- Monthly Booking Trend
- Detailed Booking Table
- Interactive Filters
- Airline
- Booking Status
- Departure City
- Flight Date

This page answers:


"What is happening in the flight booking data?"
--


💰 Page 2 – Revenue & Booking Analytics
--

The second page provides a deeper analysis of revenue and booking performance.

Key Information

- Average Fare
- Average Passenger Age
- Confirmed Bookings
- Cancelled Bookings
- Completed Bookings
- Revenue by Booking Status
- City-level Revenue
- Revenue Insights
- Airline → Route → Booking Status analysis

This page answers:


"Where is the booking and revenue performance coming from?"
--

📊 Data Analysis & Visualisation
-

The SkyBook Power BI dashboard provides interactive visualisations to understand flight booking data efficiently.

Major Analysis Areas
- Airline-wise booking volume.
- Airline-wise revenue.
- Route-wise booking performance.
- Booking status distribution.
- Payment method distribution.
- Monthly booking trends.
- Fare analysis.
- Passenger age analysis.
- Departure city analysis.
- City-wise revenue.
- Confirmed, cancelled, and completed bookings.

Users can interact with the dashboard using slicers, filters, navigation controls, and interactive visuals to explore the data from different perspectives.

---

🎯 Business Questions Answered
-
The project helps answer important business questions such as:

- Which airlines have higher booking volumes?
- Which airlines generate more revenue?
- Which routes receive more bookings?
- How are bookings distributed by status?
- Which payment methods are commonly used?
- Which departure cities contribute more revenue?
- What is the average fare?
- What is the average passenger age?
- Which bookings have the highest fares?
- How many bookings are confirmed, cancelled, and completed?

---

🌟 Key Dashboard Features
-
- Interactive Power BI visuals.
- KPI cards for important flight metrics.
- Airline-wise booking analysis.
- Payment method analysis.
- Monthly booking trend.
- City-level revenue analysis.
- Booking status analysis.
- Fare analysis.
- Passenger age analysis.
- Interactive slicers and filters.
- Cross-filtering between visuals.
- Navigation between dashboard pages.
- Detailed booking table.
- Figma-based custom dashboard UI.
- Dynamic DAX-based KPI calculations.
- Cloud-based AWS data workflow.

---
 🚀 Expected Outcome
-

The final outcome of the project is an interactive flight booking and revenue analytics dashboard that helps users:

- Understand overall booking performance.
- Analyse airline and route performance.
- Monitor revenue and fare metrics.
- Explore booking status and payment methods.
- Analyse passenger-related information.
- Identify city-level revenue contribution.
- Explore monthly booking trends.
- Make data-driven business decisions.
- Present complex flight data in an easy-to-understand visual format.
---

🌟 Advantages
-
- End-to-end cloud-based analytics workflow.
- Centralised flight data analysis.
- Structured data discovery using AWS Glue.
- Serverless SQL analysis using Amazon Athena.
- Interactive Power BI dashboard.
- Dynamic KPI calculations using DAX.
- Easy filtering and exploration of flight data.
- Faster identification of booking and revenue patterns.
- Combines cloud, SQL, and business intelligence technologies.
- Provides a strong foundation for future flight analytics solutions.
🔮 Future Enhancements
---

Future improvements may include:
-

- Automated data refresh.
- Real-time or near-real-time flight data integration.
- Advanced airline performance KPIs.
- Predictive booking analysis.
- Revenue forecasting.
- Demand forecasting by route and city.
- Machine learning-based flight demand prediction.
- Advanced passenger behaviour analysis.
- Cloud-based automated reporting.
- Mobile-friendly dashboard deployment.
---
📌 Conclusion
-

- The SkyBook Flight Booking & Revenue Analytics project demonstrates how cloud services, SQL, and business intelligence tools can be combined to build an end-to-end analytics solution.

- By using Amazon S3, AWS IAM, AWS Glue, Glue Data Catalog, Amazon Athena, SQL, Athena ODBC, Power Query, DAX, Power BI, and Figma, the project transforms raw flight booking data into meaningful and interactive business insights.

- The final dashboard provides a clear analytical view of booking volume, airline performance, routes, fares, passengers, payment methods, booking status, monthly trends, and city-level revenue.

- From raw flight data to real business insight — SkyBook turns data into a clear story.
----

👩‍💻 Developed By

---

Jenifer S
--

B.Tech Artificial Intelligence and Data Science

Project: SkyBook – Flight Booking & Revenue Analytics 
