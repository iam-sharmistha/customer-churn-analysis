-- ==========================================================
-- Customer Churn Analysis
-- Author: Sharmistha Barua
-- Tools: SQLite
-- Dataset: Telco Customer Churn
-- ==========================================================


------------------------------------------------------------
-- 1. View First 10 Records
------------------------------------------------------------

SELECT *
FROM customers
LIMIT 10;


------------------------------------------------------------
-- 2. Total Number of Customers
------------------------------------------------------------

SELECT COUNT(*) AS Total_Customers
FROM customers;


------------------------------------------------------------
-- 3. Overall Churn Summary
------------------------------------------------------------

SELECT
    Churn,
    COUNT(*) AS Customers
FROM customers
GROUP BY Churn;


------------------------------------------------------------
-- 4. Overall Churn Rate
------------------------------------------------------------

SELECT
ROUND(
100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS Churn_Rate
FROM customers;


------------------------------------------------------------
-- 5. Customers by Gender
------------------------------------------------------------

SELECT
Gender,
COUNT(*) AS Total_Customers
FROM customers
GROUP BY Gender;


------------------------------------------------------------
-- 6. Churn by Gender
------------------------------------------------------------

SELECT
Gender,
Churn,
COUNT(*) AS Customers
FROM customers
GROUP BY Gender, Churn
ORDER BY Gender;


------------------------------------------------------------
-- 7. Churn by Contract Type
------------------------------------------------------------

SELECT
Contract,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
ROUND(
100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS Churn_Rate
FROM customers
GROUP BY Contract
ORDER BY Churn_Rate DESC;


------------------------------------------------------------
-- 8. Churn by Internet Service
------------------------------------------------------------

SELECT
InternetService,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
ROUND(
100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS Churn_Rate
FROM customers
GROUP BY InternetService
ORDER BY Churn_Rate DESC;


------------------------------------------------------------
-- 9. Churn by Payment Method
------------------------------------------------------------

SELECT
PaymentMethod,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
ROUND(
100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS Churn_Rate
FROM customers
GROUP BY PaymentMethod
ORDER BY Churn_Rate DESC;


------------------------------------------------------------
-- 10. Average Monthly Charges by Churn
------------------------------------------------------------

SELECT
Churn,
ROUND(AVG(MonthlyCharges),2) AS Average_Monthly_Charges
FROM customers
GROUP BY Churn;


------------------------------------------------------------
-- 11. Average Total Charges by Churn
------------------------------------------------------------

SELECT
Churn,
ROUND(AVG(TotalCharges),2) AS Average_Total_Charges
FROM customers
GROUP BY Churn;


------------------------------------------------------------
-- 12. Average Tenure by Churn
------------------------------------------------------------

SELECT
Churn,
ROUND(AVG(tenure),2) AS Average_Tenure
FROM customers
GROUP BY Churn;


------------------------------------------------------------
-- 13. Senior Citizens by Churn
------------------------------------------------------------

SELECT
SeniorCitizen,
Churn,
COUNT(*) AS Customers
FROM customers
GROUP BY SeniorCitizen, Churn;


------------------------------------------------------------
-- 14. Churn by Partner Status
------------------------------------------------------------

SELECT
Partner,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned
FROM customers
GROUP BY Partner;


------------------------------------------------------------
-- 15. Churn by Dependents
------------------------------------------------------------

SELECT
Dependents,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned
FROM customers
GROUP BY Dependents;


------------------------------------------------------------
-- 16. Churn by Tech Support
------------------------------------------------------------

SELECT
TechSupport,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned,
ROUND(
100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)/COUNT(*),
2
) AS Churn_Rate
FROM customers
GROUP BY TechSupport
ORDER BY Churn_Rate DESC;


------------------------------------------------------------
-- 17. Churn by Online Security
------------------------------------------------------------

SELECT
OnlineSecurity,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned,
ROUND(
100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)/COUNT(*),
2
) AS Churn_Rate
FROM customers
GROUP BY OnlineSecurity
ORDER BY Churn_Rate DESC;


------------------------------------------------------------
-- 18. Monthly Charges Above Average
------------------------------------------------------------

SELECT
customerID,
MonthlyCharges
FROM customers
WHERE MonthlyCharges >
(
SELECT AVG(MonthlyCharges)
FROM customers
)
ORDER BY MonthlyCharges DESC;


------------------------------------------------------------
-- 19. Long-Term Customers
------------------------------------------------------------

SELECT
customerID,
tenure,
MonthlyCharges
FROM customers
WHERE tenure >= 60
ORDER BY tenure DESC;


------------------------------------------------------------
-- 20. High-Risk Customers
------------------------------------------------------------

SELECT
customerID,
Contract,
InternetService,
PaymentMethod,
MonthlyCharges
FROM customers
WHERE Contract='Month-to-month'
AND InternetService='Fiber optic'
AND PaymentMethod='Electronic check';


------------------------------------------------------------
-- End of Analysis
------------------------------------------------------------