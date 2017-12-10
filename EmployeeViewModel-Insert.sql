USE [mike]
GO

/****** Object:  Table [dbo].[EmployeeViewModel]    Script Date: 09/12/2017 18:39:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmployeeViewModel](
	[EmployeeID] [int] NOT NULL,
	[Name] [nchar](10) NULL,
	[DepartmentID] [int] NULL,
	[Address] [nchar](10) NULL,
	[DepartmentName] [nchar](10) NULL,
	[Remember] [nchar](10) NULL,
 CONSTRAINT [PK_EmployeeViewModel] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

Insert into dbo.EmployeeViewModel values (1,'Mike', 1, 'Gloucester', 'Developer1', 0)
Insert into dbo.EmployeeViewModel values (2,'Adam', 1, 'Gloucester', 'Developer2', 0)
Insert into dbo.EmployeeViewModel values (3,'Alan', 1, 'Gloucester', 'Developer3', 0)
Insert into dbo.EmployeeViewModel values (4,'God', 1, 'Gloucester', 'Developer4', 0)
Insert into dbo.EmployeeViewModel values (5,'Christ', 1, 'Gloucester', 'Developer5', 0)
Go
