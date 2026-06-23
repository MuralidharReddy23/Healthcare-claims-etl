
## Project Overview

This project demonstrates an end-to-end Healthcare Claims ETL solution built using Azure Data Factory, Azure Blob Storage, Azure SQL Database, and Power BI. The objective of the project is to ingest healthcare claims data from raw CSV files, perform data cleansing and transformations, load curated data into Azure SQL Database, create business-ready gold-layer datasets, and visualize healthcare insights through Power BI dashboards.
The solution follows a modern Medallion Architecture approach consisting of Raw (Bronze), Curated (Silver), and Gold layers.

⸻

## Technologies Used

* Azure Data Factory (ADF)
* Azure Blob Storage
* Azure SQL Database
* Power BI
* SQL
* ETL Pipelines
* Mapping Data Flows
* Data Modeling
* Data Validation

⸻

## Dataset Overview

## The project processes healthcare operational datasets:

Patients - Contains patient demographic information.
Providers - Contains healthcare provider information.
Claims - Contains insurance claim details.
Encounters - Contains patient-provider encounter records.
Claims Transactions - Contains claim payment and adjustment transactions.

⸻

## Solution Architecture

## Bronze Layer (Raw)

Raw healthcare datasets are ingested into Azure Blob Storage.

## Tables:

* patients_raw
* providers_raw
* claims_raw
* encounters_raw
* claims_transactions_raw

## Activities

* Source Data Ingestion
* File Validation
* Raw Data Storage

⸻

## Silver Layer (Curated)

Data cleansing and transformation are performed using Azure Data Factory Mapping Data Flows.

## Transformations include:

* Data Type Conversion
* Null Handling
* Data Standardization
* Uppercase City and State Formatting
* Derived Columns
* Data Quality Improvements

## Curated Tables:

* patients_curated
* providers_curated
* claims_curated
* encounters_curated
* claims_transactions_curated

⸻

## Gold Layer (Business Ready)

Business-focused analytical tables are created for reporting and dashboarding.

Provider Performance Gold

Table:

provider_performance_gold

Metrics:

* Provider Name
* Specialty
* City
* State
* Total Claims
* Outstanding Claim Amount
* Average Outstanding Amount

⸻

Patient Claim Summary Gold

Table:
patient_claim_summary_gold

Metrics:
* Patient Information
* Total Claims
* Outstanding Amount
* Average Outstanding Amount

⸻

Claims Financial Summary Gold

Table:
claims_financial_summary_gold

Metrics:
* Claim Type
* Claim Status
* Total Claims
* Outstanding Amount Metrics
* Financial Aggregations

⸻

Azure Data Factory Components

## Pipeline

pl_csv_to_raw - Responsible for loading source healthcare CSV files into Azure SQL Database.

Activities:
* Patients Copy Activity
* Providers Copy Activity
* Claims Copy Activity
* Encounters Copy Activity
* Claims Transactions Copy Activity

⸻

## Data Validation

## Record Count Validation

SELECT COUNT(*) FROM patients_curated;
SELECT COUNT(*) FROM providers_curated;
SELECT COUNT(*) FROM claims_curated;
SELECT COUNT(*) FROM encounters_curated;
SELECT COUNT(*) FROM claims_transactions_curated;
SELECT COUNT(*) FROM provider_performance_gold;
SELECT COUNT(*) FROM patient_claim_summary_gold;
SELECT COUNT(*) FROM claims_financial_summary_gold;

## Sample Data Validation

SELECT TOP 10 *
FROM provider_performance_gold;
SELECT TOP 10 *
FROM patient_claim_summary_gold;
SELECT TOP 10 *
FROM claims_financial_summary_gold;

⸻
Muralidhar Reddy Mandadi
