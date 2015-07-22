
GO
SET IDENTITY_INSERT dbo.AWBuildVersion ON;

MERGE INTO dbo.AWBuildVersion
 AS TARGET
USING (VALUES (1, '11.0.2100.60', '3/14/2012 12:00:00 AM', '3/14/2012 12:00:00 AM')) AS SOURCE(SystemInformationID, [Database Version], VersionDate, ModifiedDate) ON SOURCE.[SystemInformationID] = TARGET.[SystemInformationID]
WHEN NOT MATCHED BY TARGET THEN INSERT (SystemInformationID, [Database Version], VersionDate, ModifiedDate) VALUES (SOURCE.SystemInformationID, SOURCE.[Database Version], SOURCE.VersionDate, SOURCE.ModifiedDate)
WHEN MATCHED AND (NULLIF (SOURCE.ModifiedDate, TARGET.ModifiedDate) IS NOT NULL
                  OR NULLIF (SOURCE.VersionDate, TARGET.VersionDate) IS NOT NULL
                  OR NULLIF (SOURCE.[Database Version], TARGET.[Database Version]) IS NOT NULL
                  OR NULLIF (SOURCE.SystemInformationID, TARGET.SystemInformationID) IS NOT NULL) THEN UPDATE 
SET 
    TARGET.[Database Version]    = SOURCE.[Database Version],
    TARGET.VersionDate         = SOURCE.VersionDate,
    TARGET.ModifiedDate        = SOURCE.ModifiedDate
WHEN NOT MATCHED BY SOURCE THEN DELETE;

SET IDENTITY_INSERT dbo.AWBuildVersion OFF;
GO
SET IDENTITY_INSERT Person.AddressType ON;

MERGE INTO Person.AddressType
 AS TARGET
USING (VALUES (1, 'Billing', 'b84f78b1-4efe-4a0e-8cb7-70e9f112f886', '6/1/2002 12:00:00 AM'), (2, 'Home', '41bc2ff6-f0fc-475f-8eb9-cec0805aa0f2', '6/1/2002 12:00:00 AM'), (3, 'Main Office', '8eeec28c-07a2-4fb9-ad0a-42d4a0bbc575', '6/1/2002 12:00:00 AM'), (4, 'Primary', '24cb3088-4345-47c4-86c5-17b535133d1e', '6/1/2002 12:00:00 AM'), (5, 'Shipping', 'b29da3f8-19a3-47da-9daa-15c84f4a83a5', '6/1/2002 12:00:00 AM'), (6, 'Archive', 'a67f238a-5ba2-444b-966c-0467ed9c427f', '6/1/2002 12:00:00 AM')) AS SOURCE(AddressTypeID, Name, rowguid, ModifiedDate) ON SOURCE.[AddressTypeID] = TARGET.[AddressTypeID]
WHEN NOT MATCHED BY TARGET THEN INSERT (AddressTypeID, Name, rowguid, ModifiedDate) VALUES (SOURCE.AddressTypeID, SOURCE.Name, SOURCE.rowguid, SOURCE.ModifiedDate)
WHEN MATCHED AND (NULLIF (SOURCE.ModifiedDate, TARGET.ModifiedDate) IS NOT NULL
                  OR NULLIF (SOURCE.rowguid, TARGET.rowguid) IS NOT NULL
                  OR NULLIF (SOURCE.Name, TARGET.Name) IS NOT NULL
                  OR NULLIF (SOURCE.AddressTypeID, TARGET.AddressTypeID) IS NOT NULL) THEN UPDATE 
SET 
    TARGET.Name          = SOURCE.Name,
    TARGET.rowguid       = SOURCE.rowguid,
    TARGET.ModifiedDate  = SOURCE.ModifiedDate
WHEN NOT MATCHED BY SOURCE THEN DELETE;

SET IDENTITY_INSERT Person.AddressType OFF;
GO
SET IDENTITY_INSERT Person.ContactType ON;

MERGE INTO Person.ContactType
 AS TARGET
