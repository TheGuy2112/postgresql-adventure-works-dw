TRUNCATE TABLE DimScenario;

BEGIN;

INSERT INTO DimScenario(ScenarioKey, ScenarioName)
SELECT 1, N'Actual' UNION ALL
SELECT 2, N'Budget' UNION ALL
SELECT 3, N'Forecast';

COMMIT;
