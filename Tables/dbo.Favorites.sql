CREATE TABLE [dbo].[Favorites]
(
[ID_bint] [bigint] NOT NULL IDENTITY(1, 1),
[Educational_int] [int] NOT NULL,
[Student_Bint] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Favorites] ADD CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED  ([ID_bint]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Favorites] ADD CONSTRAINT [FK_Favorites_Educationals] FOREIGN KEY ([Educational_int]) REFERENCES [dbo].[Educationals] ([UserID_int]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Favorites] ADD CONSTRAINT [FK_Favorites_Students] FOREIGN KEY ([Student_Bint]) REFERENCES [dbo].[Students] ([ID_bint]) ON DELETE CASCADE ON UPDATE CASCADE
GO
