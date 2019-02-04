CREATE TABLE [dbo].[BrachsOfEducationals]
(
[ID_int] [int] NOT NULL IDENTITY(1, 1),
[Educational_int] [int] NOT NULL,
[Branch_int] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BrachsOfEducationals] ADD CONSTRAINT [PK_BrachsOfEducationals] PRIMARY KEY CLUSTERED  ([ID_int]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BrachsOfEducationals] ADD CONSTRAINT [FK_BrachsOfEducationals_EducationalBranchs] FOREIGN KEY ([Branch_int]) REFERENCES [dbo].[EducationalBranchs] ([ID_int]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BrachsOfEducationals] ADD CONSTRAINT [FK_BrachsOfEducationals_Educationals] FOREIGN KEY ([Educational_int]) REFERENCES [dbo].[Educationals] ([UserID_int]) ON DELETE CASCADE ON UPDATE CASCADE
GO
EXEC sp_addextendedproperty N'Info', N'لیست رشته های هر آموزشگاه', 'SCHEMA', N'dbo', 'TABLE', N'BrachsOfEducationals', NULL, NULL
GO
