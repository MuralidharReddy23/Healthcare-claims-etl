--1. Bronze vs Silver Row couunt Validation: both of these layers tables should have same count. 
--These queries confirm the data is not duplicated and correctly written to silver layers. 
-- Scenario: There are cases when the raw tables are not truncated before running the pipeline, the data might load twice into the silver layer tables. 

SELECT 'patients' AS table_name,
       (SELECT COUNT(*) FROM patients_raw) AS raw_count,
       (SELECT COUNT(*) FROM patients_curated) AS curated_count
UNION ALL
SELECT 'providers',
       (SELECT COUNT(*) FROM providers_raw),
       (SELECT COUNT(*) FROM providers_curated)
UNION ALL
SELECT 'encounters',
       (SELECT COUNT(*) FROM encounters_raw),
       (SELECT COUNT(*) FROM encounters_curated)
UNION ALL
SELECT 'claims',
       (SELECT COUNT(*) FROM claims_raw),
       (SELECT COUNT(*) FROM claims_curated)
UNION ALL
SELECT 'claims_transactions',
       (SELECT COUNT(*) FROM claims_transactions_raw),
       (SELECT COUNT(*) FROM claims_transactions_curated);

-- 2. Gold Layer Row Count Validation

SELECT 'provider_performance_gold' AS table_name,
       COUNT(*) AS row_count
FROM provider_performance_gold
UNION ALL
SELECT 'patient_claim_summary_gold',
       COUNT(*)
FROM patient_claim_summary_gold
UNION ALL
SELECT 'claims_financial_summary_gold',
       COUNT(*)
FROM claims_financial_summary_gold;

