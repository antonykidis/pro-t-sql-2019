USE Menu;
GO

SELECT IngredientID, IngredientName
FROM dbo.Ingredient
WHERE IngredientName LIKE '%Tomato%'
UNION
SELECT IngredientID, IngredientName
FROM dbo.Ingredient
WHERE Measurement = 'Ounces'