USING (VALUES (1, 'Accounting Manager', '6/1/2002 12:00:00 AM'), (2, 'Assistant Sales Agent', '6/1/2002 12:00:00 AM'), (3, 'Assistant Sales Representative', '6/1/2002 12:00:00 AM'), (4, 'Coordinator Foreign Markets', '6/1/2002 12:00:00 AM'), (5, 'Export Administrator', '6/1/2002 12:00:00 AM'), (6, 'International Marketing Manager', '6/1/2002 12:00:00 AM'), (7, 'Marketing Assistant', '6/1/2002 12:00:00 AM'), (8, 'Marketing Manager', '6/1/2002 12:00:00 AM'), (9, 'Marketing Representative', '6/1/2002 12:00:00 AM'), (10, 'Order Administrator', '6/1/2002 12:00:00 AM'), (11, 'Owner', '6/1/2002 12:00:00 AM'), (12, 'Owner/Marketing Assistant', '6/1/2002 12:00:00 AM'), (13, 'Product Manager', '6/1/2002 12:00:00 AM'), (14, 'Purchasing Agent', '6/1/2002 12:00:00 AM'), (15, 'Purchasing Manager', '6/1/2002 12:00:00 AM'), (16, 'Regional Account Representative', '6/1/2002 12:00:00 AM'), (17, 'Sales Agent', '6/1/2002 12:00:00 AM'), (18, 'Sales Associate', '6/1/2002 12:00:00 AM'), (19, 'Sales Manager', '6/1/2002 12:00:00 AM'), (20, 'Sales Representative', '6/1/2002 12:00:00 AM')) AS SOURCE(ContactTypeID, Name, ModifiedDate) ON SOURCE.[ContactTypeID] = TARGET.[ContactTypeID]
WHEN NOT MATCHED BY TARGET THEN INSERT (ContactTypeID, Name, ModifiedDate) VALUES (SOURCE.ContactTypeID, SOURCE.Name, SOURCE.ModifiedDate)
WHEN MATCHED AND (NULLIF (SOURCE.ModifiedDate, TARGET.ModifiedDate) IS NOT NULL
                  OR NULLIF (SOURCE.Name, TARGET.Name) IS NOT NULL
                  OR NULLIF (SOURCE.ContactTypeID, TARGET.ContactTypeID) IS NOT NULL) THEN UPDATE 
SET 
    TARGET.Name          = SOURCE.Name,
    TARGET.ModifiedDate  = SOURCE.ModifiedDate
WHEN NOT MATCHED BY SOURCE THEN DELETE;

SET IDENTITY_INSERT Person.ContactType OFF;
GO
SET IDENTITY_INSERT Person.PhoneNumberType ON;

MERGE INTO Person.PhoneNumberType
 AS TARGET
USING (VALUES (1, 'Cell', '1/14/2012 1:19:22 PM'), (2, 'Home', '1/14/2012 1:19:22 PM'), (3, 'Work', '1/14/2012 1:19:22 PM')) AS SOURCE(PhoneNumberTypeID, Name, ModifiedDate) ON SOURCE.[PhoneNumberTypeID] = TARGET.[PhoneNumberTypeID]
WHEN NOT MATCHED BY TARGET THEN INSERT (PhoneNumberTypeID, Name, ModifiedDate) VALUES (SOURCE.PhoneNumberTypeID, SOURCE.Name, SOURCE.ModifiedDate)
WHEN MATCHED AND (NULLIF (SOURCE.ModifiedDate, TARGET.ModifiedDate) IS NOT NULL
                  OR NULLIF (SOURCE.Name, TARGET.Name) IS NOT NULL
                  OR NULLIF (SOURCE.PhoneNumberTypeID, TARGET.PhoneNumberTypeID) IS NOT NULL) THEN UPDATE 
SET 
    TARGET.Name              = SOURCE.Name,
    TARGET.ModifiedDate      = SOURCE.ModifiedDate
WHEN NOT MATCHED BY SOURCE THEN DELETE;

SET IDENTITY_INSERT Person.PhoneNumberType OFF;
GO
MERGE INTO Production.Culture
 AS TARGET
USING (VALUES ('      ', 'Invariant Language (Invariant Country)', '6/1/2002 12:00:00 AM'), ('ar    ', 'Arabic', '6/1/2002 12:00:00 AM'), ('en    ', 'English', '6/1/2002 12:00:00 AM'), ('es    ', 'Spanish', '6/1/2002 12:00:00 AM'), ('fr    ', 'French', '6/1/2002 12:00:00 AM'), ('he    ', 'Hebrew', '6/1/2002 12:00:00 AM'), ('th    ', 'Thai', '6/1/2002 12:00:00 AM'), ('zh-cht', 'Chinese', '6/1/2002 12:00:00 AM')) AS SOURCE(CultureID, Name, ModifiedDate) ON SOURCE.[CultureID] = TARGET.[CultureID]
WHEN NOT MATCHED BY TARGET THEN INSERT (CultureID, Name, ModifiedDate) VALUES (SOURCE.CultureID, SOURCE.Name, SOURCE.ModifiedDate)
WHEN MATCHED AND (NULLIF (SOURCE.ModifiedDate, TARGET.ModifiedDate) IS NOT NULL
                  OR NULLIF (SOURCE.Name, TARGET.Name) IS NOT NULL
                  OR NULLIF (SOURCE.CultureID, TARGET.CultureID) IS NOT NULL) THEN UPDATE 
