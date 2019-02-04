CREATE TABLE [dbo].[Cities]
(
[ID_int] [int] NOT NULL IDENTITY(1, 1),
[Name_nvc] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StateID_int] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cities] ADD CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED  ([ID_int]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cities] ADD CONSTRAINT [FK_Cities_States] FOREIGN KEY ([StateID_int]) REFERENCES [dbo].[States] ([StateID_int]) ON DELETE CASCADE ON UPDATE CASCADE
GO
