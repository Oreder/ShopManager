CREATE DATABASE ShopManagerDB
GO

DROP DATABASE ShopManagerDB
GO

USE ShopManagerDB
GO

-- Product
IF OBJECT_ID('Product') IS NOT NULL
	DROP TABLE dbo.Product;
GO
CREATE TABLE Product
(
	ProductID INT IDENTITY(1, 1) PRIMARY KEY,
	ProductCategoryID INT NOT NULL,
	ProductName NVARCHAR(100) NOT NULL DEFAULT N'Unknown',
	ProductPrice FLOAT NOT NULL DEFAULT 0
)
GO

-- ProductCategory
IF OBJECT_ID('Category') IS NOT NULL
	DROP TABLE dbo.Category;
GO
CREATE TABLE Category
(
	CategoryID INT IDENTITY(1, 1) PRIMARY KEY,
	CategoryName NVARCHAR(100) NOT NULL DEFAULT N'Unknown'
)
GO

-- Table
CREATE TABLE [Table]
(
	TableID INT IDENTITY(1, 1) PRIMARY KEY,
	TableName NVARCHAR(100) NOT NULL DEFAULT N'No name',
	TableStatus NVARCHAR(10) NOT NULL DEFAULT N'Free' -- Free | Busy
)
GO

-- Account
CREATE TABLE Account
()
GO

-- Bill
CREATE TABLE Bill
()
GO

-- BillInfo
CREATE TABLE BillInfo
()
GO