SET TARGET.CultureID    = SOURCE.CultureID,
    TARGET.Name         = SOURCE.Name,
    TARGET.ModifiedDate = SOURCE.ModifiedDate
WHEN NOT MATCHED BY SOURCE THEN DELETE;
GO
MERGE INTO Production.UnitMeasure
 AS TARGET
USING (VALUES ('BOX', 'Boxes', '6/1/2002 12:00:00 AM'), ('BTL', 'Bottle', '6/1/2002 12:00:00 AM'), ('C  ', 'Celsius', '6/1/2002 12:00:00 AM'), ('CAN', 'Canister', '6/1/2002 12:00:00 AM'), ('CAR', 'Carton', '6/1/2002 12:00:00 AM'), ('CBM', 'Cubic meters', '6/1/2002 12:00:00 AM'), ('CCM', 'Cubic centimeter', '6/1/2002 12:00:00 AM'), ('CDM', 'Cubic decimeter', '6/1/2002 12:00:00 AM'), ('CM ', 'Centimeter', '6/1/2002 12:00:00 AM'), ('CM2', 'Square centimeter', '6/1/2002 12:00:00 AM'), ('CR ', 'Crate', '6/1/2002 12:00:00 AM'), ('CS ', 'Case', '6/1/2002 12:00:00 AM'), ('CTN', 'Container', '6/1/2002 12:00:00 AM'), ('DM ', 'Decimeter', '6/1/2002 12:00:00 AM'), ('DZ ', 'Dozen', '6/1/2002 12:00:00 AM'), ('EA ', 'Each', '6/1/2002 12:00:00 AM'), ('FT3', 'Cubic foot', '6/1/2002 12:00:00 AM'), ('G  ', 'Gram', '6/1/2002 12:00:00 AM'), ('GAL', 'Gallon', '6/1/2002 12:00:00 AM'), ('IN ', 'Inch', '6/1/2002 12:00:00 AM'), ('KG ', 'Kilogram', '6/1/2002 12:00:00 AM'), ('KGV', 'Kilogram/cubic meter', '6/1/2002 12:00:00 AM'), ('KM ', 'Kilometer', '6/1/2002 12:00:00 AM'), ('KT ', 'Kiloton', '6/1/2002 12:00:00 AM'), ('L  ', 'Liter', '6/1/2002 12:00:00 AM'), ('LB ', 'US pound', '6/1/2002 12:00:00 AM'), ('M  ', 'Meter', '6/1/2002 12:00:00 AM'), ('M2 ', 'Square meter', '6/1/2002 12:00:00 AM'), ('M3 ', 'Cubic meter', '6/1/2002 12:00:00 AM'), ('MG ', 'Milligram', '6/1/2002 12:00:00 AM'), ('ML ', 'Milliliter', '6/1/2002 12:00:00 AM'), ('MM ', 'Millimeter', '6/1/2002 12:00:00 AM'), ('OZ ', 'Ounces', '6/1/2002 12:00:00 AM'), ('PAK', 'Pack', '6/1/2002 12:00:00 AM'), ('PAL', 'Pallet', '6/1/2002 12:00:00 AM'), ('PC ', 'Piece', '6/1/2002 12:00:00 AM'), ('PCT', 'Percentage', '6/1/2002 12:00:00 AM'), ('PT ', 'Pint, US liquid', '6/1/2002 12:00:00 AM')) AS SOURCE(UnitMeasureCode, Name, ModifiedDate) ON SOURCE.[UnitMeasureCode] = TARGET.[UnitMeasureCode]
WHEN NOT MATCHED BY TARGET THEN INSERT (UnitMeasureCode, Name, ModifiedDate) VALUES (SOURCE.UnitMeasureCode, SOURCE.Name, SOURCE.ModifiedDate)
WHEN MATCHED AND (NULLIF (SOURCE.ModifiedDate, TARGET.ModifiedDate) IS NOT NULL
                  OR NULLIF (SOURCE.Name, TARGET.Name) IS NOT NULL
                  OR NULLIF (SOURCE.UnitMeasureCode, TARGET.UnitMeasureCode) IS NOT NULL) THEN UPDATE 
