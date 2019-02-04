CREATE TABLE [dbo].[Educationals]
(
[UserID_int] [int] NOT NULL,
[Name_nvc] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Managername_nvc] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Phone_vc] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address_nvc] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Area_int] [int] NULL,
[Location_vc] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Educationals] ADD CONSTRAINT [PK_Educationals] PRIMARY KEY CLUSTERED  ([UserID_int]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Educationals] ADD CONSTRAINT [FK_Educationals_Areas] FOREIGN KEY ([Area_int]) REFERENCES [dbo].[Areas] ([ID_int])
GO
ALTER TABLE [dbo].[Educationals] ADD CONSTRAINT [FK_Educationals_Users] FOREIGN KEY ([UserID_int]) REFERENCES [dbo].[Users] ([ID_int])
GO
