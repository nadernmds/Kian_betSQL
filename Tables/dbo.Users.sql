CREATE TABLE [dbo].[Users]
(
[ID_int] [int] NOT NULL IDENTITY(1, 1),
[UserName_nvc] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password_nvc] [nvarchar] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Type_tint] [tinyint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED  ([ID_int]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [FK_Users_UserTypes] FOREIGN KEY ([Type_tint]) REFERENCES [dbo].[UserTypes] ([ID_tint])
GO
