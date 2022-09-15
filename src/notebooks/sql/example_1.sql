SELECT Stock.Make, COUNT(DISTINCT Stock.Model) AS DIFFERENT_MODELS, COUNT(Stock.PurchaseDate) AS TOTAL_PURCHASES FROM Stock
    LEFT JOIN DateDimension ON Stock.PurchaseDate = DateDimension.DateKey
    WHERE DateDimension.QuarterAbbrAndYear IN ('Q1 2015', 'Q3 2015')
    GROUP BY Stock.Make
    ORDER BY TOTAL_PURCHASES DESC
    LIMIT 3;