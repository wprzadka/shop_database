USE [OnlineShop]
GO
ALTER TABLE [dbo].[Worker] DROP CONSTRAINT [Worker_Users_FK]
GO
ALTER TABLE [dbo].[user_logs] DROP CONSTRAINT [user_logs_Client_FK]
GO
ALTER TABLE [dbo].[Transaction_history] DROP CONSTRAINT [Transaction_history_Transaction_FK]
GO
ALTER TABLE [dbo].[Transaction_details] DROP CONSTRAINT [Transaction_details_Transaction_FK]
GO
ALTER TABLE [dbo].[Product_price] DROP CONSTRAINT [Product_price_Product_FK]
GO
ALTER TABLE [dbo].[Product_image] DROP CONSTRAINT [Product_image_Product_FK]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [Product_Transaction_details_FK]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [Product_Product_category_FK]
GO
ALTER TABLE [dbo].[Message] DROP CONSTRAINT [Message_User_FK]
GO
ALTER TABLE [dbo].[Message] DROP CONSTRAINT [Message_Conversation_FK]
GO
ALTER TABLE [dbo].[Conversation] DROP CONSTRAINT [Conversation_Worker_FK]
GO
ALTER TABLE [dbo].[Conversation] DROP CONSTRAINT [Conversation_User_FK]
GO
ALTER TABLE [dbo].[Conversation] DROP CONSTRAINT [Conversation_conversation_categorie_FK]
GO
ALTER TABLE [dbo].[Client] DROP CONSTRAINT [Client_Users_FK]
GO
ALTER TABLE [dbo].[Client] DROP CONSTRAINT [Client_user_activity_FK]
GO
ALTER TABLE [dbo].[Attachment] DROP CONSTRAINT [Attachment_Message_FK]
GO
ALTER TABLE [dbo].[Address] DROP CONSTRAINT [Address_User_FK]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Worker]
GO
/****** Object:  Table [dbo].[user_logs]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[user_logs]
GO
/****** Object:  Table [dbo].[user_activity]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[user_activity]
GO
/****** Object:  Table [dbo].[User]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[Transaction_history]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Transaction_history]
GO
/****** Object:  Table [dbo].[Transaction_details]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Transaction_details]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Transaction]
GO
/****** Object:  Table [dbo].[Product_price]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Product_price]
GO
/****** Object:  Table [dbo].[Product_image]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Product_image]
GO
/****** Object:  Table [dbo].[Product_category]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Product_category]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Message]
GO
/****** Object:  Table [dbo].[conversation_categorie]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[conversation_categorie]
GO
/****** Object:  Table [dbo].[Conversation]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Conversation]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Client]
GO
/****** Object:  Table [dbo].[Blacklist]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Blacklist]
GO
/****** Object:  Table [dbo].[Balance]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Balance]
GO
/****** Object:  Table [dbo].[Attachment]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Attachment]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 16.01.2020 10:42:58 ******/
DROP TABLE [dbo].[Address]
GO
