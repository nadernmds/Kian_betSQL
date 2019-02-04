CREATE TABLE [dbo].[UserTypes]
(
[ID_tint] [tinyint] NOT NULL IDENTITY(1, 1),
[userType_nvc] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserTypes] ADD CONSTRAINT [PK_UserTypes] PRIMARY KEY CLUSTERED  ([ID_tint]) ON [PRIMARY]
GO
