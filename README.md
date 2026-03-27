# 🏡 Airbnb Data Engineering Project (dbt + Snowflake)

## 📌 Overview

This project is an end-to-end data engineering pipeline built using **dbt**, **Snowflake**, and **AWS S3**, inspired by the [tutorial from Ansh Lamba](https://www.youtube.com/watch?v=3SZSDKEZqoA).

The goal is to transform raw Airbnb data into clean, analytics-ready datasets using modern data engineering practices such as **medallion architecture**, **incremental modeling**, and **data quality testing**.

---

## 🧱 Architecture

This project follows a **Medallion Architecture** approach:

- **Bronze Layer** → Raw data ingestion from AWS S3 (minimal transformation)
- **Silver Layer** → Cleaned, standardized, and deduplicated data
- **Gold Layer** → Analytics-ready models (facts, dimensions, and OBT)

This layered approach improves scalability, maintainability, and data quality.

---

## ⚙️ Tech Stack

- dbt Core – Data transformation framework  
- Snowflake – Cloud data warehouse  
- AWS S3 – Data lake storage  
- SQL – Transformation logic  
- Jinja – Macros and dynamic SQL  
- Git & GitHub – Version control  

---

## 🚀 Key Features

### 🔄 Incremental Models
- Implemented incremental logic using `is_incremental()`
- Processes only new or updated records
- Improves performance and reduces compute cost

---

### 🕰️ Slowly Changing Dimensions (SCD Type 2)
- Used dbt snapshots to track historical changes
- Applied to entities such as listings and hosts
- Enables historical analysis over time

---

### 🧪 Data Quality Testing
- Implemented dbt tests including:
  - `not_null`
  - `unique`
- Ensures accuracy and reliability of transformed data

---

### 🧩 Modular dbt Modeling (Medallion Architecture)

Organized models using a **Medallion Architecture** approach:

- **Bronze layer** – Raw ingested data with minimal transformations  
  - `bronze_bookings.sql`
  - `bronze_listings.sql`
  - `bronze_hosts.sql`

- **Silver layer** – Cleaned, standardized, and deduplicated data  
  - Applied business logic and type casting

- **Gold layer** – Analytics-ready models  
  - Fact and dimension tables  
  - Final aggregated datasets for reporting and analysis  

This structure ensures clear data lineage, better maintainability, and scalable transformations.

---

### ⚡ Macros & Reusability
- Built reusable SQL logic using dbt macros
- Reduced duplication and improved maintainability

---

## 📊 Data Models

### Fact Tables
- `fct_bookings` – Booking-level transactional data

### Dimension Tables
- `dim_listings` – Airbnb listing attributes  
- `dim_hosts` – Host information  
- `dim_bookings` – Booking information  

### Analytics Layer
- `obt_airbnb` – One Big Table for simplified analytics

---

## 📈 Key Learnings

- Built a full end-to-end dbt pipeline  
- Designed scalable medallion architecture  
- Applied incremental processing strategies  
- Implemented data testing for reliability  
- Learned production-style dbt project structuring  

---

## 🚀 Future Improvements

- Add orchestration using Airflow or dbt Cloud  
- Integrate BI dashboards (Tableau / Power BI)  
- Add CI/CD pipeline for dbt runs  
- Expand test coverage and data validation rules  

---

## 🙌 Acknowledgements

This project was built following the tutorial:

- **[Ansh Lamba – Airbnb End-to-End Data Engineering Project (dbt + Snowflake + AWS)](https://www.youtube.com/watch?v=3SZSDKEZqoA)**

---

## 🤝 Connect With Me

If you'd like to connect or collaborate, feel free to reach out!