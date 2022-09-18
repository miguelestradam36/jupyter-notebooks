SELECT Stock.Make, COUNT(DISTINCT Stock.Model) AS DIFFERENT_MODELS FROM Stock
    LEFT JOIN DateDimension ON Stock.PurchaseDate = DateDimension.DateKey
    GROUP BY Stock.Make
    ORDER BY TOTAL_PURCHASES DESC;