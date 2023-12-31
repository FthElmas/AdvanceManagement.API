/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2022 (16.0.1000)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2022
    Target Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [AdvanceManagementDB]    Script Date: 19.12.2023 17:51:16 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'AdvanceManagementDB')
BEGIN
CREATE DATABASE [AdvanceManagementDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AdvanceManagementDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AdvanceManagementDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AdvanceManagementDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AdvanceManagementDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 COLLATE Turkish_CI_AS
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
END
GO
ALTER DATABASE [AdvanceManagementDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AdvanceManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AdvanceManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AdvanceManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AdvanceManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AdvanceManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AdvanceManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET RECOVERY FULL 
GO
ALTER DATABASE [AdvanceManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [AdvanceManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AdvanceManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AdvanceManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AdvanceManagementDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AdvanceManagementDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AdvanceManagementDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AdvanceManagementDB', N'ON'
GO
ALTER DATABASE [AdvanceManagementDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [AdvanceManagementDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 19.12.2023 17:51:17 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT Service\MSSQLSERVER')
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 19.12.2023 17:51:17 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\Winmgmt')
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 19.12.2023 17:51:17 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLWriter')
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY]    Script Date: 19.12.2023 17:51:17 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLTELEMETRY')
CREATE LOGIN [NT SERVICE\SQLTELEMETRY] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 19.12.2023 17:51:17 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLSERVERAGENT')
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 19.12.2023 17:51:17 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [DESKTOP-75U869K\Fatih]    Script Date: 19.12.2023 17:51:17 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'DESKTOP-75U869K\Fatih')
CREATE LOGIN [DESKTOP-75U869K\Fatih] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 19.12.2023 17:51:17 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Users')
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 19.12.2023 17:51:17 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyTsqlExecutionLogin##')
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'ikZb7JxxrM9fnTg/YHClu7AW4SMZjrVhEEfOUyWkrlM=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 19.12.2023 17:51:17 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyEventProcessingLogin##')
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'LRn8zRGdoeQxmq3WtU0eQWQ0x1xY8uBUfOdsPexXlC8=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[AdvanceManagementDB] TO [DESKTOP-75U869K\Fatih]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-75U869K\Fatih]
GO
USE [AdvanceManagementDB]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
/****** Object:  Table [dbo].[Title]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Title]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Title](
	[TitleID] [int] IDENTITY(1,1) NOT NULL,
	[TitleName] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[TitleDescription] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_Title] PRIMARY KEY CLUSTERED 
(
	[TitleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Title] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[VW_Example]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[VW_Example]'))
EXEC dbo.sp_executesql @statement = N'CREATE view [dbo].[VW_Example]
 
as
select TitleID, TitleName, TitleDescription from dbo.Title' 
GO
ALTER AUTHORIZATION ON [dbo].[VW_Example] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Advance]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Advance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Advance](
	[AdvanceID] [int] IDENTITY(1,1) NOT NULL,
	[AdvanceAmount] [decimal](18, 0) NULL,
	[AdvanceExplanation] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[WorkerID] [int] NULL,
	[RequestDate] [datetime] NULL,
	[AmountPaymentDate] [datetime] NULL,
	[PaybackDate] [datetime] NULL,
	[ProjectID] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_Advance] PRIMARY KEY CLUSTERED 
(
	[AdvanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Advance] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AdvanceRequestStatus]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdvanceRequestStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AdvanceRequestStatus](
	[AdvanceRequestStatusID] [int] IDENTITY(1,1) NOT NULL,
	[AdvanceID] [int] NULL,
	[StatusName] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[StatusDescription] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[ApprovedAmount] [decimal](18, 0) NULL,
	[ApprovingRejectedID] [int] NULL,
	[ApprovalStatusID] [int] NULL,
	[ProcessDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_AdvanceApproveStatus] PRIMARY KEY CLUSTERED 
(
	[AdvanceRequestStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AdvanceRequestStatus] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ApprovalStatus]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApprovalStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ApprovalStatus](
	[ApprovalStatusID] [int] IDENTITY(1,1) NOT NULL,
	[ApprovalName] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_ApprovalStatus] PRIMARY KEY CLUSTERED 
(
	[ApprovalStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[ApprovalStatus] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ApprovalStatusTitle]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApprovalStatusTitle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ApprovalStatusTitle](
	[ApprovalStatusID] [int] NOT NULL,
	[TitleID] [int] NOT NULL,
 CONSTRAINT [PK_ApprovalStatusTitle] PRIMARY KEY CLUSTERED 
(
	[ApprovalStatusID] ASC,
	[TitleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[ApprovalStatusTitle] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Authorization]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Authorization]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Authorization](
	[AuthorizationID] [int] IDENTITY(1,1) NOT NULL,
	[AutherizationName] [nvarchar](250) COLLATE Turkish_CI_AS NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Authorization] PRIMARY KEY CLUSTERED 
(
	[AuthorizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Authorization] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[FinanceManager]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FinanceManager]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FinanceManager](
	[WorkerID] [int] NOT NULL,
	[AdvanceID] [int] NOT NULL,
	[DeterminedPaymentDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_FinanceManager] PRIMARY KEY CLUSTERED 
(
	[WorkerID] ASC,
	[AdvanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[FinanceManager] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Logs](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[LogLevel] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[Message] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[Exception] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Logs] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Message]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Message]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Message](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[MessageName] [nvarchar](100) COLLATE Turkish_CI_AS NULL,
	[MessageDescription] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[MessageTakerID] [int] NULL,
	[MessageSenderID] [int] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Message] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[PageAuthorization]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PageAuthorization]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PageAuthorization](
	[PageAuthorizationID] [int] IDENTITY(1,1) NOT NULL,
	[PageAuthorizationName] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[PageAuthorizationPath] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_PageAuthorization] PRIMARY KEY CLUSTERED 
(
	[PageAuthorizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[PageAuthorization] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[PaybackReceipt]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PaybackReceipt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PaybackReceipt](
	[PaybackReceiptID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptDate] [datetime] NULL,
	[ReceiptDescription] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[AdvanceID] [int] NULL,
	[IsActive] [bit] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_PaybackReceipt] PRIMARY KEY CLUSTERED 
(
	[PaybackReceiptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[PaybackReceipt] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[PaymentReceipt]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PaymentReceipt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PaymentReceipt](
	[PaymentReceiptID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptDate] [datetime] NULL,
	[ReceiptDescription] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[AdvanceID] [int] NULL,
	[IsActive] [bit] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_PaymentReceipt] PRIMARY KEY CLUSTERED 
(
	[PaymentReceiptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[PaymentReceipt] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Project]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Project]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Project](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ProjectExplanation] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Project] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ProjectWorker]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectWorker]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProjectWorker](
	[WorkerID] [int] NOT NULL,
	[ProjectID] [int] NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_ProjectWorker] PRIMARY KEY CLUSTERED 
(
	[WorkerID] ASC,
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[ProjectWorker] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Role]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Role] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[RoleAuthorization]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleAuthorization]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoleAuthorization](
	[RoleID] [int] NOT NULL,
	[AuthorizationID] [int] NULL,
	[PageAuthorizationID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_RoleAuthorization_1] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[PageAuthorizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[RoleAuthorization] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Rule]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Rule](
	[RuleID] [int] IDENTITY(1,1) NOT NULL,
	[RuleName] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[Date] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Rule] PRIMARY KEY CLUSTERED 
(
	[RuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Rule] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[RuleWorker]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleWorker]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RuleWorker](
	[RuleID] [int] NOT NULL,
	[TitleID] [int] NOT NULL,
	[ApprovalOrder] [tinyint] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_RuleWorker] PRIMARY KEY CLUSTERED 
(
	[RuleID] ASC,
	[TitleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[RuleWorker] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[TitleAmountApprovalRule]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TitleAmountApprovalRule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TitleAmountApprovalRule](
	[TitleAmountApprovalRuleID] [int] IDENTITY(1,1) NOT NULL,
	[MinAmount] [decimal](18, 0) NULL,
	[MaxAmount] [decimal](18, 0) NULL,
	[Date] [datetime] NULL,
	[TitleID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_TitleAmountApprovalRule] PRIMARY KEY CLUSTERED 
(
	[TitleAmountApprovalRuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[TitleAmountApprovalRule] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Unit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Unit](
	[UnitID] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[UnitExplanation] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Unit] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[User]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) COLLATE Turkish_CI_AS NULL,
	[PasswordHash] [varbinary](max) NULL,
	[PasswordSalt] [varbinary](max) NULL,
	[RoleID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[User] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Worker]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Worker](
	[WorkerID] [int] IDENTITY(1,1) NOT NULL,
	[WorkerName] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[WorkerEmail] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[WorkerPhonenumber] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[UserID] [int] NULL,
	[UnitID] [int] NULL,
	[TitleID] [int] NULL,
	[ManagerID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[WorkerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Worker] TO  SCHEMA OWNER 
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Advance_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Advance] ADD  CONSTRAINT [DF_Advance_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_AdvanceApproveStatus_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AdvanceRequestStatus] ADD  CONSTRAINT [DF_AdvanceApproveStatus_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_AdvanceApproveStatus_ModifiedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AdvanceRequestStatus] ADD  CONSTRAINT [DF_AdvanceApproveStatus_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ApprovalStatus_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ApprovalStatus] ADD  CONSTRAINT [DF_ApprovalStatus_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ApprovalStatus_ModifiedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ApprovalStatus] ADD  CONSTRAINT [DF_ApprovalStatus_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Authorization_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Authorization] ADD  CONSTRAINT [DF_Authorization_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Authorization_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Authorization] ADD  CONSTRAINT [DF_Authorization_IsActive]  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Logs_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Logs] ADD  CONSTRAINT [DF_Logs_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PageAuthorization_CreatedDate_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PageAuthorization] ADD  CONSTRAINT [DF_PageAuthorization_CreatedDate_1]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PageAuthorization_ModifiedDate_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PageAuthorization] ADD  CONSTRAINT [DF_PageAuthorization_ModifiedDate_1]  DEFAULT (getdate()) FOR [ModifiedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PaybackReceipt_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PaybackReceipt] ADD  CONSTRAINT [DF_PaybackReceipt_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PaybackReceipt_ModifiedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PaybackReceipt] ADD  CONSTRAINT [DF_PaybackReceipt_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PaymentReceipt_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PaymentReceipt] ADD  CONSTRAINT [DF_PaymentReceipt_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PaymentReceipt_ModifiedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PaymentReceipt] ADD  CONSTRAINT [DF_PaymentReceipt_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Role_CreatedDate_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_CreatedDate_1]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Role_ModifiedDate_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_ModifiedDate_1]  DEFAULT (getdate()) FOR [ModifiedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_RoleAuthorization_CreatedDate_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RoleAuthorization] ADD  CONSTRAINT [DF_RoleAuthorization_CreatedDate_1]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_RoleAuthorization_ModifiedDate_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RoleAuthorization] ADD  CONSTRAINT [DF_RoleAuthorization_ModifiedDate_1]  DEFAULT (getdate()) FOR [ModifiedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Title_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Title] ADD  CONSTRAINT [DF_Title_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Title_ModifiedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Title] ADD  CONSTRAINT [DF_Title_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_User_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Advance_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[Advance]'))
ALTER TABLE [dbo].[Advance]  WITH CHECK ADD  CONSTRAINT [FK_Advance_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Advance_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[Advance]'))
ALTER TABLE [dbo].[Advance] CHECK CONSTRAINT [FK_Advance_Project]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Advance_Worker]') AND parent_object_id = OBJECT_ID(N'[dbo].[Advance]'))
ALTER TABLE [dbo].[Advance]  WITH CHECK ADD  CONSTRAINT [FK_Advance_Worker] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Advance_Worker]') AND parent_object_id = OBJECT_ID(N'[dbo].[Advance]'))
ALTER TABLE [dbo].[Advance] CHECK CONSTRAINT [FK_Advance_Worker]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AdvanceApproveStatus_ApprovalStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdvanceRequestStatus]'))
ALTER TABLE [dbo].[AdvanceRequestStatus]  WITH CHECK ADD  CONSTRAINT [FK_AdvanceApproveStatus_ApprovalStatus] FOREIGN KEY([ApprovalStatusID])
REFERENCES [dbo].[ApprovalStatus] ([ApprovalStatusID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AdvanceApproveStatus_ApprovalStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdvanceRequestStatus]'))
ALTER TABLE [dbo].[AdvanceRequestStatus] CHECK CONSTRAINT [FK_AdvanceApproveStatus_ApprovalStatus]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AdvanceApproveStatus_Worker]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdvanceRequestStatus]'))
ALTER TABLE [dbo].[AdvanceRequestStatus]  WITH CHECK ADD  CONSTRAINT [FK_AdvanceApproveStatus_Worker] FOREIGN KEY([ApprovingRejectedID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AdvanceApproveStatus_Worker]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdvanceRequestStatus]'))
ALTER TABLE [dbo].[AdvanceRequestStatus] CHECK CONSTRAINT [FK_AdvanceApproveStatus_Worker]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AdvanceRequestStatus_Advance]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdvanceRequestStatus]'))
ALTER TABLE [dbo].[AdvanceRequestStatus]  WITH CHECK ADD  CONSTRAINT [FK_AdvanceRequestStatus_Advance] FOREIGN KEY([AdvanceID])
REFERENCES [dbo].[Advance] ([AdvanceID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AdvanceRequestStatus_Advance]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdvanceRequestStatus]'))
ALTER TABLE [dbo].[AdvanceRequestStatus] CHECK CONSTRAINT [FK_AdvanceRequestStatus_Advance]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApprovalStatusTitle_ApprovalStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApprovalStatusTitle]'))
ALTER TABLE [dbo].[ApprovalStatusTitle]  WITH CHECK ADD  CONSTRAINT [FK_ApprovalStatusTitle_ApprovalStatus] FOREIGN KEY([ApprovalStatusID])
REFERENCES [dbo].[ApprovalStatus] ([ApprovalStatusID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApprovalStatusTitle_ApprovalStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApprovalStatusTitle]'))
ALTER TABLE [dbo].[ApprovalStatusTitle] CHECK CONSTRAINT [FK_ApprovalStatusTitle_ApprovalStatus]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApprovalStatusTitle_Title]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApprovalStatusTitle]'))
ALTER TABLE [dbo].[ApprovalStatusTitle]  WITH CHECK ADD  CONSTRAINT [FK_ApprovalStatusTitle_Title] FOREIGN KEY([TitleID])
REFERENCES [dbo].[Title] ([TitleID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ApprovalStatusTitle_Title]') AND parent_object_id = OBJECT_ID(N'[dbo].[ApprovalStatusTitle]'))
ALTER TABLE [dbo].[ApprovalStatusTitle] CHECK CONSTRAINT [FK_ApprovalStatusTitle_Title]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FinanceManager_Advance]') AND parent_object_id = OBJECT_ID(N'[dbo].[FinanceManager]'))
ALTER TABLE [dbo].[FinanceManager]  WITH CHECK ADD  CONSTRAINT [FK_FinanceManager_Advance] FOREIGN KEY([AdvanceID])
REFERENCES [dbo].[Advance] ([AdvanceID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FinanceManager_Advance]') AND parent_object_id = OBJECT_ID(N'[dbo].[FinanceManager]'))
ALTER TABLE [dbo].[FinanceManager] CHECK CONSTRAINT [FK_FinanceManager_Advance]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FinanceManager_Worker]') AND parent_object_id = OBJECT_ID(N'[dbo].[FinanceManager]'))
ALTER TABLE [dbo].[FinanceManager]  WITH CHECK ADD  CONSTRAINT [FK_FinanceManager_Worker] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FinanceManager_Worker]') AND parent_object_id = OBJECT_ID(N'[dbo].[FinanceManager]'))
ALTER TABLE [dbo].[FinanceManager] CHECK CONSTRAINT [FK_FinanceManager_Worker]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Message_Worker]') AND parent_object_id = OBJECT_ID(N'[dbo].[Message]'))
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Worker] FOREIGN KEY([MessageTakerID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Message_Worker]') AND parent_object_id = OBJECT_ID(N'[dbo].[Message]'))
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Worker]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Message_Worker1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Message]'))
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Worker1] FOREIGN KEY([MessageSenderID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Message_Worker1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Message]'))
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Worker1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PaybackReceipt_Advance]') AND parent_object_id = OBJECT_ID(N'[dbo].[PaybackReceipt]'))
ALTER TABLE [dbo].[PaybackReceipt]  WITH CHECK ADD  CONSTRAINT [FK_PaybackReceipt_Advance] FOREIGN KEY([AdvanceID])
REFERENCES [dbo].[Advance] ([AdvanceID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PaybackReceipt_Advance]') AND parent_object_id = OBJECT_ID(N'[dbo].[PaybackReceipt]'))
ALTER TABLE [dbo].[PaybackReceipt] CHECK CONSTRAINT [FK_PaybackReceipt_Advance]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PaymentReceipt_Advance]') AND parent_object_id = OBJECT_ID(N'[dbo].[PaymentReceipt]'))
ALTER TABLE [dbo].[PaymentReceipt]  WITH CHECK ADD  CONSTRAINT [FK_PaymentReceipt_Advance] FOREIGN KEY([AdvanceID])
REFERENCES [dbo].[Advance] ([AdvanceID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PaymentReceipt_Advance]') AND parent_object_id = OBJECT_ID(N'[dbo].[PaymentReceipt]'))
ALTER TABLE [dbo].[PaymentReceipt] CHECK CONSTRAINT [FK_PaymentReceipt_Advance]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectWorker_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectWorker]'))
ALTER TABLE [dbo].[ProjectWorker]  WITH CHECK ADD  CONSTRAINT [FK_ProjectWorker_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectWorker_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectWorker]'))
ALTER TABLE [dbo].[ProjectWorker] CHECK CONSTRAINT [FK_ProjectWorker_Project]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectWorker_Worker]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectWorker]'))
ALTER TABLE [dbo].[ProjectWorker]  WITH CHECK ADD  CONSTRAINT [FK_ProjectWorker_Worker] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectWorker_Worker]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectWorker]'))
ALTER TABLE [dbo].[ProjectWorker] CHECK CONSTRAINT [FK_ProjectWorker_Worker]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleAuthorization_Authorization]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleAuthorization]'))
ALTER TABLE [dbo].[RoleAuthorization]  WITH CHECK ADD  CONSTRAINT [FK_RoleAuthorization_Authorization] FOREIGN KEY([AuthorizationID])
REFERENCES [dbo].[Authorization] ([AuthorizationID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleAuthorization_Authorization]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleAuthorization]'))
ALTER TABLE [dbo].[RoleAuthorization] CHECK CONSTRAINT [FK_RoleAuthorization_Authorization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleAuthorization_PageAuthorization]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleAuthorization]'))
ALTER TABLE [dbo].[RoleAuthorization]  WITH CHECK ADD  CONSTRAINT [FK_RoleAuthorization_PageAuthorization] FOREIGN KEY([PageAuthorizationID])
REFERENCES [dbo].[PageAuthorization] ([PageAuthorizationID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleAuthorization_PageAuthorization]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleAuthorization]'))
ALTER TABLE [dbo].[RoleAuthorization] CHECK CONSTRAINT [FK_RoleAuthorization_PageAuthorization]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleAuthorization_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleAuthorization]'))
ALTER TABLE [dbo].[RoleAuthorization]  WITH CHECK ADD  CONSTRAINT [FK_RoleAuthorization_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleAuthorization_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleAuthorization]'))
ALTER TABLE [dbo].[RoleAuthorization] CHECK CONSTRAINT [FK_RoleAuthorization_Role]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RuleWorker_Rule]') AND parent_object_id = OBJECT_ID(N'[dbo].[RuleWorker]'))
ALTER TABLE [dbo].[RuleWorker]  WITH CHECK ADD  CONSTRAINT [FK_RuleWorker_Rule] FOREIGN KEY([RuleID])
REFERENCES [dbo].[Rule] ([RuleID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RuleWorker_Rule]') AND parent_object_id = OBJECT_ID(N'[dbo].[RuleWorker]'))
ALTER TABLE [dbo].[RuleWorker] CHECK CONSTRAINT [FK_RuleWorker_Rule]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RuleWorker_Title]') AND parent_object_id = OBJECT_ID(N'[dbo].[RuleWorker]'))
ALTER TABLE [dbo].[RuleWorker]  WITH CHECK ADD  CONSTRAINT [FK_RuleWorker_Title] FOREIGN KEY([TitleID])
REFERENCES [dbo].[Title] ([TitleID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RuleWorker_Title]') AND parent_object_id = OBJECT_ID(N'[dbo].[RuleWorker]'))
ALTER TABLE [dbo].[RuleWorker] CHECK CONSTRAINT [FK_RuleWorker_Title]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TitleAmountApprovalRule_Title]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleAmountApprovalRule]'))
ALTER TABLE [dbo].[TitleAmountApprovalRule]  WITH CHECK ADD  CONSTRAINT [FK_TitleAmountApprovalRule_Title] FOREIGN KEY([TitleID])
REFERENCES [dbo].[Title] ([TitleID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TitleAmountApprovalRule_Title]') AND parent_object_id = OBJECT_ID(N'[dbo].[TitleAmountApprovalRule]'))
ALTER TABLE [dbo].[TitleAmountApprovalRule] CHECK CONSTRAINT [FK_TitleAmountApprovalRule_Title]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Worker_Title]') AND parent_object_id = OBJECT_ID(N'[dbo].[Worker]'))
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Title] FOREIGN KEY([TitleID])
REFERENCES [dbo].[Title] ([TitleID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Worker_Title]') AND parent_object_id = OBJECT_ID(N'[dbo].[Worker]'))
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Title]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Worker_Unit]') AND parent_object_id = OBJECT_ID(N'[dbo].[Worker]'))
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Unit] FOREIGN KEY([UnitID])
REFERENCES [dbo].[Unit] ([UnitID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Worker_Unit]') AND parent_object_id = OBJECT_ID(N'[dbo].[Worker]'))
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Unit]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Worker_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Worker]'))
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Worker_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Worker]'))
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_User]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Worker_Worker]') AND parent_object_id = OBJECT_ID(N'[dbo].[Worker]'))
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Worker] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Worker] ([WorkerID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Worker_Worker]') AND parent_object_id = OBJECT_ID(N'[dbo].[Worker]'))
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Worker]
GO
/****** Object:  StoredProcedure [dbo].[SP_BringApprovalStatus]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_BringApprovalStatus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_BringApprovalStatus] AS' 
END
GO
ALTER PROCEDURE [dbo].[SP_BringApprovalStatus]
	@worker [int]
WITH EXECUTE AS CALLER
AS
begin
select WorkerID, WorkerName, StatusName, ApprovalName from Worker
join AdvanceApproveStatus on Worker.WorkerID= AdvanceApproveStatus.ApprovingWorkerID
join ApprovalStatus on AdvanceApproveStatus.ApprovalStatusID = ApprovalStatus.ApprovalStatusID
where Worker.ManagerID = @worker + 1

select * from Worker
join Advance on Advance.WorkerID = Worker.WorkerID
where Worker.WorkerID = @worker

end
GO
ALTER AUTHORIZATION ON [dbo].[SP_BringApprovalStatus] TO  SCHEMA OWNER 
GO
ALTER AUTHORIZATION ON [dbo].[SP_BringApprovalStatus] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_TenderVehicleOwner]    Script Date: 19.12.2023 17:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_TenderVehicleOwner]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_TenderVehicleOwner] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_TenderVehicleOwner]
	@vehicleID [int],
	@receiverID [int] OUTPUT
WITH EXECUTE AS CALLER
AS
begin
if exists(select 1 from VehicleReceiverInfo where VehicleID = @vehicleID)
begin
	select @receiverID = UserID from VehicleReceiverInfo where VehicleID = @vehicleID
end
end
GO
ALTER AUTHORIZATION ON [dbo].[sp_TenderVehicleOwner] TO  SCHEMA OWNER 
GO
ALTER AUTHORIZATION ON [dbo].[sp_TenderVehicleOwner] TO  SCHEMA OWNER 
GO
USE [master]
GO
ALTER DATABASE [AdvanceManagementDB] SET  READ_WRITE 
GO