SET TARGET.UnitMeasureCode = SOURCE.UnitMeasureCode,
    TARGET.Name            = SOURCE.Name,
    TARGET.ModifiedDate    = SOURCE.ModifiedDate
WHEN NOT MATCHED BY SOURCE THEN DELETE;
GO
SET IDENTITY_INSERT Purchasing.ShipMethod ON;

MERGE INTO Purchasing.ShipMethod
 AS TARGET
USING (VALUES (1, 'XRQ - TRUCK GROUND', 3.9500, 0.9900, '6be756d9-d7be-4463-8f2c-ae60c710d606', '6/1/2002 12:00:00 AM'), (2, 'ZY - EXPRESS', 9.9500, 1.9900, '3455079b-f773-4dc6-8f1e-2a58649c4ab8', '6/1/2002 12:00:00 AM'), (3, 'OVERSEAS - DELUXE', 29.9500, 2.9900, '22f4e461-28cf-4ace-a980-f686cf112ec8', '6/1/2002 12:00:00 AM'), (4, 'OVERNIGHT J-FAST', 21.9500, 1.2900, '107e8356-e7a8-463d-b60c-079fff467f3f', '6/1/2002 12:00:00 AM'), (5, 'CARGO TRANSPORT 5', 8.9900, 1.4900, 'b166019a-b134-4e76-b957-2b0490c610ed', '6/1/2002 12:00:00 AM')) AS SOURCE(ShipMethodID, Name, ShipBase, ShipRate, rowguid, ModifiedDate) ON SOURCE.[ShipMethodID] = TARGET.[ShipMethodID]
WHEN NOT MATCHED BY TARGET THEN INSERT (ShipMethodID, Name, ShipBase, ShipRate, rowguid, ModifiedDate) VALUES (SOURCE.ShipMethodID, SOURCE.Name, SOURCE.ShipBase, SOURCE.ShipRate, SOURCE.rowguid, SOURCE.ModifiedDate)
WHEN MATCHED AND (NULLIF (SOURCE.ModifiedDate, TARGET.ModifiedDate) IS NOT NULL
                  OR NULLIF (SOURCE.rowguid, TARGET.rowguid) IS NOT NULL
                  OR NULLIF (SOURCE.ShipRate, TARGET.ShipRate) IS NOT NULL
                  OR NULLIF (SOURCE.ShipBase, TARGET.ShipBase) IS NOT NULL
                  OR NULLIF (SOURCE.Name, TARGET.Name) IS NOT NULL
                  OR NULLIF (SOURCE.ShipMethodID, TARGET.ShipMethodID) IS NOT NULL) THEN UPDATE 
SET 
    TARGET.Name         = SOURCE.Name,
    TARGET.ShipBase     = SOURCE.ShipBase,
    TARGET.ShipRate     = SOURCE.ShipRate,
    TARGET.rowguid      = SOURCE.rowguid,
    TARGET.ModifiedDate = SOURCE.ModifiedDate
WHEN NOT MATCHED BY SOURCE THEN DELETE;

SET IDENTITY_INSERT Purchasing.ShipMethod OFF;
GO
MERGE INTO Sales.Currency
 AS TARGET
