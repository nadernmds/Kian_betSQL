CREATE TABLE [dbo].[EducationalRates]
(
[ID_int] [int] NOT NULL IDENTITY(1, 1),
[Rate_tint] [tinyint] NOT NULL,
[Educational_int] [int] NOT NULL,
[Text_nvc] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EducationalRates] ADD CONSTRAINT [PK_EducationalRates] PRIMARY KEY CLUSTERED  ([ID_int]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EducationalRates] ADD CONSTRAINT [FK_EducationalRates_Educationals] FOREIGN KEY ([Educational_int]) REFERENCES [dbo].[Educationals] ([UserID_int]) ON DELETE CASCADE ON UPDATE CASCADE
GO
