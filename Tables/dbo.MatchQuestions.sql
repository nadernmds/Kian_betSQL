CREATE TABLE [dbo].[MatchQuestions]
(
[ID_bint] [bigint] NOT NULL IDENTITY(1, 1),
[Question_nvc] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Match_int] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MatchQuestions] ADD CONSTRAINT [PK_MatchQuestions] PRIMARY KEY CLUSTERED  ([ID_bint]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MatchQuestions] ADD CONSTRAINT [FK_MatchQuestions_matchs] FOREIGN KEY ([Match_int]) REFERENCES [dbo].[matchs] ([ID_int]) ON DELETE CASCADE ON UPDATE CASCADE
GO
