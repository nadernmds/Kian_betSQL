CREATE TABLE [dbo].[Scores]
(
[ID_bint] [bigint] NOT NULL IDENTITY(1, 1),
[ScoreType_bit] [bit] NOT NULL CONSTRAINT [DF_Scores_ScoreType_bit] DEFAULT ((0)),
[Rate_flt] [float] NULL,
[Comment_nvc] [nvarchar] (800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Student_bint] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Scores] ADD CONSTRAINT [PK_Scores] PRIMARY KEY CLUSTERED  ([ID_bint]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Scores] ADD CONSTRAINT [FK_Scores_Students] FOREIGN KEY ([Student_bint]) REFERENCES [dbo].[Students] ([ID_bint]) ON DELETE CASCADE ON UPDATE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'0: Score for Teacher, 1: for Academy', 'SCHEMA', N'dbo', 'TABLE', N'Scores', 'COLUMN', N'ScoreType_bit'
GO
