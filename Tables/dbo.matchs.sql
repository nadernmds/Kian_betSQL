CREATE TABLE [dbo].[matchs]
(
[ID_int] [int] NOT NULL IDENTITY(1, 1),
[Title_nvc] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description_nvc] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Educational_int] [int] NOT NULL,
[Price_int] [int] NOT NULL CONSTRAINT [DF_matchs_Price_int] DEFAULT ((0)),
[Branch_int] [int] NOT NULL,
[Time_sint] [smallint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[matchs] ADD CONSTRAINT [PK_matchs] PRIMARY KEY CLUSTERED  ([ID_int]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[matchs] ADD CONSTRAINT [FK_matchs_EducationalBranchs] FOREIGN KEY ([Branch_int]) REFERENCES [dbo].[EducationalBranchs] ([ID_int]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[matchs] ADD CONSTRAINT [FK_matchs_Educationals] FOREIGN KEY ([Educational_int]) REFERENCES [dbo].[Educationals] ([UserID_int]) ON DELETE CASCADE ON UPDATE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'ؤشته', 'SCHEMA', N'dbo', 'TABLE', N'matchs', 'COLUMN', N'Branch_int'
GO
EXEC sp_addextendedproperty N'MS_Description', N'اموزشگاه', 'SCHEMA', N'dbo', 'TABLE', N'matchs', 'COLUMN', N'Educational_int'
GO
