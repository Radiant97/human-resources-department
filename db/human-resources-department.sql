USE [master]
GO
/****** Object:  Database [human_resources_department_db]    Script Date: 12/13/2017 5:12:32 PM ******/
CREATE DATABASE [human_resources_department_db]
 CONTAINMENT = NONE
 ON  PRIMARY
( NAME = N'human_resources_department_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\human_resources_department_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'human_resources_department_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\human_resources_department_db_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [human_resources_department_db] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [human_resources_department_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [human_resources_department_db] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [human_resources_department_db] SET ANSI_NULLS OFF
GO
ALTER DATABASE [human_resources_department_db] SET ANSI_PADDING OFF
GO
ALTER DATABASE [human_resources_department_db] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [human_resources_department_db] SET ARITHABORT OFF
GO
ALTER DATABASE [human_resources_department_db] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [human_resources_department_db] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [human_resources_department_db] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [human_resources_department_db] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [human_resources_department_db] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [human_resources_department_db] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [human_resources_department_db] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [human_resources_department_db] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [human_resources_department_db] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [human_resources_department_db] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [human_resources_department_db] SET  DISABLE_BROKER
GO
ALTER DATABASE [human_resources_department_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [human_resources_department_db] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [human_resources_department_db] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [human_resources_department_db] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [human_resources_department_db] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [human_resources_department_db] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [human_resources_department_db] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [human_resources_department_db] SET RECOVERY SIMPLE
GO
ALTER DATABASE [human_resources_department_db] SET  MULTI_USER
GO
ALTER DATABASE [human_resources_department_db] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [human_resources_department_db] SET DB_CHAINING OFF
GO
ALTER DATABASE [human_resources_department_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO
ALTER DATABASE [human_resources_department_db] SET TARGET_RECOVERY_TIME = 0 SECONDS
GO
USE [human_resources_department_db]
GO
/****** Object:  User [Anastasiya_Helda]    Script Date: 12/13/2017 5:12:33 PM ******/
CREATE USER [Anastasiya_Helda] FOR LOGIN [Anastasiya_Helda] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[benefit]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[benefit](
	[id] [int] NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_benefit] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[business_trip]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[business_trip](
	[id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[order_number] [nvarchar](50) NOT NULL,
	[place] [nvarchar](max) NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[purpose] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_business_trip] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[education]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[education](
	[id] [int] NOT NULL,
	[educational_institution] [nvarchar](200) NOT NULL,
	[document_title] [nvarchar](100) NOT NULL,
	[document_series] [nvarchar](10) NOT NULL,
	[document_number] [int] NOT NULL,
	[graduation_year] [int] NOT NULL,
	[qualification] [nvarchar](150) NOT NULL,
	[specialty] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_education] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employee]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[employment_date] [date] NOT NULL,
	[dismissal_date] [date] NULL,
	[is_contract] [bit] NOT NULL,
	[personal_number] [nvarchar](10) NOT NULL,
	[qualification_id] [int] NULL,
	[personal_info_id] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employee_rights]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_rights](
	[id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[right_code] [int] NOT NULL,
 CONSTRAINT [PK_employee_rights] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employment_contract]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employment_contract](
	[id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[contract_number] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[unit_id] [int] NOT NULL,
	[post_id] [int] NOT NULL,
	[schedule_id] [int] NOT NULL,
	[vacation_type_id] [int] NOT NULL,
	[work_nature_id] [int] NOT NULL,
	[rate_count] [int] NOT NULL,
	[salary] [float] NOT NULL,
 CONSTRAINT [PK_employment_contract] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employment_history]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employment_history](
	[id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[series] [nvarchar](10) NOT NULL,
	[number] [int] NOT NULL,
	[issue_date] [date] NOT NULL,
	[education] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employment_history_record]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employment_history_record](
	[id] [int] NOT NULL,
	[employment_history_id] [int] NOT NULL,
	[organization] [nvarchar](max) NOT NULL,
	[date] [date] NOT NULL,
	[record] [nvarchar](max) NULL,
	[base] [nvarchar](max) NULL,
 CONSTRAINT [PK__employme__3213E83F736520D2] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[established_post]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[established_post](
	[number] [nvarchar](50) NOT NULL,
	[post_id] [int] NOT NULL,
	[rate_count] [int] NOT NULL,
	[unit_id] [int] NOT NULL,
	[salary] [float] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_established_post] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[family_composition]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[family_composition](
	[id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[first_name] [nvarchar](100) NOT NULL,
	[last_name] [nvarchar](100) NOT NULL,
	[birthday] [date] NOT NULL,
	[relationship_degree] [nchar](20) NOT NULL,
 CONSTRAINT [PK_family_composition] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hospital]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hospital](
	[id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[start_date] [date] NOT NULL,
	[day_count] [int] NOT NULL,
 CONSTRAINT [PK_hospital] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[m2m_employee_benefit]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m2m_employee_benefit](
	[employee_id] [int] NOT NULL,
	[benefit_id] [int] NOT NULL,
	[cause] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED
(
	[employee_id] ASC,
	[benefit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[personal_info]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[personal_info](
	[id] [int] NOT NULL,
	[first_name] [nvarchar](100) NOT NULL,
	[last_name] [nvarchar](100) NOT NULL,
	[birthday] [date] NOT NULL,
	[sex] [varchar](10) NOT NULL,
	[family_status] [varchar](10) NOT NULL,
	[insurance_number] [nvarchar](50) NOT NULL,
	[education_id] [int] NOT NULL,
	[military_register] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_employee_personal_info] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[post]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[name] [nvarchar](200) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_post] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[qualification]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qualification](
	[id] [int] NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[category] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_qualification] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[schedule]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule](
	[id] [int] NOT NULL,
	[hoyrs_per_day] [int] NOT NULL,
	[days_per_week] [int] NOT NULL,
	[work_day_beginning] [time](7) NOT NULL,
	[work_day_end] [time](7) NOT NULL,
	[lunch_break] [int] NOT NULL,
 CONSTRAINT [PK__schedule__3213E83F569CB277] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[structural_unit]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[structural_unit](
	[name] [nvarchar](200) NOT NULL,
	[phone] [nvarchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_structural_unit] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[password] [nvarchar](30) NOT NULL,
	[is_admin] [bit] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[vacation]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vacation](
	[id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[vacation_type_id] [int] NOT NULL,
	[order_number] [int] NOT NULL,
	[start_date] [date] NOT NULL,
 CONSTRAINT [PK_vacation] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[vacation_type]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vacation_type](
	[id] [int] NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[days_number] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[work_nature]    Script Date: 12/13/2017 5:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[work_nature](
	[id] [int] NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_work_nature] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[benefit] ([id], [name], [description]) VALUES (1, N'birth of a child', NULL)
GO
INSERT [dbo].[benefit] ([id], [name], [description]) VALUES (2, N'loss of documents', NULL)
GO
INSERT [dbo].[benefit] ([id], [name], [description]) VALUES (3, N'bereavement', NULL)
GO
INSERT [dbo].[benefit] ([id], [name], [description]) VALUES (4, N'guardianship', NULL)
GO
INSERT [dbo].[benefit] ([id], [name], [description]) VALUES (5, N'birth of a child', NULL)
GO
INSERT [dbo].[business_trip] ([id], [employee_id], [order_number], [place], [start_date], [end_date], [purpose]) VALUES (1, 1, N'78sdf98', N'England\York', CAST(N'2017-10-01' AS Date), CAST(N'2017-10-10' AS Date), N'Education')
GO
INSERT [dbo].[business_trip] ([id], [employee_id], [order_number], [place], [start_date], [end_date], [purpose]) VALUES (2, 1, N'7891299', N'Spain Madrid', CAST(N'2017-10-15' AS Date), CAST(N'2017-10-20' AS Date), N'Education')
GO
INSERT [dbo].[business_trip] ([id], [employee_id], [order_number], [place], [start_date], [end_date], [purpose]) VALUES (3, 4, N'8172912', N'Belarusia Molodechno', CAST(N'2016-07-08' AS Date), CAST(N'2016-07-14' AS Date), N'Сonversation with customer')
GO
INSERT [dbo].[business_trip] ([id], [employee_id], [order_number], [place], [start_date], [end_date], [purpose]) VALUES (4, 4, N'9878jks2', N'Belarusia Orsha', CAST(N'2016-08-10' AS Date), CAST(N'2016-08-13' AS Date), N'Conversation with customer')
GO
INSERT [dbo].[business_trip] ([id], [employee_id], [order_number], [place], [start_date], [end_date], [purpose]) VALUES (5, 2, N'jl898911', N'England London', CAST(N'2017-10-09' AS Date), CAST(N'2017-11-15' AS Date), N'Education')
GO
INSERT [dbo].[education] ([id], [educational_institution], [document_title], [document_series], [document_number], [graduation_year], [qualification], [specialty]) VALUES (1, N'BSUIR', N'diploma', N'122er', 12423, 2015, N'engineer programmer', N'KSIS')
GO
INSERT [dbo].[education] ([id], [educational_institution], [document_title], [document_series], [document_number], [graduation_year], [qualification], [specialty]) VALUES (2, N'BGU', N'diploma', N'89821', 23942, 2012, N'engineer programmer', N'RTP')
GO
INSERT [dbo].[education] ([id], [educational_institution], [document_title], [document_series], [document_number], [graduation_year], [qualification], [specialty]) VALUES (3, N'BSUIR', N'diploma', N'123df21', 78912, 2010, N'programmer', N'IEF')
GO
INSERT [dbo].[education] ([id], [educational_institution], [document_title], [document_series], [document_number], [graduation_year], [qualification], [specialty]) VALUES (4, N'BNTU', N'diploma', N'123klsd', 21312, 2016, N'engineer', N'PST')
GO
INSERT [dbo].[education] ([id], [educational_institution], [document_title], [document_series], [document_number], [graduation_year], [qualification], [specialty]) VALUES (5, N'BGU', N'diploma', N'123fd12', 76121, 2015, N'managment', N'MIU')
GO
SET IDENTITY_INSERT [dbo].[employee] ON

GO
INSERT [dbo].[employee] ([employment_date], [dismissal_date], [is_contract], [personal_number], [qualification_id], [personal_info_id], [id]) VALUES (CAST(N'2017-08-25' AS Date), NULL, 1, N'3729676767', 1, 1, 1)
GO
INSERT [dbo].[employee] ([employment_date], [dismissal_date], [is_contract], [personal_number], [qualification_id], [personal_info_id], [id]) VALUES (CAST(N'2015-04-01' AS Date), NULL, 1, N'3753389124', 2, 3, 2)
GO
INSERT [dbo].[employee] ([employment_date], [dismissal_date], [is_contract], [personal_number], [qualification_id], [personal_info_id], [id]) VALUES (CAST(N'2014-01-15' AS Date), NULL, 0, N'3753312321', 3, 4, 3)
GO
INSERT [dbo].[employee] ([employment_date], [dismissal_date], [is_contract], [personal_number], [qualification_id], [personal_info_id], [id]) VALUES (CAST(N'2016-07-01' AS Date), NULL, 1, N'3752967831', 4, 2, 4)
GO
INSERT [dbo].[employee] ([employment_date], [dismissal_date], [is_contract], [personal_number], [qualification_id], [personal_info_id], [id]) VALUES (CAST(N'2017-09-20' AS Date), NULL, 1, N'3752971339', 5, 5, 5)
GO
SET IDENTITY_INSERT [dbo].[employee] OFF
GO
INSERT [dbo].[employee_rights] ([id], [employee_id], [right_code]) VALUES (1, 1, 7273)
GO
INSERT [dbo].[employee_rights] ([id], [employee_id], [right_code]) VALUES (2, 3, 7129)
GO
INSERT [dbo].[employee_rights] ([id], [employee_id], [right_code]) VALUES (3, 3, 9809)
GO
INSERT [dbo].[employee_rights] ([id], [employee_id], [right_code]) VALUES (4, 2, 3787)
GO
INSERT [dbo].[employee_rights] ([id], [employee_id], [right_code]) VALUES (5, 4, 7082)
GO
INSERT [dbo].[employee_rights] ([id], [employee_id], [right_code]) VALUES (6, 5, 6789)
GO
INSERT [dbo].[employment_contract] ([id], [employee_id], [contract_number], [date], [unit_id], [post_id], [schedule_id], [vacation_type_id], [work_nature_id], [rate_count], [salary]) VALUES (1, 1, N'56890-jf', CAST(N'2017-02-14' AS Date), 1, 1, 1, 1, 1, 3, 900)
GO
INSERT [dbo].[employment_contract] ([id], [employee_id], [contract_number], [date], [unit_id], [post_id], [schedule_id], [vacation_type_id], [work_nature_id], [rate_count], [salary]) VALUES (2, 2, N'67879-рг', CAST(N'2017-04-15' AS Date), 1, 2, 1, 1, 2, 2, 800)
GO
INSERT [dbo].[employment_contract] ([id], [employee_id], [contract_number], [date], [unit_id], [post_id], [schedule_id], [vacation_type_id], [work_nature_id], [rate_count], [salary]) VALUES (3, 3, N'56788-ui', CAST(N'2017-07-01' AS Date), 2, 1, 1, 1, 1, 2, 700)
GO
INSERT [dbo].[employment_contract] ([id], [employee_id], [contract_number], [date], [unit_id], [post_id], [schedule_id], [vacation_type_id], [work_nature_id], [rate_count], [salary]) VALUES (4, 4, N'87689-oi', CAST(N'2017-08-01' AS Date), 2, 2, 1, 1, 3, 2, 500)
GO
INSERT [dbo].[employment_contract] ([id], [employee_id], [contract_number], [date], [unit_id], [post_id], [schedule_id], [vacation_type_id], [work_nature_id], [rate_count], [salary]) VALUES (5, 5, N'79809-kl', CAST(N'2017-08-01' AS Date), 5, 5, 1, 1, 5, 5, 800)
GO
INSERT [dbo].[employment_history] ([id], [employee_id], [series], [number], [issue_date], [education]) VALUES (1, 1, N'NULLer681', 12389, CAST(N'2017-08-30' AS Date), N'BSUIR KSIS POIT School №47')
GO
INSERT [dbo].[employment_history] ([id], [employee_id], [series], [number], [issue_date], [education]) VALUES (2, 2, N'42jik21', 67119, CAST(N'2016-08-26' AS Date), N'BGU BTP NBL School № 23 ')
GO
INSERT [dbo].[employment_history] ([id], [employee_id], [series], [number], [issue_date], [education]) VALUES (3, 3, N'689we9', 12312, CAST(N'2015-05-05' AS Date), N'BSUIR KSIS POIT School № 142')
GO
INSERT [dbo].[employment_history] ([id], [employee_id], [series], [number], [issue_date], [education]) VALUES (4, 4, N'67923u', 67811, CAST(N'2014-08-03' AS Date), N'BNTU PST PPL School № 23')
GO
INSERT [dbo].[employment_history] ([id], [employee_id], [series], [number], [issue_date], [education]) VALUES (5, 5, N'4329h1', 45781, CAST(N'2015-08-01' AS Date), N'BGU MIU MAV School № 51')
GO
INSERT [dbo].[employment_history_record] ([id], [employment_history_id], [organization], [date], [record], [base]) VALUES (1, 4, N'OAO Пищевик', CAST(N'2014-12-14' AS Date), NULL, NULL)
GO
INSERT [dbo].[employment_history_record] ([id], [employment_history_id], [organization], [date], [record], [base]) VALUES (2, 4, N'OAO МаркетингФорОлл', CAST(N'2015-02-10' AS Date), NULL, NULL)
GO
INSERT [dbo].[employment_history_record] ([id], [employment_history_id], [organization], [date], [record], [base]) VALUES (3, 4, N'ОАО ТрейдСервис', CAST(N'2015-03-10' AS Date), NULL, NULL)
GO
INSERT [dbo].[employment_history_record] ([id], [employment_history_id], [organization], [date], [record], [base]) VALUES (4, 4, N'ШарашкинБай', CAST(N'2015-04-10' AS Date), NULL, NULL)
GO
INSERT [dbo].[employment_history_record] ([id], [employment_history_id], [organization], [date], [record], [base]) VALUES (5, 4, N'НаушникиБай', CAST(N'2016-05-01' AS Date), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[established_post] ON

GO
INSERT [dbo].[established_post] ([number], [post_id], [rate_count], [unit_id], [salary], [id]) VALUES (N'6897080', 3, 10, 1, 700, 1)
GO
INSERT [dbo].[established_post] ([number], [post_id], [rate_count], [unit_id], [salary], [id]) VALUES (N'6897090', 4, 5, 1, 500, 2)
GO
INSERT [dbo].[established_post] ([number], [post_id], [rate_count], [unit_id], [salary], [id]) VALUES (N'6890121', 4, 4, 2, 400, 3)
GO
INSERT [dbo].[established_post] ([number], [post_id], [rate_count], [unit_id], [salary], [id]) VALUES (N'7980990', 3, 10, 3, 750, 4)
GO
INSERT [dbo].[established_post] ([number], [post_id], [rate_count], [unit_id], [salary], [id]) VALUES (N'7687980', 4, 6, 3, 350, 5)
GO
INSERT [dbo].[established_post] ([number], [post_id], [rate_count], [unit_id], [salary], [id]) VALUES (N'test1', 6, 1, 1, 1, 6)
GO
INSERT [dbo].[established_post] ([number], [post_id], [rate_count], [unit_id], [salary], [id]) VALUES (N'test1', 7, 1, 1, 1, 7)
GO
SET IDENTITY_INSERT [dbo].[established_post] OFF
GO
INSERT [dbo].[family_composition] ([id], [employee_id], [first_name], [last_name], [birthday], [relationship_degree]) VALUES (1, 1, N'Ivan', N'Piscov', CAST(N'1969-09-09' AS Date), N'father              ')
GO
INSERT [dbo].[family_composition] ([id], [employee_id], [first_name], [last_name], [birthday], [relationship_degree]) VALUES (2, 1, N'Mari', N'Piscova', CAST(N'1972-04-02' AS Date), N'mother              ')
GO
INSERT [dbo].[family_composition] ([id], [employee_id], [first_name], [last_name], [birthday], [relationship_degree]) VALUES (3, 2, N'Tatiana', N'Ivanova', CAST(N'1989-07-21' AS Date), N'wife                ')
GO
INSERT [dbo].[family_composition] ([id], [employee_id], [first_name], [last_name], [birthday], [relationship_degree]) VALUES (4, 2, N'Victor', N'Ivanov', CAST(N'2000-04-01' AS Date), N'son                 ')
GO
INSERT [dbo].[family_composition] ([id], [employee_id], [first_name], [last_name], [birthday], [relationship_degree]) VALUES (5, 2, N'Diana', N'Ivanova', CAST(N'2001-05-04' AS Date), N'daughter            ')
GO
INSERT [dbo].[hospital] ([id], [employee_id], [start_date], [day_count]) VALUES (1, 1, CAST(N'2017-11-09' AS Date), 7)
GO
INSERT [dbo].[hospital] ([id], [employee_id], [start_date], [day_count]) VALUES (2, 1, CAST(N'2017-12-01' AS Date), 4)
GO
INSERT [dbo].[hospital] ([id], [employee_id], [start_date], [day_count]) VALUES (3, 2, CAST(N'2017-10-07' AS Date), 3)
GO
INSERT [dbo].[hospital] ([id], [employee_id], [start_date], [day_count]) VALUES (4, 2, CAST(N'2017-11-12' AS Date), 5)
GO
INSERT [dbo].[hospital] ([id], [employee_id], [start_date], [day_count]) VALUES (5, 3, CAST(N'2017-11-04' AS Date), 7)
GO
INSERT [dbo].[m2m_employee_benefit] ([employee_id], [benefit_id], [cause]) VALUES (1, 1, N'1')
GO
INSERT [dbo].[m2m_employee_benefit] ([employee_id], [benefit_id], [cause]) VALUES (1, 2, N'1')
GO
INSERT [dbo].[m2m_employee_benefit] ([employee_id], [benefit_id], [cause]) VALUES (2, 1, N'22')
GO
INSERT [dbo].[m2m_employee_benefit] ([employee_id], [benefit_id], [cause]) VALUES (2, 2, N'2')
GO
INSERT [dbo].[personal_info] ([id], [first_name], [last_name], [birthday], [sex], [family_status], [insurance_number], [education_id], [military_register]) VALUES (1, N'Anastasiya', N'Helda', CAST(N'1997-03-15' AS Date), N'w', N'idle', N'1378912', 1, N'non-obliged    ')
GO
INSERT [dbo].[personal_info] ([id], [first_name], [last_name], [birthday], [sex], [family_status], [insurance_number], [education_id], [military_register]) VALUES (2, N'Aleksei', N'Kozlovski', CAST(N'1997-02-19' AS Date), N'm', N'idle', N'17937ghj21321', 1, N'obliged        ')
GO
INSERT [dbo].[personal_info] ([id], [first_name], [last_name], [birthday], [sex], [family_status], [insurance_number], [education_id], [military_register]) VALUES (3, N'Petr', N'Ivanov', CAST(N'1995-05-22' AS Date), N'm', N'married', N'8uewrh912', 3, N'obliged        ')
GO
INSERT [dbo].[personal_info] ([id], [first_name], [last_name], [birthday], [sex], [family_status], [insurance_number], [education_id], [military_register]) VALUES (4, N'Mari', N'Bulkina', CAST(N'1994-04-12' AS Date), N'w', N'idle', N'0912dfs0912', 2, N'non-obliged    ')
GO
INSERT [dbo].[personal_info] ([id], [first_name], [last_name], [birthday], [sex], [family_status], [insurance_number], [education_id], [military_register]) VALUES (5, N'Gleb', N'Legchilov', CAST(N'1996-09-05' AS Date), N'm', N'idle', N'isodufh0821', 1, N'obliged        ')
GO
SET IDENTITY_INSERT [dbo].[post] ON

GO
INSERT [dbo].[post] ([name], [id]) VALUES (N'Company director', 1)
GO
INSERT [dbo].[post] ([name], [id]) VALUES (N'Main manager', 2)
GO
INSERT [dbo].[post] ([name], [id]) VALUES (N'Senior developer', 3)
GO
INSERT [dbo].[post] ([name], [id]) VALUES (N'Senior test lead', 4)
GO
INSERT [dbo].[post] ([name], [id]) VALUES (N'Security chief', 5)
GO
INSERT [dbo].[post] ([name], [id]) VALUES (N'test1', 6)
GO
INSERT [dbo].[post] ([name], [id]) VALUES (N'test1', 7)
GO
SET IDENTITY_INSERT [dbo].[post] OFF
GO
INSERT [dbo].[qualification] ([id], [name], [category]) VALUES (1, N'testing', N'junior')
GO
INSERT [dbo].[qualification] ([id], [name], [category]) VALUES (2, N'developing', N'middle')
GO
INSERT [dbo].[qualification] ([id], [name], [category]) VALUES (3, N'testing', N'lead')
GO
INSERT [dbo].[qualification] ([id], [name], [category]) VALUES (4, N'human resourses', N'senior')
GO
INSERT [dbo].[qualification] ([id], [name], [category]) VALUES (5, N'project manager', N'lead')
GO
INSERT [dbo].[schedule] ([id], [hoyrs_per_day], [days_per_week], [work_day_beginning], [work_day_end], [lunch_break]) VALUES (1, 8, 5, CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
GO
INSERT [dbo].[schedule] ([id], [hoyrs_per_day], [days_per_week], [work_day_beginning], [work_day_end], [lunch_break]) VALUES (2, 8, 5, CAST(N'13:00:00' AS Time), CAST(N'22:00:00' AS Time), 1)
GO
INSERT [dbo].[schedule] ([id], [hoyrs_per_day], [days_per_week], [work_day_beginning], [work_day_end], [lunch_break]) VALUES (3, 10, 4, CAST(N'10:00:00' AS Time), CAST(N'21:00:00' AS Time), 1)
GO
SET IDENTITY_INSERT [dbo].[structural_unit] ON

GO
INSERT [dbo].[structural_unit] ([name], [phone], [id]) VALUES (N'Web development', N'8901298', 1)
GO
INSERT [dbo].[structural_unit] ([name], [phone], [id]) VALUES (N'Testing', N'7901123', 2)
GO
INSERT [dbo].[structural_unit] ([name], [phone], [id]) VALUES (N'Managment', N'8021912', 3)
GO
INSERT [dbo].[structural_unit] ([name], [phone], [id]) VALUES (N'Big data', N'5689129', 4)
GO
INSERT [dbo].[structural_unit] ([name], [phone], [id]) VALUES (N'Mobile application', N'6879809', 5)
GO
INSERT [dbo].[structural_unit] ([name], [phone], [id]) VALUES (N'wwww', N'qweqwe', 6)
GO
INSERT [dbo].[structural_unit] ([name], [phone], [id]) VALUES (N'2222', NULL, 7)
GO
INSERT [dbo].[structural_unit] ([name], [phone], [id]) VALUES (N'2222', NULL, 8)
GO
INSERT [dbo].[structural_unit] ([name], [phone], [id]) VALUES (N'2222', NULL, 9)
GO
INSERT [dbo].[structural_unit] ([name], [phone], [id]) VALUES (N'2222', NULL, 10)
GO
SET IDENTITY_INSERT [dbo].[structural_unit] OFF
GO
INSERT [dbo].[user] ([id], [name], [password], [is_admin]) VALUES (1, N'admin', N'admin', 1)
GO
INSERT [dbo].[user] ([id], [name], [password], [is_admin]) VALUES (2, N'user1', N'user1', 0)
GO
INSERT [dbo].[user] ([id], [name], [password], [is_admin]) VALUES (3, N'user2', N'user2', 0)
GO
INSERT [dbo].[vacation] ([id], [employee_id], [vacation_type_id], [order_number], [start_date]) VALUES (1, 1, 1, 57879, CAST(N'2017-09-12' AS Date))
GO
INSERT [dbo].[vacation] ([id], [employee_id], [vacation_type_id], [order_number], [start_date]) VALUES (2, 1, 6, 68980, CAST(N'2017-11-01' AS Date))
GO
INSERT [dbo].[vacation] ([id], [employee_id], [vacation_type_id], [order_number], [start_date]) VALUES (3, 2, 2, 69101, CAST(N'2017-11-01' AS Date))
GO
INSERT [dbo].[vacation] ([id], [employee_id], [vacation_type_id], [order_number], [start_date]) VALUES (4, 4, 3, 68980, CAST(N'2017-10-10' AS Date))
GO
INSERT [dbo].[vacation] ([id], [employee_id], [vacation_type_id], [order_number], [start_date]) VALUES (5, 5, 4, 65621, CAST(N'2017-09-18' AS Date))
GO
INSERT [dbo].[vacation_type] ([id], [name], [days_number]) VALUES (1, N'Main', 60)
GO
INSERT [dbo].[vacation_type] ([id], [name], [days_number]) VALUES (2, N'Additional', 10)
GO
INSERT [dbo].[vacation_type] ([id], [name], [days_number]) VALUES (3, N'Maternity', 140)
GO
INSERT [dbo].[vacation_type] ([id], [name], [days_number]) VALUES (4, N'personal_family_challenges', 2)
GO
INSERT [dbo].[vacation_type] ([id], [name], [days_number]) VALUES (5, N'children_care', 10)
GO
INSERT [dbo].[vacation_type] ([id], [name], [days_number]) VALUES (6, N'sick', 10)
GO
INSERT [dbo].[vacation_type] ([id], [name], [days_number]) VALUES (7, N'Education', 20)
GO
INSERT [dbo].[work_nature] ([id], [name], [description]) VALUES (1, N'Development', N'Develop program sofware')
GO
INSERT [dbo].[work_nature] ([id], [name], [description]) VALUES (2, N'Testing', N'Proving testing for program sofware')
GO
INSERT [dbo].[work_nature] ([id], [name], [description]) VALUES (3, N'Managment', N'Managing compay staff')
GO
INSERT [dbo].[work_nature] ([id], [name], [description]) VALUES (4, N'Security', N'Secure company and it intellectual property')
GO
INSERT [dbo].[work_nature] ([id], [name], [description]) VALUES (5, N'Analytics', N'Market analysis')
GO
ALTER TABLE [dbo].[business_trip]  WITH CHECK ADD  CONSTRAINT [FK_business_trip_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[business_trip] CHECK CONSTRAINT [FK_business_trip_employee]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_qualification] FOREIGN KEY([qualification_id])
REFERENCES [dbo].[qualification] ([id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_qualification]
GO
ALTER TABLE [dbo].[employee_rights]  WITH CHECK ADD  CONSTRAINT [FK_employee_rights_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[employee_rights] CHECK CONSTRAINT [FK_employee_rights_employee]
GO
ALTER TABLE [dbo].[employment_contract]  WITH CHECK ADD  CONSTRAINT [FK_employment_contract_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[employment_contract] CHECK CONSTRAINT [FK_employment_contract_employee]
GO
ALTER TABLE [dbo].[employment_contract]  WITH CHECK ADD  CONSTRAINT [FK_employment_contract_post] FOREIGN KEY([post_id])
REFERENCES [dbo].[post] ([id])
GO
ALTER TABLE [dbo].[employment_contract] CHECK CONSTRAINT [FK_employment_contract_post]
GO
ALTER TABLE [dbo].[employment_contract]  WITH CHECK ADD  CONSTRAINT [FK_employment_contract_schedule] FOREIGN KEY([schedule_id])
REFERENCES [dbo].[schedule] ([id])
GO
ALTER TABLE [dbo].[employment_contract] CHECK CONSTRAINT [FK_employment_contract_schedule]
GO
ALTER TABLE [dbo].[employment_contract]  WITH CHECK ADD  CONSTRAINT [FK_employment_contract_structural_unit] FOREIGN KEY([unit_id])
REFERENCES [dbo].[structural_unit] ([id])
GO
ALTER TABLE [dbo].[employment_contract] CHECK CONSTRAINT [FK_employment_contract_structural_unit]
GO
ALTER TABLE [dbo].[employment_contract]  WITH CHECK ADD  CONSTRAINT [FK_employment_contract_vacation_type] FOREIGN KEY([vacation_type_id])
REFERENCES [dbo].[vacation_type] ([id])
GO
ALTER TABLE [dbo].[employment_contract] CHECK CONSTRAINT [FK_employment_contract_vacation_type]
GO
ALTER TABLE [dbo].[employment_contract]  WITH CHECK ADD  CONSTRAINT [FK_employment_contract_work_nature] FOREIGN KEY([work_nature_id])
REFERENCES [dbo].[work_nature] ([id])
GO
ALTER TABLE [dbo].[employment_contract] CHECK CONSTRAINT [FK_employment_contract_work_nature]
GO
ALTER TABLE [dbo].[employment_history]  WITH CHECK ADD  CONSTRAINT [FK_employment_history_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[employment_history] CHECK CONSTRAINT [FK_employment_history_employee]
GO
ALTER TABLE [dbo].[established_post]  WITH CHECK ADD  CONSTRAINT [FK_established_post_post] FOREIGN KEY([post_id])
REFERENCES [dbo].[post] ([id])
GO
ALTER TABLE [dbo].[established_post] CHECK CONSTRAINT [FK_established_post_post]
GO
ALTER TABLE [dbo].[established_post]  WITH CHECK ADD  CONSTRAINT [FK_established_post_structural_unit] FOREIGN KEY([unit_id])
REFERENCES [dbo].[structural_unit] ([id])
GO
ALTER TABLE [dbo].[established_post] CHECK CONSTRAINT [FK_established_post_structural_unit]
GO
ALTER TABLE [dbo].[family_composition]  WITH CHECK ADD  CONSTRAINT [FK_family_composition_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[family_composition] CHECK CONSTRAINT [FK_family_composition_employee]
GO
ALTER TABLE [dbo].[hospital]  WITH CHECK ADD  CONSTRAINT [FK_hospital_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[hospital] CHECK CONSTRAINT [FK_hospital_employee]
GO
ALTER TABLE [dbo].[m2m_employee_benefit]  WITH CHECK ADD  CONSTRAINT [FK_m2m_employee_benefit_benefit] FOREIGN KEY([benefit_id])
REFERENCES [dbo].[benefit] ([id])
GO
ALTER TABLE [dbo].[m2m_employee_benefit] CHECK CONSTRAINT [FK_m2m_employee_benefit_benefit]
GO
ALTER TABLE [dbo].[m2m_employee_benefit]  WITH CHECK ADD  CONSTRAINT [FK_m2m_employee_benefit_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[m2m_employee_benefit] CHECK CONSTRAINT [FK_m2m_employee_benefit_employee]
GO
ALTER TABLE [dbo].[personal_info]  WITH CHECK ADD  CONSTRAINT [FK_personal_info_education] FOREIGN KEY([education_id])
REFERENCES [dbo].[education] ([id])
GO
ALTER TABLE [dbo].[personal_info] CHECK CONSTRAINT [FK_personal_info_education]
GO
ALTER TABLE [dbo].[vacation]  WITH CHECK ADD  CONSTRAINT [FK_vacation_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[vacation] CHECK CONSTRAINT [FK_vacation_employee]
GO
ALTER TABLE [dbo].[vacation]  WITH CHECK ADD  CONSTRAINT [FK_vacation_vacation_type] FOREIGN KEY([vacation_type_id])
REFERENCES [dbo].[vacation_type] ([id])
GO
ALTER TABLE [dbo].[vacation] CHECK CONSTRAINT [FK_vacation_vacation_type]
GO
ALTER TABLE [dbo].[education]  WITH CHECK ADD  CONSTRAINT [graduation_year_check] CHECK  (([graduation_year]>(1900) AND [graduation_year]<(2200)))
GO
ALTER TABLE [dbo].[education] CHECK CONSTRAINT [graduation_year_check]
GO
ALTER TABLE [dbo].[employee_rights]  WITH CHECK ADD  CONSTRAINT [right_code_check] CHECK  (([right_code]>(0)))
GO
ALTER TABLE [dbo].[employee_rights] CHECK CONSTRAINT [right_code_check]
GO
ALTER TABLE [dbo].[family_composition]  WITH CHECK ADD  CONSTRAINT [relationship_degree_check] CHECK  (([relationship_degree]='father' OR [relationship_degree]='mother' OR [relationship_degree]='husband' OR [relationship_degree]='wife' OR [relationship_degree]='daughter' OR [relationship_degree]='son'))
GO
ALTER TABLE [dbo].[family_composition] CHECK CONSTRAINT [relationship_degree_check]
GO
ALTER TABLE [dbo].[hospital]  WITH CHECK ADD  CONSTRAINT [day_count_check] CHECK  (([day_count]>(0)))
GO
ALTER TABLE [dbo].[hospital] CHECK CONSTRAINT [day_count_check]
GO
ALTER TABLE [dbo].[personal_info]  WITH CHECK ADD  CONSTRAINT [family_status_check] CHECK  (([family_status]='idle' OR [family_status]='married'))
GO
ALTER TABLE [dbo].[personal_info] CHECK CONSTRAINT [family_status_check]
GO
ALTER TABLE [dbo].[personal_info]  WITH CHECK ADD  CONSTRAINT [military_register_check] CHECK  (([military_register]='non-obliged' OR [military_register]='obliged'))
GO
ALTER TABLE [dbo].[personal_info] CHECK CONSTRAINT [military_register_check]
GO
ALTER TABLE [dbo].[personal_info]  WITH CHECK ADD  CONSTRAINT [sex_check] CHECK  (([sex]='w' OR [sex]='m'))
GO
ALTER TABLE [dbo].[personal_info] CHECK CONSTRAINT [sex_check]
GO
ALTER TABLE [dbo].[qualification]  WITH CHECK ADD  CONSTRAINT [category_check] CHECK  (([category]='lead' OR [category]='senior' OR [category]='middle' OR [category]='junior'))
GO
ALTER TABLE [dbo].[qualification] CHECK CONSTRAINT [category_check]
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [days_per_week_check] CHECK  (([days_per_week]>=(0) AND [days_per_week]<=(7)))
GO
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [days_per_week_check]
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [hoyrs_per_day_check] CHECK  (([hoyrs_per_day]>=(0) AND [hoyrs_per_day]<=(24)))
GO
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [hoyrs_per_day_check]
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [lunch_break_check] CHECK  (([lunch_break]>=(0) AND [lunch_break]<=(24)))
GO
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [lunch_break_check]
GO
ALTER TABLE [dbo].[vacation_type]  WITH CHECK ADD  CONSTRAINT [days_number_check] CHECK  (([days_number]>=(0) AND [days_number]<=(365)))
GO
ALTER TABLE [dbo].[vacation_type] CHECK CONSTRAINT [days_number_check]
GO
ALTER TABLE [dbo].[vacation_type]  WITH CHECK ADD  CONSTRAINT [name_check] CHECK  (([name]='personal_family_challenges' OR [name]='education' OR [name]='children_care' OR [name]='maternity' OR [name]='sick' OR [name]='additional' OR [name]='main'))
GO
ALTER TABLE [dbo].[vacation_type] CHECK CONSTRAINT [name_check]
GO
USE [master]
GO
ALTER DATABASE [human_resources_department_db] SET  READ_WRITE
GO
