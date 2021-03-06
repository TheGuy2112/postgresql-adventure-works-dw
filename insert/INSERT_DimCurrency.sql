TRUNCATE TABLE DimCurrency;

begin;

INSERT INTO DimCurrency(CurrencyKey, CurrencyAlternateKey, CurrencyName)
SELECT 1, N'AFA', N'Afghani' UNION ALL
SELECT 2, N'DZD', N'Algerian Dinar' UNION ALL
SELECT 3, N'ARS', N'Argentine Peso' UNION ALL
SELECT 4, N'AMD', N'Armenian Dram' UNION ALL
SELECT 5, N'AWG', N'Aruban Guilder' UNION ALL
SELECT 6, N'AUD', N'Australian Dollar' UNION ALL
SELECT 7, N'AZM', N'Azerbaijanian Manat' UNION ALL
SELECT 8, N'BSD', N'Bahamian Dollar' UNION ALL
SELECT 9, N'BHD', N'Bahraini Dinar' UNION ALL
SELECT 10, N'THB', N'Baht' UNION ALL
SELECT 11, N'PAB', N'Balboa' UNION ALL
SELECT 12, N'BBD', N'Barbados Dollar' UNION ALL
SELECT 13, N'BEF', N'Belgian Franc' UNION ALL
SELECT 14, N'VEB', N'Bolivar' UNION ALL
SELECT 15, N'BOB', N'Boliviano' UNION ALL
SELECT 16, N'BRL', N'Brazilian Real' UNION ALL
SELECT 17, N'BND', N'Brunei Dollar' UNION ALL
SELECT 18, N'BGN', N'Bulgarian Lev' UNION ALL
SELECT 19, N'CAD', N'Canadian Dollar' UNION ALL
SELECT 20, N'GHC', N'Cedi' UNION ALL
SELECT 21, N'XOF', N'CFA Franc BCEAO' UNION ALL
SELECT 22, N'CLP', N'Chilean Peso' UNION ALL
SELECT 23, N'COP', N'Colombian Peso' UNION ALL
SELECT 24, N'CRC', N'Costa Rican Colon' UNION ALL
SELECT 25, N'HRK', N'Croatian Kuna' UNION ALL
SELECT 26, N'CYP', N'Cyprus Pound' UNION ALL
SELECT 27, N'CZK', N'Czech Koruna' UNION ALL
SELECT 28, N'DKK', N'Danish Krone' UNION ALL
SELECT 29, N'DEM', N'Deutsche Mark' UNION ALL
SELECT 30, N'DOP', N'Dominican Peso' UNION ALL
SELECT 31, N'VND', N'Dong' UNION ALL
SELECT 32, N'GRD', N'Drachma' UNION ALL
SELECT 33, N'EGP', N'Egyptian Pound' UNION ALL
SELECT 34, N'SVC', N'El Salvador Colon' UNION ALL
SELECT 35, N'AED', N'Emirati Dirham' UNION ALL
SELECT 36, N'EUR', N'EURO' UNION ALL
SELECT 37, N'FJD', N'Fiji Dollar' UNION ALL
SELECT 38, N'HUF', N'Forint' UNION ALL
SELECT 39, N'FRF', N'French Franc' UNION ALL
SELECT 40, N'PYG', N'Guarani' UNION ALL
SELECT 41, N'HKD', N'Hong Kong Dollar' UNION ALL
SELECT 42, N'ISK', N'Iceland Krona' UNION ALL
SELECT 43, N'INR', N'Indian Rupee' UNION ALL
SELECT 44, N'IEP', N'Irish Pound' UNION ALL
SELECT 45, N'ITL', N'Italian Lira' UNION ALL
SELECT 46, N'JMD', N'Jamaican Dollar' UNION ALL
SELECT 47, N'JOD', N'Jordanian Dinar' UNION ALL
SELECT 48, N'KES', N'Kenyan Shilling' UNION ALL
SELECT 49, N'EEK', N'Kroon' UNION ALL
SELECT 50, N'KWD', N'Kuwaiti Dinar' UNION ALL
SELECT 51, N'AOA', N'Kwanza' UNION ALL
SELECT 52, N'LVL', N'Latvian Lats' UNION ALL
SELECT 53, N'LBP', N'Lebanese Pound' UNION ALL
SELECT 54, N'ALL', N'Lek' UNION ALL
SELECT 55, N'ROL', N'Leu' UNION ALL
SELECT 56, N'LTL', N'Lithuanian Litas' UNION ALL
SELECT 57, N'MYR', N'Malaysian Ringgit' UNION ALL
SELECT 58, N'MTL', N'Maltese Lira' UNION ALL
SELECT 59, N'FIM', N'Markka' UNION ALL
SELECT 60, N'MUR', N'Mauritius Rupee' UNION ALL
SELECT 61, N'MXN', N'Mexican Peso' UNION ALL
SELECT 62, N'MAD', N'Moroccan Dirham' UNION ALL
SELECT 63, N'NGN', N'Naira' UNION ALL
SELECT 64, N'NAD', N'Namibia Dollar' UNION ALL
SELECT 65, N'NPR', N'Nepalese Rupee' UNION ALL
SELECT 66, N'ANG', N'Netherlands Antillian Guilder' UNION ALL
SELECT 67, N'NLG', N'Netherlands Guilder' UNION ALL
SELECT 68, N'ILS', N'New Israeli Shekel' UNION ALL
SELECT 69, N'TWD', N'New Taiwan Dollar' UNION ALL
SELECT 70, N'NZD', N'New Zealand Dollar' UNION ALL
SELECT 71, N'BTN', N'Ngultrum' UNION ALL
SELECT 72, N'NOK', N'Norwegian Krone' UNION ALL
SELECT 73, N'PEN', N'Nuevo Sol' UNION ALL
SELECT 74, N'OMR', N'Omani Rial' UNION ALL
SELECT 75, N'PKR', N'Pakistan Rupee' UNION ALL
SELECT 76, N'PHP', N'Philippine Peso' UNION ALL
SELECT 77, N'PLZ', N'Polish Zloty(old)' UNION ALL
SELECT 78, N'PTE', N'Portuguese Escudo' UNION ALL
SELECT 79, N'GTQ', N'Quetzal' UNION ALL
SELECT 80, N'ZAR', N'Rand' UNION ALL
SELECT 81, N'MVR', N'Rufiyaa' UNION ALL
SELECT 82, N'IDR', N'Rupiah' UNION ALL
SELECT 83, N'RUB', N'Russian Ruble' UNION ALL
SELECT 84, N'RUR', N'Russian Ruble(old)' UNION ALL
SELECT 85, N'SAR', N'Saudi Riyal' UNION ALL
SELECT 86, N'ATS', N'Shilling' UNION ALL
SELECT 87, N'SGD', N'Singapore Dollar' UNION ALL
SELECT 88, N'SKK', N'Slovak Koruna' UNION ALL
SELECT 89, N'ESP', N'Spanish Peseta' UNION ALL
SELECT 90, N'LKR', N'Sri Lankan Rupee' UNION ALL
SELECT 91, N'SEK', N'Swedish Krona' UNION ALL
SELECT 92, N'CHF', N'Swiss Franc' UNION ALL
SELECT 93, N'BDT', N'Taka' UNION ALL
SELECT 94, N'SIT', N'Tolar' UNION ALL
SELECT 95, N'TTD', N'Trinidad and Tobago Dollar' UNION ALL
SELECT 96, N'TND', N'Tunisian Dinar' UNION ALL
SELECT 97, N'TRL', N'Turkish Lira' UNION ALL
SELECT 98, N'GBP', N'United Kingdom Pound' UNION ALL
SELECT 99, N'UYU', N'Uruguayan Peso' UNION ALL
SELECT 100, N'USD', N'US Dollar' UNION ALL
SELECT 101, N'KRW', N'Won' UNION ALL
SELECT 102, N'JPY', N'Yen' UNION ALL
SELECT 103, N'CNY', N'Yuan Renminbi' UNION ALL
SELECT 104, N'ZWD', N'Zimbabwe Dollar' UNION ALL
SELECT 105, N'PLN', N'Zloty';

COMMIT;