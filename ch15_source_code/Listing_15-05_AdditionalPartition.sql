USE Menu;
GO

ALTER DATABASE Menu
ADD FILEGROUP RecipeHistory2019Q4;

ALTER DATABASE Menu
ADD FILE
(
	NAME = RecipeHistFG2019Q4,
	FILENAME = 'D:\SQLData\RecipeHistFG2019Q4.ndf',
	SIZE = 50MB
)
TO FILEGROUP RecipeHistory2019Q4;

ALTER PARTITION FUNCTION RecipeHistFunc(DATETIME2)
AS SPLIT RANGE ('10/01/2019');

ALTER PARTITION SCHEME RecipeHistRange
NEXT USED RecipeHistory2019Q4;