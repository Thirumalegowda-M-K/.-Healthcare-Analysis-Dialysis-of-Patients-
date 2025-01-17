SELECT * FROM h2dataset;
SELECT * FROM hdataset;

----Number of Patients across various summaries----

SELECT 
    SUM(No__pts_included_in_the_transfusion_Summ) AS No_patients_included_in_transfusion,
    SUM(No__pts_in_hypercalcemia_Summ) AS No_patients_hypercalcemia,
    SUM(No__pts_in_Serum_phosphorus_Summ) AS No_patients_in_Serum_phosphorus,
    SUM(No__pts_included_in_Hsptlization_Summ) AS No_patients_included_in_Hospitalization,
    SUM(No__Hsptlizations_included_in_Hsptl_readmission_Summ) AS No_hospitalization_included_in_hospital_readmission,
    SUM(No__pts_included_in_survival_Summ) AS No_patients_included_in_Survival,
    SUM(No__pts_included_in_fistula_Summ) AS No_patients_included_in_Fistula,
    SUM(No__pts_in_long_term_catheter_Summ) AS No_patients_in_LongTerm_Catheter,
    SUM(No__pts_in_nPCR_Summ) AS No_patients_in_nPCR
FROM h2dataset;

----Profit Vs Non-Profit Stats----

SELECT Profit_or_Non_Profit, COUNT(*) AS Total_Entries
FROM h2dataset
GROUP BY Profit_or_Non_Profit;

----Dialysis Stations Stats----

SELECT
    State,
    SUM(no_Dialysis_Stations) AS Total_Dialysis_Stations
FROM
    H2dataset
GROUP BY
    State;

---- of Category Text  - As Expected ----

SELECT 'pt_Transfusion_category_text' AS Transfusion, COUNT(*) AS As_Expected_Count
FROM h2dataset
WHERE pt_Transfusion_category_text = 'As Expected'

UNION ALL

SELECT 'pt_Hsptlization_category_text' AS Hospitalization, COUNT(*) AS As_Expected_Count
FROM h2dataset
WHERE pt_Hsptlization_category_text = 'As Expected'

UNION ALL

SELECT 'pt_Survival_Category_Text' AS Category, COUNT(*) AS As_Expected_Count
FROM h2dataset
WHERE pt_Survival_Category_Text = 'As Expected'

UNION ALL

SELECT 'pt_Infection_category_text' AS Category, COUNT(*) AS As_Expected_Count
FROM h2dataset
WHERE pt_Infection_category_text = 'As Expected'

UNION ALL

SELECT 'Fistula_Category_Text' AS Category, COUNT(*) AS As_Expected_Count
FROM h2dataset
WHERE Fistula_Category_Text = 'As Expected'

UNION ALL

SELECT 'SWR_category_text' AS Category, COUNT(*) AS As_Expected_Count
FROM h2dataset
WHERE SWR_category_text = 'As Expected'

UNION ALL

SELECT 'PPPW_category_text' AS Category, COUNT(*) AS As_Expected_Count
FROM h2dataset
WHERE PPPW_category_text = 'As Expected';


----Average Payment Reduction Rate----

SELECT AVG(PY2020_Payment_Reduction_Percentage) AS Average_Payment_Reduction
FROM hdataset
WHERE PY2020_Payment_Reduction_Percentage IS NOT NULL;





