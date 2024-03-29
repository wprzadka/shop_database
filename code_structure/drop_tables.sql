USE [online_shop]
GO
/****** Object:  StoredProcedure [dbo].[start_conversation]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP PROCEDURE [dbo].[start_conversation]
GO
/****** Object:  StoredProcedure [dbo].[register_client]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP PROCEDURE [dbo].[register_client]
GO
/****** Object:  StoredProcedure [dbo].[change_order_status]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP PROCEDURE [dbo].[change_order_status]
GO
/****** Object:  StoredProcedure [dbo].[add_worker]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP PROCEDURE [dbo].[add_worker]
GO
/****** Object:  StoredProcedure [dbo].[add_to_blacklist]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP PROCEDURE [dbo].[add_to_blacklist]
GO
/****** Object:  StoredProcedure [dbo].[add_new_order]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP PROCEDURE [dbo].[add_new_order]
GO
ALTER TABLE [dbo].[WorkerHistory] DROP CONSTRAINT [WorkerHistoryFK]
GO
ALTER TABLE [dbo].[Worker] DROP CONSTRAINT [WorkerFK]
GO
ALTER TABLE [dbo].[ProductPrice] DROP CONSTRAINT [ProductPriceFK]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [ProductFKImage]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [ProductFKCategory]
GO
ALTER TABLE [dbo].[OrderHistory] DROP CONSTRAINT [OrderHistoryFK]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [OrderDetailsFKProduct]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [OrderDetailsFKOrder]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [OrderFKClient]
GO
ALTER TABLE [dbo].[Message] DROP CONSTRAINT [MessageFK]
GO
ALTER TABLE [dbo].[Conversation] DROP CONSTRAINT [ConversationFKWorker]
GO
ALTER TABLE [dbo].[Conversation] DROP CONSTRAINT [ConversationFKClient]
GO
ALTER TABLE [dbo].[Conversation] DROP CONSTRAINT [ConversationFKCategory]
GO
ALTER TABLE [dbo].[ClientLog] DROP CONSTRAINT [ClientLogFK]
GO
ALTER TABLE [dbo].[ClientActivity] DROP CONSTRAINT [ClientActivityFK]
GO
ALTER TABLE [dbo].[Client] DROP CONSTRAINT [ClientFK]
GO
ALTER TABLE [dbo].[Attachment] DROP CONSTRAINT [AttachmentFK]
GO
ALTER TABLE [dbo].[Address] DROP CONSTRAINT [AddressFK]
GO
/****** Object:  Table [dbo].[WorkerHistory]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[WorkerHistory]
GO
/****** Object:  Table [dbo].[ProductPrice]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[ProductPrice]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[ProductImage]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[ProductCategory]
GO
/****** Object:  Table [dbo].[Blacklist]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[Blacklist]
GO
/****** Object:  Table [dbo].[Attachment]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[Attachment]
GO
/****** Object:  View [dbo].[average_response_time]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP VIEW [dbo].[average_response_time]
GO
/****** Object:  View [dbo].[best_clients]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP VIEW [dbo].[best_clients]
GO
/****** Object:  Table [dbo].[ClientActivity]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[ClientActivity]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[Client]
GO
/****** Object:  View [dbo].[best_workers]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP VIEW [dbo].[best_workers]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[Worker]
GO
/****** Object:  View [dbo].[clients_per_city]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP VIEW [dbo].[clients_per_city]
GO
/****** Object:  View [dbo].[clients_per_country]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP VIEW [dbo].[clients_per_country]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[Address]
GO
/****** Object:  View [dbo].[conversations_per_category]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP VIEW [dbo].[conversations_per_category]
GO
/****** Object:  Table [dbo].[Conversation]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[Conversation]
GO
/****** Object:  Table [dbo].[ConversationCategories]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[ConversationCategories]
GO
/****** Object:  View [dbo].[logs_intensity]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP VIEW [dbo].[logs_intensity]
GO
/****** Object:  Table [dbo].[ClientLog]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[ClientLog]
GO
/****** Object:  View [dbo].[most_frequently_bought_products]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP VIEW [dbo].[most_frequently_bought_products]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[OrderDetails]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  View [dbo].[orders_in_progress]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP VIEW [dbo].[orders_in_progress]
GO
/****** Object:  Table [dbo].[OrderHistory]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[OrderHistory]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[User]
GO
/****** Object:  UserDefinedFunction [dbo].[show_conversation]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP FUNCTION [dbo].[show_conversation]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP TABLE [dbo].[Message]
GO
/****** Object:  UserDefinedFunction [dbo].[last_price_expiration_date]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP FUNCTION [dbo].[last_price_expiration_date]
GO
/****** Object:  UserDefinedFunction [dbo].[date_part]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP FUNCTION [dbo].[date_part]
GO
/****** Object:  UserDefinedFunction [dbo].[clients_per_year]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP FUNCTION [dbo].[clients_per_year]
GO
/****** Object:  UserDefinedFunction [dbo].[clients_per_month]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP FUNCTION [dbo].[clients_per_month]
GO
USE [master]
GO
/****** Object:  Database [online_shop]    Script Date: 2/6/2020 12:20:41 PM ******/
DROP DATABASE [online_shop]
GO
