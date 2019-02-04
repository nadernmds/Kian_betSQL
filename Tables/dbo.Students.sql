CREATE TABLE [dbo].[Students]
(
[ID_bint] [bigint] NOT NULL IDENTITY(1000, 1),
[Mobile_vc] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password_nvc] [nvarchar] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City_int] [int] NULL,
[Address_nvc] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NationCode_vc] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BirthDay_vc] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FatherName_nvc] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GradeeID_nvc] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Branch_int] [int] NULL,
[Phone_vc] [varchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Profile_nvc] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FName_nvc] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LName_nvc] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Students] ADD CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED  ([ID_bint]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Students] ADD CONSTRAINT [FK_Students_Cities] FOREIGN KEY ([City_int]) REFERENCES [dbo].[Cities] ([ID_int])
GO
ALTER TABLE [dbo].[Students] ADD CONSTRAINT [FK_Students_EducationalBranchs] FOREIGN KEY ([Branch_int]) REFERENCES [dbo].[EducationalBranchs] ([ID_int])
GO
ALTER TABLE [dbo].[Students] ADD CONSTRAINT [FK_Students_Grades] FOREIGN KEY ([GradeeID_nvc]) REFERENCES [dbo].[Grades] ([ID_int])
GO