USING (VALUES ('AED', 'Emirati Dirham', '6/1/2002 12:00:00 AM'), ('AFA', 'Afghani', '6/1/2002 12:00:00 AM'), ('ALL', 'Lek', '6/1/2002 12:00:00 AM'), ('AMD', 'Armenian Dram', '6/1/2002 12:00:00 AM'), ('ANG', 'Netherlands Antillian Guilder', '6/1/2002 12:00:00 AM'), ('AOA', 'Kwanza', '6/1/2002 12:00:00 AM'), ('ARS', 'Argentine Peso', '6/1/2002 12:00:00 AM'), ('ATS', 'Shilling', '6/1/2002 12:00:00 AM'), ('AUD', 'Australian Dollar', '6/1/2002 12:00:00 AM'), ('AWG', 'Aruban Guilder', '6/1/2002 12:00:00 AM'), ('AZM', 'Azerbaijanian Manat', '6/1/2002 12:00:00 AM'), ('BBD', 'Barbados Dollar', '6/1/2002 12:00:00 AM'), ('BDT', 'Taka', '6/1/2002 12:00:00 AM'), ('BEF', 'Belgian Franc', '6/1/2002 12:00:00 AM'), ('BGN', 'Bulgarian Lev', '6/1/2002 12:00:00 AM'), ('BHD', 'Bahraini Dinar', '6/1/2002 12:00:00 AM'), ('BND', 'Brunei Dollar', '6/1/2002 12:00:00 AM'), ('BOB', 'Boliviano', '6/1/2002 12:00:00 AM'), ('BRL', 'Brazilian Real', '6/1/2002 12:00:00 AM'), ('BSD', 'Bahamian Dollar', '6/1/2002 12:00:00 AM'), ('BTN', 'Ngultrum', '6/1/2002 12:00:00 AM'), ('CAD', 'Canadian Dollar', '6/1/2002 12:00:00 AM'), ('CHF', 'Swiss Franc', '6/1/2002 12:00:00 AM'), ('CLP', 'Chilean Peso', '6/1/2002 12:00:00 AM'), ('CNY', 'Yuan Renminbi', '6/1/2002 12:00:00 AM'), ('COP', 'Colombian Peso', '6/1/2002 12:00:00 AM'), ('CRC', 'Costa Rican Colon', '6/1/2002 12:00:00 AM'), ('CYP', 'Cyprus Pound', '6/1/2002 12:00:00 AM'), ('CZK', 'Czech Koruna', '6/1/2002 12:00:00 AM'), ('DEM', 'Deutsche Mark', '6/1/2002 12:00:00 AM'), ('DKK', 'Danish Krone', '6/1/2002 12:00:00 AM'), ('DOP', 'Dominican Peso', '6/1/2002 12:00:00 AM'), ('DZD', 'Algerian Dinar', '6/1/2002 12:00:00 AM'), ('EEK', 'Kroon', '6/1/2002 12:00:00 AM'), ('EGP', 'Egyptian Pound', '6/1/2002 12:00:00 AM'), ('ESP', 'Spanish Peseta', '6/1/2002 12:00:00 AM'), ('EUR', 'EURO', '6/1/2002 12:00:00 AM'), ('FIM', 'Markka', '6/1/2002 12:00:00 AM'), ('FJD', 'Fiji Dollar', '6/1/2002 12:00:00 AM'), ('FRF', 'French Franc', '6/1/2002 12:00:00 AM'), ('GBP', 'United Kingdom Pound', '6/1/2002 12:00:00 AM'), ('GHC', 'Cedi', '6/1/2002 12:00:00 AM'), ('GRD', 'Drachma', '6/1/2002 12:00:00 AM'), ('GTQ', 'Quetzal', '6/1/2002 12:00:00 AM'), ('HKD', 'Hong Kong Dollar', '6/1/2002 12:00:00 AM'), ('HRK', 'Croatian Kuna', '6/1/2002 12:00:00 AM'), ('HUF', 'Forint', '6/1/2002 12:00:00 AM'), ('IDR', 'Rupiah', '6/1/2002 12:00:00 AM'), ('IEP', 'Irish Pound', '6/1/2002 12:00:00 AM'), ('ILS', 'New Israeli Shekel', '6/1/2002 12:00:00 AM'), ('INR', 'Indian Rupee', '6/1/2002 12:00:00 AM'), ('ISK', 'Iceland Krona', '6/1/2002 12:00:00 AM'), ('ITL', 'Italian Lira', '6/1/2002 12:00:00 AM'), ('JMD', 'Jamaican Dollar', '6/1/2002 12:00:00 AM'), ('JOD', 'Jordanian Dinar', '6/1/2002 12:00:00 AM'), ('JPY', 'Yen', '6/1/2002 12:00:00 AM'), ('KES', 'Kenyan Shilling', '6/1/2002 12:00:00 AM'), ('KRW', 'Won', '6/1/2002 12:00:00 AM'), ('KWD', 'Kuwaiti Dinar', '6/1/2002 12:00:00 AM'), ('LBP', 'Lebanese Pound', '6/1/2002 12:00:00 AM'), ('LKR', 'Sri Lankan Rupee', '6/1/2002 12:00:00 AM'), ('LTL', 'Lithuanian Litas', '6/1/2002 12:00:00 AM'), ('LVL', 'Latvian Lats', '6/1/2002 12:00:00 AM'), ('MAD', 'Moroccan Dirham', '6/1/2002 12:00:00 AM'), ('MTL', 'Maltese Lira', '6/1/2002 12:00:00 AM'), ('MUR', 'Mauritius Rupee', '6/1/2002 12:00:00 AM'), ('MVR', 'Rufiyaa', '6/1/2002 12:00:00 AM'), ('MXN', 'Mexican Peso', '6/1/2002 12:00:00 AM'), ('MYR', 'Malaysian Ringgit', '6/1/2002 12:00:00 AM'), ('NAD', 'Namibia Dollar', '6/1/2002 12:00:00 AM'), ('NGN', 'Naira', '6/1/2002 12:00:00 AM'), ('NLG', 'Netherlands Guilder', '6/1/2002 12:00:00 AM'), ('NOK', 'Norwegian Krone', '6/1/2002 12:00:00 AM'), ('NPR', 'Nepalese Rupee', '6/1/2002 12:00:00 AM'), ('NZD', 'New Zealand Dollar', '6/1/2002 12:00:00 AM'), ('OMR', 'Omani Rial', '6/1/2002 12:00:00 AM'), ('PAB', 'Balboa', '6/1/2002 12:00:00 AM'), ('PEN', 'Nuevo Sol', '6/1/2002 12:00:00 AM'), ('PHP', 'Philippine Peso', '6/1/2002 12:00:00 AM'), ('PKR', 'Pakistan Rupee', '6/1/2002 12:00:00 AM'), ('PLN', 'Zloty', '6/1/2002 12:00:00 AM'), ('PLZ', 'Polish Zloty(old)', '6/1/2002 12:00:00 AM'), ('PTE', 'Portuguese Escudo', '6/1/2002 12:00:00 AM'), ('PYG', 'Guarani', '6/1/2002 12:00:00 AM'), ('ROL', 'Leu', '6/1/2002 12:00:00 AM'), ('RUB', 'Russian Ruble', '6/1/2002 12:00:00 AM'), ('RUR', 'Russian Ruble(old)', '6/1/2002 12:00:00 AM'), ('SAR', 'Saudi Riyal', '6/1/2002 12:00:00 AM'), ('SEK', 'Swedish Krona', '6/1/2002 12:00:00 AM'), ('SGD', 'Singapore Dollar', '6/1/2002 12:00:00 AM'), ('SIT', 'Tolar', '6/1/2002 12:00:00 AM'), ('SKK', 'Slovak Koruna', '6/1/2002 12:00:00 AM'), ('SVC', 'El Salvador Colon', '6/1/2002 12:00:00 AM'), ('THB', 'Baht', '6/1/2002 12:00:00 AM'), ('TND', 'Tunisian Dinar', '6/1/2002 12:00:00 AM'), ('TRL', 'Turkish Lira', '6/1/2002 12:00:00 AM'), ('TTD', 'Trinidad and Tobago Dollar', '6/1/2002 12:00:00 AM'), ('TWD', 'New Taiwan Dollar', '6/1/2002 12:00:00 AM'), ('USD', 'US Dollar', '6/1/2002 12:00:00 AM'), ('UYU', 'Uruguayan Peso', '6/1/2002 12:00:00 AM'), ('VEB', 'Bolivar', '6/1/2002 12:00:00 AM'), ('VND', 'Dong', '6/1/2002 12:00:00 AM'), ('XOF', 'CFA Franc BCEAO', '6/1/2002 12:00:00 AM'), ('ZAR', 'Rand', '6/1/2002 12:00:00 AM'), ('ZWD', 'Zimbabwe Dollar', '6/1/2002 12:00:00 AM')) AS SOURCE(CurrencyCode, Name, ModifiedDate) ON SOURCE.[CurrencyCode] = TARGET.[CurrencyCode]
WHEN NOT MATCHED BY TARGET THEN INSERT (CurrencyCode, Name, ModifiedDate) VALUES (SOURCE.CurrencyCode, SOURCE.Name, SOURCE.ModifiedDate)
WHEN MATCHED AND (NULLIF (SOURCE.ModifiedDate, TARGET.ModifiedDate) IS NOT NULL
                  OR NULLIF (SOURCE.Name, TARGET.Name) IS NOT NULL
                  OR NULLIF (SOURCE.CurrencyCode, TARGET.CurrencyCode) IS NOT NULL) THEN UPDATE 
SET TARGET.CurrencyCode = SOURCE.CurrencyCode,
    TARGET.Name         = SOURCE.Name,
    TARGET.ModifiedDate = SOURCE.ModifiedDate
WHEN NOT MATCHED BY SOURCE THEN DELETE;
GO