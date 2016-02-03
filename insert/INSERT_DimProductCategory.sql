TRUNCATE TABLE DimProductCategory;

BEGIN;

INSERT INTO DimProductCategory(ProductCategoryKey, ProductCategoryAlternateKey, EnglishProductCategoryName, SpanishProductCategoryName, FrenchProductCategoryName)
SELECT 1, 1, N'Bikes', N'Bicicleta', N'V�lo' UNION ALL
SELECT 2, 2, N'Components', N'Componente', N'Composant' UNION ALL
SELECT 3, 3, N'Clothing', N'Prenda', N'V�tements' UNION ALL
SELECT 4, 4, N'Accessories', N'Accesorio', N'Accessoire';

COMMIT;
