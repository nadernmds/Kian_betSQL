CREATE TABLE [dbo].[MatchQuestionAnswers]
(
[AnswerID_bint] [bigint] NOT NULL IDENTITY(1, 1),
[Text_nvc] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Question_bint] [bigint] NOT NULL,
[Answer_bit] [bit] NOT NULL CONSTRAINT [DF_MatchQuestionAnswers_Answer_bit] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MatchQuestionAnswers] ADD CONSTRAINT [PK_MatchQuestionAnswers] PRIMARY KEY CLUSTERED  ([AnswerID_bint]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MatchQuestionAnswers] ADD CONSTRAINT [FK_MatchQuestionAnswers_MatchQuestions] FOREIGN KEY ([Question_bint]) REFERENCES [dbo].[MatchQuestions] ([ID_bint]) ON DELETE CASCADE ON UPDATE CASCADE
GO
