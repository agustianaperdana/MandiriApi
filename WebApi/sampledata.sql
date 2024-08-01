/*
Navicat SQL Server Data Transfer

Source Server         : localsqlserver
Source Server Version : 160000
Source Host           : DESKTOP-OI4B2IM:1433
Source Database       : Mandiri
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 160000
File Encoding         : 65001

Date: 2024-08-01 10:25:22
*/


-- ----------------------------
-- Table structure for __EFMigrationsHistory
-- ----------------------------
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
CREATE TABLE [dbo].[__EFMigrationsHistory] (
[MigrationId] nvarchar(150) NOT NULL ,
[ProductVersion] nvarchar(32) NOT NULL 
)


GO

-- ----------------------------
-- Records of __EFMigrationsHistory
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE [dbo].[orders]
GO
CREATE TABLE [dbo].[orders] (
[order_id] int NOT NULL IDENTITY(1,1) ,
[user_id] int NOT NULL ,
[product_id] int NOT NULL ,
[order_date] date NOT NULL ,
[total_item] int NOT NULL ,
[total_order_price] int NOT NULL ,
[created_by] varchar(255) NULL ,
[created_time] datetime NULL DEFAULT (getdate()) ,
[modified_by] varchar(255) NULL ,
[modified_time] datetime NULL DEFAULT (getdate()) 
)


GO

-- ----------------------------
-- Records of orders
-- ----------------------------
SET IDENTITY_INSERT [dbo].[orders] ON
GO
INSERT INTO [dbo].[orders] ([order_id], [user_id], [product_id], [order_date], [total_item], [total_order_price], [created_by], [created_time], [modified_by], [modified_time]) VALUES (N'1', N'1', N'1', N'1-01-01', N'90', N'80000', null, N'2024-08-01 09:06:18.957', null, N'2024-08-01 09:06:19.013')
GO
GO
SET IDENTITY_INSERT [dbo].[orders] OFF
GO

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE [dbo].[product]
GO
CREATE TABLE [dbo].[product] (
[product_id] int NOT NULL IDENTITY(1,1) ,
[name_product] varchar(255) NOT NULL ,
[price] int NOT NULL ,
[created_by] varchar(255) NULL ,
[created_time] datetime NULL DEFAULT (getdate()) ,
[modified_by] varchar(255) NULL ,
[modified_time] datetime NULL DEFAULT (getdate()) 
)


GO

-- ----------------------------
-- Records of product
-- ----------------------------
SET IDENTITY_INSERT [dbo].[product] ON
GO
INSERT INTO [dbo].[product] ([product_id], [name_product], [price], [created_by], [created_time], [modified_by], [modified_time]) VALUES (N'1', N'test', N'9000', N'Admin', N'2024-08-01 09:03:38.700', N'Admin', N'2024-08-01 09:03:38.700')
GO
GO
SET IDENTITY_INSERT [dbo].[product] OFF
GO

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE [dbo].[user]
GO
CREATE TABLE [dbo].[user] (
[user_id] int NOT NULL IDENTITY(1,1) ,
[fullname] varchar(255) NOT NULL ,
[password] varchar(255) NOT NULL ,
[username] varchar(255) NOT NULL ,
[created_time] datetime NULL DEFAULT (getdate()) ,
[modified_time] datetime NULL DEFAULT (getdate()) ,
[created_by] varchar(50) NULL ,
[modified_by] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[user]', RESEED, 2)
GO

-- ----------------------------
-- Records of user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[user] ON
GO
INSERT INTO [dbo].[user] ([user_id], [fullname], [password], [username], [created_time], [modified_time], [created_by], [modified_by]) VALUES (N'1', N'dana', N'$2a$11$K8uNKdvONc9IVFYXkWmbBeHV9ZuiP/k8B/PDP1VHbqAe3aHipl5e6', N'dana', N'2024-08-01 07:30:29.037', N'2024-08-01 07:30:29.250', null, null)
GO
GO
INSERT INTO [dbo].[user] ([user_id], [fullname], [password], [username], [created_time], [modified_time], [created_by], [modified_by]) VALUES (N'2', N'doni', N'$2a$11$bdkSGg8PD8s9fDYohXDsx.VpxqPG05MZO8HAtmUUHwxkXfdwJDte6', N'doni', N'2024-08-01 08:30:16.897', N'2024-08-01 08:30:17.023', null, null)
GO
GO
SET IDENTITY_INSERT [dbo].[user] OFF
GO

-- ----------------------------
-- Indexes structure for table __EFMigrationsHistory
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table __EFMigrationsHistory
-- ----------------------------
ALTER TABLE [dbo].[__EFMigrationsHistory] ADD PRIMARY KEY ([MigrationId])
GO

-- ----------------------------
-- Indexes structure for table orders
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table orders
-- ----------------------------
ALTER TABLE [dbo].[orders] ADD PRIMARY KEY ([order_id])
GO

-- ----------------------------
-- Indexes structure for table product
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table product
-- ----------------------------
ALTER TABLE [dbo].[product] ADD PRIMARY KEY ([product_id])
GO

-- ----------------------------
-- Indexes structure for table user
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE [dbo].[user] ADD PRIMARY KEY ([user_id])
GO

-- ----------------------------
-- Uniques structure for table user
-- ----------------------------
ALTER TABLE [dbo].[user] ADD UNIQUE ([username] ASC)
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[orders]
-- ----------------------------
ALTER TABLE [dbo].[orders] ADD FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([product_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[orders] ADD FOREIGN KEY ([user_id]) REFERENCES [dbo].[user] ([user_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
