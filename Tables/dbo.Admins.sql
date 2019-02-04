CREATE TABLE [dbo].[Admins]
(
[UserID_int] [int] NOT NULL,
[Name_nvc] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Mobile_vc] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Admins] ADD CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED  ([UserID_int]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Admins] ADD CONSTRAINT [FK_Admins_Users] FOREIGN KEY ([UserID_int]) REFERENCES [dbo].[Users] ([ID_int]) ON DELETE CASCADE ON UPDATE CASCADE
GO
