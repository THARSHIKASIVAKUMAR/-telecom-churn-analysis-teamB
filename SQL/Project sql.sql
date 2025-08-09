CREATE DATABASE Project;
use Project;
CREATE TABLE Telco_customer (
customerID VARCHAR(50),
gender VARCHAR(10),
SeniorCitizen INT,
Partner VARCHAR(10),
Dependents VARCHAR(10),
tenure INT,
phoneService VARCHAR(20),
Multiplelines VARCHAR(30),
InternetService VARCHAR(20),
OnlineSecurity VARCHAR(30),
OnlineBackup VARCHAR(30),
DeviceProtection VARCHAR(30),
TechSupport VARCHAR(30),
StreamingTV VARCHAR(30),
StreamingMovies VARCHAR(30),
Contract VARCHAR(30),
PaperlessBilling VARCHAR(10),
PaymentMethod VARCHAR(50),
MonthlyCharges FLOAT,
TotalCharges FLOAT,
Churn VARCHAR(10)
);

SELECT *
FROM Telco_customer
WHERE Churn = 'Yes' AND InternetService = 'Fiber optic';

SELECT *
FROM Telco_customer
WHERE OnlineSecurity = 'Yes' AND TechSupport = 'No';

SELECT 
    InternetService,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Churn_Rate_Percent
FROM Telco_customer
GROUP BY InternetService;

SELECT 
    PhoneService,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Churn_Rate_Percent
FROM Telco_customer
GROUP BY PhoneService;

SELECT 
    Contract,
    Churn,
    COUNT(*) AS Customer_Count
FROM Telco_customer
GROUP BY Contract, Churn;

SELECT 
    PaymentMethod,
    ROUND(AVG(MonthlyCharges), 2) AS Avg_MonthlyCharges
FROM Telco_customer
GROUP BY PaymentMethod;

select* from Telco_customer;