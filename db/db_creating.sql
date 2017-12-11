USE [master]
GO
/****** Object:  Database [human_resources_department_db]    Script Date: 11.12.2017 22:28:50 ******/
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
/****** Object:  Table [dbo].[benefit]    Script Date: 11.12.2017 22:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[benefit](
	[id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[benefit_name] [nvarchar](150) NOT NULL,
	[document_number] [nvarchar](50) NOT NULL,
	[document_date] [date] NOT NULL,
	[cause] [nvarchar](500) NULL,
 CONSTRAINT [PK_benefit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[business_trip]    Script Date: 11.12.2017 22:28:51 ******/
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
/****** Object:  Table [dbo].[education]    Script Date: 11.12.2017 22:28:51 ******/
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
/****** Object:  Table [dbo].[employee]    Script Date: 11.12.2017 22:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[id] [int] NOT NULL,
	[employment_date] [date] NOT NULL,
	[dismissal_date] [date] NULL,
	[is_contract] [bit] NOT NULL,
	[personal_number] [nvarchar](10) NOT NULL,
	[qualification_id] [int] NOT NULL,
	[personal_info_id] [int] NOT NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employee_rights]    Script Date: 11.12.2017 22:28:51 ******/
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
/****** Object:  Table [dbo].[employment_contract]    Script Date: 11.12.2017 22:28:51 ******/
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
/****** Object:  Table [dbo].[employment_history]    Script Date: 11.12.2017 22:28:51 ******/
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
/****** Object:  Table [dbo].[employment_history_record]    Script Date: 11.12.2017 22:28:51 ******/
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
/****** Object:  Table [dbo].[established_post]    Script Date: 11.12.2017 22:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[established_post](
	[id] [int] NOT NULL,
	[number] [nvarchar](50) NOT NULL,
	[post_id] [int] NOT NULL,
	[rate_count] [int] NOT NULL,
	[unit_id] [int] NOT NULL,
	[salary] [float] NULL,
 CONSTRAINT [PK_established_post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[family_composition]    Script Date: 11.12.2017 22:28:51 ******/
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
/****** Object:  Table [dbo].[hospital]    Script Date: 11.12.2017 22:28:51 ******/
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
/****** Object:  Table [dbo].[personal_info]    Script Date: 11.12.2017 22:28:51 ******/
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
	[military_register] [nchar](15) NOT NULL,
 CONSTRAINT [PK_employee_personal_info] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[post]    Script Date: 11.12.2017 22:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[id] [int] NOT NULL,
	[name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[qualification]    Script Date: 11.12.2017 22:28:51 ******/
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
/****** Object:  Table [dbo].[schedule]    Script Date: 11.12.2017 22:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[structural_unit]    Script Date: 11.12.2017 22:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[structural_unit](
	[id] [int] NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_structural_unit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 11.12.2017 22:28:51 ******/
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
/****** Object:  Table [dbo].[vacation]    Script Date: 11.12.2017 22:28:51 ******/
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
/****** Object:  Table [dbo].[vacation_type]    Script Date: 11.12.2017 22:28:51 ******/
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
/****** Object:  Table [dbo].[work_nature]    Script Date: 11.12.2017 22:28:51 ******/
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
ALTER TABLE [dbo].[benefit]  WITH CHECK ADD  CONSTRAINT [FK_benefit_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[benefit] CHECK CONSTRAINT [FK_benefit_employee]
GO
ALTER TABLE [dbo].[business_trip]  WITH CHECK ADD  CONSTRAINT [FK_business_trip_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[business_trip] CHECK CONSTRAINT [FK_business_trip_employee]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_personal_info] FOREIGN KEY([personal_info_id])
REFERENCES [dbo].[personal_info] ([id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_personal_info]
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
ON UPDATE CASCADE
ON DELETE CASCADE
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
ALTER TABLE [dbo].[employment_history_record]  WITH CHECK ADD  CONSTRAINT [FK_employment_history_record_employment_history] FOREIGN KEY([employment_history_id])
REFERENCES [dbo].[employment_history] ([id])
GO
ALTER TABLE [dbo].[employment_history_record] CHECK CONSTRAINT [FK_employment_history_record_employment_history]
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
ALTER TABLE [dbo].[personal_info]  WITH CHECK ADD  CONSTRAINT [FK_personal_info_education] FOREIGN KEY([education_id])
REFERENCES [dbo].[education] ([id])
GO
ALTER TABLE [dbo].[personal_info] CHECK CONSTRAINT [FK_personal_info_education]
GO
ALTER TABLE [dbo].[vacation]  WITH CHECK ADD  CONSTRAINT [FK_vacation_employee] FOREIGN KEY([id])
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
