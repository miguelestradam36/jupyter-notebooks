WITH CTE AS (
        SELECT DateDimension.QuarterAndYear AS "Quarter", 
            Colors.Color AS "Color", 
            COUNT(Stock.PurchaseDate) AS "Total Sold"
		FROM Stock
        INNER JOIN DateDimension ON Stock.PurchaseDate = DateDimension.DateKey
        INNER JOIN Colors ON Colors.ColorID = Stock.ColorID
		GROUP BY "Quarter", "Color"
		HAVING DateDimension.Year BETWEEN 2012 AND 2015
    ) SELECT 
		CTE."Quarter", 
		CTE."Color", 
		CTE."Total Sold"
    FROM CTE
	ORDER BY "Total Sold" DESC;