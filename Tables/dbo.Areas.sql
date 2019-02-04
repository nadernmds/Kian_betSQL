CREATE TABLE [dbo].[Areas]
(
[ID_int] [int] NOT NULL IDENTITY(1, 1),
[Name_nvc] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[City_int] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Areas] ADD CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED  ([ID_int]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Areas] ADD CONSTRAINT [FK_Areas_Cities] FOREIGN KEY ([City_int]) REFERENCES [dbo].[Cities] ([ID_int]) ON DELETE CASCADE ON UPDATE CASCADE
GO
