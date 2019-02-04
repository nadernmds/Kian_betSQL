CREATE TABLE [dbo].[Grades]
(
[ID_int] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Grade_nvc] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Grades] ADD CONSTRAINT [PK_Grades] PRIMARY KEY CLUSTERED  ([ID_int]) ON [PRIMARY]
GO
