USE [master]
GO
/****** Object:  Database [HollywoodTest]    Script Date: 2020/10/24 15:52:09 ******/
CREATE DATABASE [HollywoodTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HollywoodTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HollywoodTest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HollywoodTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HollywoodTest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HollywoodTest] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HollywoodTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HollywoodTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HollywoodTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HollywoodTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HollywoodTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HollywoodTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [HollywoodTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HollywoodTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HollywoodTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HollywoodTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HollywoodTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HollywoodTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HollywoodTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HollywoodTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HollywoodTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HollywoodTest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HollywoodTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HollywoodTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HollywoodTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HollywoodTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HollywoodTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HollywoodTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HollywoodTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HollywoodTest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HollywoodTest] SET  MULTI_USER 
GO
ALTER DATABASE [HollywoodTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HollywoodTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HollywoodTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HollywoodTest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HollywoodTest] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HollywoodTest] SET QUERY_STORE = OFF
GO
USE [HollywoodTest]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 2020/10/24 15:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventsID] [bigint] IDENTITY(1,1) NOT NULL,
	[FK_TournamentID] [bigint] NOT NULL,
	[EventName] [varchar](100) NOT NULL,
	[EventNumber] [smallint] NOT NULL,
	[EventDateTime] [datetime] NOT NULL,
	[EventEndDateTime] [datetime] NOT NULL,
	[AutoClose] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventDetail]    Script Date: 2020/10/24 15:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventDetail](
	[EventDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[FK_EventID] [bigint] NOT NULL,
	[FK_EventDetailStatusID] [smallint] NOT NULL,
	[EventDetailName] [varchar](50) NOT NULL,
	[EventDetailNumber] [smallint] NOT NULL,
	[EventDetailOdd] [decimal](18, 7) NOT NULL,
	[FinishingPosition] [smallint] NOT NULL,
	[FirstTimer] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_EventDetail] PRIMARY KEY CLUSTERED 
(
	[EventDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventDetailStatus]    Script Date: 2020/10/24 15:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventDetailStatus](
	[EventDetailsStatusID] [smallint] IDENTITY(1,1) NOT NULL,
	[EventDetailsStatusName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EventDetailStatus] PRIMARY KEY CLUSTERED 
(
	[EventDetailsStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tournament]    Script Date: 2020/10/24 15:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tournament](
	[TournamentID] [bigint] IDENTITY(1,1) NOT NULL,
	[TournamentName] [varchar](200) NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Tournament] PRIMARY KEY CLUSTERED 
(
	[TournamentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Tournament] FOREIGN KEY([FK_TournamentID])
REFERENCES [dbo].[Tournament] ([TournamentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Tournament]
GO
ALTER TABLE [dbo].[EventDetail]  WITH CHECK ADD  CONSTRAINT [FK_EventDetail_Event] FOREIGN KEY([FK_EventID])
REFERENCES [dbo].[Event] ([EventsID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EventDetail] CHECK CONSTRAINT [FK_EventDetail_Event]
GO
ALTER TABLE [dbo].[EventDetail]  WITH CHECK ADD  CONSTRAINT [FK_EventDetail_EventDetailStatus] FOREIGN KEY([FK_EventDetailStatusID])
REFERENCES [dbo].[EventDetailStatus] ([EventDetailsStatusID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EventDetail] CHECK CONSTRAINT [FK_EventDetail_EventDetailStatus]
GO
/****** Object:  StoredProcedure [dbo].[UpdateEventDetailStatus]    Script Date: 2020/10/24 15:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[UpdateEventDetailStatus]
(
	@EventDetailID bigint,
	@EventDetailsStatusID bigint

)
AS
	SET NOCOUNT OFF;

Update EventDetail 
set FK_EventDetailStatusID = @EventDetailsStatusID 
where EventDetailID = @EventDetailID
GO
USE [master]
GO
ALTER DATABASE [HollywoodTest] SET  READ_WRITE 
GO
