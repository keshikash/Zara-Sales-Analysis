select *
from Zara_Sales;

select Sum([Sales_Volume] * [price]) as Total_Sales, sum([Sales_Volume]) as Total_Quantity
from Zara_Sales;

SELECT section AS gender, COUNT(*) AS count, SUM([Sales_Volume]) AS Quantity, sum([Sales_Volume] * [price]) as Sales
FROM Zara_Sales
GROUP BY section;

select Product_Position, Count([Product_Position]) As Quantity, Sum([Sales_Volume] * [price]) as Total_Sales
from Zara_Sales
Group by Product_Position;

select Promotion, Count([Promotion]) As Quantity, Sum([Sales_Volume] * [price]) as Total_Sales
from Zara_Sales
Group by Promotion;

select Seasonal, Count([Seasonal]) As Quantity, Sum([Sales_Volume] * [price]) as Total_Sales
from Zara_Sales
Group by Seasonal;

select terms, Count([terms]) As Quantity, Sum([Sales_Volume] * [price]) as Total_Sales
from Zara_Sales
Group by terms
ORDER BY Total_Sales DESC;

SELECT TOP 10 name, SUM(Sales_Volume) AS Total_Quantity, SUM(Sales_Volume * price) AS Total_Sales
FROM Zara_Sales
GROUP BY name
ORDER BY Total_Sales DESC;
