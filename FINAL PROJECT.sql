SELECT * FROM Bank_Churner_Data.bank_churners;


-- Customer Attrition and education
SELECT Education_Level,COUNT(*) FROM bank_churners WHERE Attrition_Flag="Existing Customer" 
GROUP BY Education_Level ORDER BY COUNT(*);
SELECT Education_Level,COUNT(*) FROM bank_churners WHERE Attrition_Flag="Attrited Customer" 
GROUP BY Education_Level ORDER BY COUNT(*);


-- Attrited Customers based on Age Range.
SELECT CASE WHEN Customer_Age<20 then "0-20" WHEN Customer_Age between 20 and 30 then "20-30"
when Customer_Age BETWEEN 30 and 40 then "30-40" WHEN Customer_Age BETWEEN 40 and 50 THEN "40-50"
when Customer_Age BETWEEN 50 and 60 then "50-60" WHEN Customer_Age BETWEEN 60 and 70 THEN "60-70"
when Customer_Age BETWEEN 70 and 80 then "70-80" WHEN Customer_Age>80 THEN "Abovngee 80" END as Age_RANGE, COUNT(*)
FROM bank_churners WHERE Attrition_Flag = "Attrited_Customer" GROUP BY Age_Range ORDER BY Age_Range;

