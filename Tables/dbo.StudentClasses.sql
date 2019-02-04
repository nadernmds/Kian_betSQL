CREATE TABLE [dbo].[StudentClasses]
(
[ID_bint] [bigint] NOT NULL IDENTITY(1, 1),
[Class_int] [int] NULL,
[Student_bint] [bigint] NULL,
[RegisterDate_vc] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StudentClasses] ADD CONSTRAINT [PK_StudentClasses] PRIMARY KEY CLUSTERED  ([ID_bint]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StudentClasses] ADD CONSTRAINT [FK_StudentClasses_Classes] FOREIGN KEY ([Class_int]) REFERENCES [dbo].[Classes] ([ID_int])
GO
ALTER TABLE [dbo].[StudentClasses] ADD CONSTRAINT [FK_StudentClasses_Students] FOREIGN KEY ([Student_bint]) REFERENCES [dbo].[Students] ([ID_bint])
GO
