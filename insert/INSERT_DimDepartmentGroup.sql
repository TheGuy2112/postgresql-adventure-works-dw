TRUNCATE TABLE DimDepartmentGroup;

BEGIN;

INSERT INTO DimDepartmentGroup(DepartmentGroupKey, ParentDepartmentGroupKey, DepartmentGroupName)
SELECT 1, NULL, N'Corporate' UNION ALL
SELECT 2, 1, N'Executive General and Administration' UNION ALL
SELECT 3, 1, N'Inventory Management' UNION ALL
SELECT 4, 1, N'Manufacturing' UNION ALL
SELECT 5, 1, N'Quality Assurance' UNION ALL
SELECT 6, 1, N'Research and Development' UNION ALL
SELECT 7, 1, N'Sales and Marketing';

COMMIT;
