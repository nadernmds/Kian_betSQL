CREATE TABLE [dbo].[EducationalBranchs]
(
[ID_int] [int] NOT NULL IDENTITY(1, 1),
[Name_nvc] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EducationalBranchs] ADD CONSTRAINT [PK_EducationalBranchs] PRIMARY KEY CLUSTERED  ([ID_int]) ON [PRIMARY]
GO
