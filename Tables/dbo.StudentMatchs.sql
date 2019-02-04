CREATE TABLE [dbo].[StudentMatchs]
(
[ID_bint] [bigint] NOT NULL IDENTITY(1, 1),
[Match_int] [int] NOT NULL,
[Student_bint] [bigint] NOT NULL,
[RegisterDate_vc] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Score_flt] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StudentMatchs] ADD CONSTRAINT [PK_StudentMaths] PRIMARY KEY CLUSTERED  ([ID_bint]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StudentMatchs] ADD CONSTRAINT [FK_StudentMaths_matchs] FOREIGN KEY ([Match_int]) REFERENCES [dbo].[matchs] ([ID_int])
GO
ALTER TABLE [dbo].[StudentMatchs] ADD CONSTRAINT [FK_StudentMaths_Students] FOREIGN KEY ([Student_bint]) REFERENCES [dbo].[Students] ([ID_bint]) ON DELETE CASCADE ON UPDATE CASCADE
GO
