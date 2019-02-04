CREATE TABLE [dbo].[Teachers]
(
[ID_int] [int] NOT NULL IDENTITY(1, 1),
[Name_nvc] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NationCode_vc] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Mobile_vc] [varchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Teachers] ADD CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED  ([ID_int]) ON [PRIMARY]
GO
