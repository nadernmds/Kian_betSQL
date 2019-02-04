CREATE TABLE [dbo].[Classes]
(
[ID_int] [int] NOT NULL IDENTITY(1, 1),
[Title_nvc] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Time_vc] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Days_vc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StartDate_vc] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastDate_vc] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Capacity_sint] [smallint] NOT NULL,
[Price_int] [int] NULL,
[Teacher_int] [int] NOT NULL,
[RegisterDate_vc] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Educational_int] [int] NOT NULL,
[Branch_int] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Classes] ADD CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED  ([ID_int]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Classes] ADD CONSTRAINT [FK_Classes_EducationalBranchs] FOREIGN KEY ([Branch_int]) REFERENCES [dbo].[EducationalBranchs] ([ID_int])
GO
ALTER TABLE [dbo].[Classes] ADD CONSTRAINT [FK_Classes_Educationals] FOREIGN KEY ([Educational_int]) REFERENCES [dbo].[Educationals] ([UserID_int])
GO
ALTER TABLE [dbo].[Classes] ADD CONSTRAINT [FK_Classes_Teachers] FOREIGN KEY ([Teacher_int]) REFERENCES [dbo].[Teachers] ([ID_int])
GO
