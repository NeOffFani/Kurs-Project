USE [master]
GO
/****** Object:  Database [Department]    Script Date: 25.04.2023 20:55:39 ******/
CREATE DATABASE [Department]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Department', FILENAME = N'D:\McSqlServer\MSSQL15.SQLEXPRESS\MSSQL\DATA\Department.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Department_log', FILENAME = N'D:\McSqlServer\MSSQL15.SQLEXPRESS\MSSQL\DATA\Department_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Department] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Department].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Department] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Department] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Department] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Department] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Department] SET ARITHABORT OFF 
GO
ALTER DATABASE [Department] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Department] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Department] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Department] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Department] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Department] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Department] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Department] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Department] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Department] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Department] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Department] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Department] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Department] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Department] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Department] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Department] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Department] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Department] SET  MULTI_USER 
GO
ALTER DATABASE [Department] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Department] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Department] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Department] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Department] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Department] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Department] SET QUERY_STORE = OFF
GO
USE [Department]
GO
/****** Object:  Table [dbo].[Machine]    Script Date: 25.04.2023 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Machine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusId] [nchar](2) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DateOfPurchase] [date] NOT NULL,
	[Creator] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Machine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairRequest]    Script Date: 25.04.2023 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMachine] [int] NOT NULL,
	[DateOfCreate] [date] NOT NULL,
	[DateOfRepairing] [date] NOT NULL,
	[UserId] [int] NOT NULL,
	[Result] [nvarchar](max) NULL,
	[DateOfClose] [date] NULL,
	[Creator] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_RepairRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25.04.2023 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 25.04.2023 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [nchar](2) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestRequests]    Script Date: 25.04.2023 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestRequests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMachine] [int] NOT NULL,
	[DateOfCreate] [date] NOT NULL,
	[DateOfTesting] [date] NOT NULL,
	[Result] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[DateOfClose] [date] NULL,
	[Creator] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TestRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25.04.2023 20:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Machine] ON 

INSERT [dbo].[Machine] ([Id], [StatusId], [Name], [DateOfPurchase], [Creator]) VALUES (1, N'Iw', N'Токарный', CAST(N'2023-04-25' AS Date), N'Лавров Сергей Витальевич')
INSERT [dbo].[Machine] ([Id], [StatusId], [Name], [DateOfPurchase], [Creator]) VALUES (2, N'Iw', N'Резной', CAST(N'2023-04-25' AS Date), N'Лавров Сергей Витальевич')
INSERT [dbo].[Machine] ([Id], [StatusId], [Name], [DateOfPurchase], [Creator]) VALUES (3, N'IP', N'Расточный', CAST(N'2023-04-19' AS Date), N'Лавров Сергей Витальевич')
INSERT [dbo].[Machine] ([Id], [StatusId], [Name], [DateOfPurchase], [Creator]) VALUES (4, N'Iw', N'Шлифовальный', CAST(N'2022-07-22' AS Date), N'Лавров Сергей Витальевич')
SET IDENTITY_INSERT [dbo].[Machine] OFF
GO
SET IDENTITY_INSERT [dbo].[RepairRequest] ON 

INSERT [dbo].[RepairRequest] ([Id], [IdMachine], [DateOfCreate], [DateOfRepairing], [UserId], [Result], [DateOfClose], [Creator]) VALUES (1, 2, CAST(N'2023-04-25' AS Date), CAST(N'2023-04-25' AS Date), 2, N'Замена масла, работает в штатном режиме.', CAST(N'2023-04-25' AS Date), N'Лавров Сергей Витальевич')
INSERT [dbo].[RepairRequest] ([Id], [IdMachine], [DateOfCreate], [DateOfRepairing], [UserId], [Result], [DateOfClose], [Creator]) VALUES (2, 4, CAST(N'2023-04-25' AS Date), CAST(N'2023-02-22' AS Date), 1, N'Замена частей. Работает в штатном режиме.', CAST(N'2023-04-25' AS Date), N'Лавров Сергей Витальевич')
INSERT [dbo].[RepairRequest] ([Id], [IdMachine], [DateOfCreate], [DateOfRepairing], [UserId], [Result], [DateOfClose], [Creator]) VALUES (3, 3, CAST(N'2023-04-25' AS Date), CAST(N'2023-04-30' AS Date), 1, NULL, NULL, N'Лавров Сергей Витальевич')
SET IDENTITY_INSERT [dbo].[RepairRequest] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Title]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (2, N'Инженер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[Status] ([Id], [Title]) VALUES (N'IP', N'Работа приостановлена')
INSERT [dbo].[Status] ([Id], [Title]) VALUES (N'Iw', N'В работе')
GO
SET IDENTITY_INSERT [dbo].[TestRequests] ON 

INSERT [dbo].[TestRequests] ([Id], [IdMachine], [DateOfCreate], [DateOfTesting], [Result], [UserId], [DateOfClose], [Creator]) VALUES (1, 1, CAST(N'2023-04-25' AS Date), CAST(N'2023-03-30' AS Date), N'Станок прошёл тестирование! Всё работает в штатном режиме.', 1, CAST(N'2023-04-25' AS Date), N'Лавров Сергей Витальевич')
INSERT [dbo].[TestRequests] ([Id], [IdMachine], [DateOfCreate], [DateOfTesting], [Result], [UserId], [DateOfClose], [Creator]) VALUES (2, 2, CAST(N'2023-04-25' AS Date), CAST(N'2023-03-01' AS Date), N'Нужна замена запчастей.', 2, CAST(N'2023-04-25' AS Date), N'Лавров Сергей Витальевич')
INSERT [dbo].[TestRequests] ([Id], [IdMachine], [DateOfCreate], [DateOfTesting], [Result], [UserId], [DateOfClose], [Creator]) VALUES (3, 3, CAST(N'2023-04-25' AS Date), CAST(N'2023-05-10' AS Date), NULL, 1, NULL, N'Лавров Сергей Витальевич')
SET IDENTITY_INSERT [dbo].[TestRequests] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [FullName]) VALUES (1, N'Admin', N'admin', 1, N'Лавров Сергей Витальевич')
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [FullName]) VALUES (2, N'Ingener', N'12345', 2, N'Жуков Алексей Николаевич')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Machine]  WITH CHECK ADD  CONSTRAINT [FK_Machine_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[Machine] CHECK CONSTRAINT [FK_Machine_Status]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_Machine] FOREIGN KEY([IdMachine])
REFERENCES [dbo].[Machine] ([Id])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_Machine]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_User]
GO
ALTER TABLE [dbo].[TestRequests]  WITH CHECK ADD  CONSTRAINT [FK_TestRequests_Machine] FOREIGN KEY([IdMachine])
REFERENCES [dbo].[Machine] ([Id])
GO
ALTER TABLE [dbo].[TestRequests] CHECK CONSTRAINT [FK_TestRequests_Machine]
GO
ALTER TABLE [dbo].[TestRequests]  WITH CHECK ADD  CONSTRAINT [FK_TestRequests_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[TestRequests] CHECK CONSTRAINT [FK_TestRequests_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Department] SET  READ_WRITE 
GO
