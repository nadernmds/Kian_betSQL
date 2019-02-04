CREATE TABLE [dbo].[States]
(
[StateID_int] [int] NOT NULL,
[StateName_nvc] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[States] ADD CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED  ([StateID_int]) ON [PRIMARY]
GO
