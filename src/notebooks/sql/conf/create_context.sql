CREATE TABLE IF NOT EXISTS `Clients` (
  `ClientID` int PRIMARY KEY AUTO_INCREMENT,
  `ClientName` varchar(100),
  `Address1` varchar(100),
  `Address2` varchar(100),
  `Town` varchar(100),
  `Country` varchar(100),
  `PostCode` varchar(100),
  `Region` varchar(100),
  `OuterPostCode` varchar(20),
  `CountryID` int,
  `ClientType` varchar(20),
  `ClientSize` varchar(20),
  `ClientSince` datetime,
  `IsCreditWorthy` boolean,
  `IsDealer` boolean
);

CREATE TABLE IF NOT EXISTS `Colors` (
  `ColorID` int PRIMARY KEY AUTO_INCREMENT,
  `Color` varchar(100)
);

CREATE TABLE IF NOT EXISTS `Countries` (
  `CountryID` int PRIMARY KEY AUTO_INCREMENT,
  `CountryName` varchar(100),
  `CountryISOCode` varchar(100)
);

CREATE TABLE IF NOT EXISTS `Stock` (
  `StockID` int PRIMARY KEY AUTO_INCREMENT,
  `Make` varchar(100),
  `Model` varchar(100),
  `ColorID` int,
  `VehicleType` varchar(100),
  `CostPrice` int,
  `SpareParts` int,
  `LaborCost` int,
  `Registration_Date` date,
  `PurchaseDate` date,
  `VehicleAgeInYears` int
);

CREATE TABLE IF NOT EXISTS `Invoices` (
  `InvoiceID` int PRIMARY KEY AUTO_INCREMENT,
  `InvoiceNumber` varchar(100),
  `ClientID` int,
  `InvoiceDate` datetime,
  `TotalDiscount` int,
  `DeliveryCharge` int,
  `InvoiceDateKey` int
);

CREATE TABLE IF NOT EXISTS `InvoiceLines` (
  `InvoiceLineID` int PRIMARY KEY AUTO_INCREMENT,
  `InvoiceId` int,
  `StockId` int,
  `SalePrice` int,
  `LineItem` int
);

CREATE TABLE IF NOT EXISTS `DateDimension` (
  `DateKey` date PRIMARY KEY,
  `Year` int,
  `MonthNum` int,
  `MonthFull` varchar(20),
  `MonthAbbr` varchar(20),
  `QuarterNum` int,
  `QuarterFull` varchar(100),
  `QuarterAbbr` varchar(20),
  `YearAndQuarterNum` int,
  `QuarterAbbrAndYear` varchar(100),
  `MonthAbbrAndYear` varchar(100),
  `MonthAndYear` varchar(100),
  `MonthName` varchar(20),
  `MonthNameAbbr` varchar(20),
  `QuarterAndYear` varchar(100),
  `QuarterAndYearAbbr2` varchar(100),
  `YearAndMonthNum` int
);

ALTER TABLE `Clients` ADD FOREIGN KEY (`CountryID`) REFERENCES `Countries` (`CountryID`);

ALTER TABLE `Clients` ADD FOREIGN KEY (`ClientSince`) REFERENCES `DateDimension` (`DateKey`);

ALTER TABLE `Stock` ADD FOREIGN KEY (`ColorID`) REFERENCES `Colors` (`ColorID`);

ALTER TABLE `Stock` ADD FOREIGN KEY (`Registration_Date`) REFERENCES `DateDimension` (`DateKey`);

ALTER TABLE `Stock` ADD FOREIGN KEY (`PurchaseDate`) REFERENCES `DateDimension` (`DateKey`);

ALTER TABLE `Invoices` ADD FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`ClientID`);

ALTER TABLE `Invoices` ADD FOREIGN KEY (`InvoiceDate`) REFERENCES `DateDimension` (`DateKey`);

ALTER TABLE `InvoiceLines` ADD FOREIGN KEY (`InvoiceId`) REFERENCES `Invoices` (`InvoiceID`);

ALTER TABLE `InvoiceLines` ADD FOREIGN KEY (`StockId`) REFERENCES `Stock` (`StockID`);
