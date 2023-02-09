USE [PI_ProjectName]
GO

/****** Object:  Table [Assessment].[CCNES]    Script Date: 2/9/2023 12:13:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Assessment].[CCNES](
	[ParticipantID] [int] NOT NULL,
	[TimePoint] [int] NOT NULL,
	[CDate] [smalldatetime] NOT NULL,
	[CCNES_1a] [tinyint] NULL,
	[CCNES_1b] [tinyint] NULL,
	[CCNES_1c] [tinyint] NULL,
	[CCNES_1d] [tinyint] NULL,
	[CCNES_1e] [tinyint] NULL,
	[CCNES_1f] [tinyint] NULL,
	[CCNES_2a] [tinyint] NULL,
	[CCNES_2b] [tinyint] NULL,
	[CCNES_2c] [tinyint] NULL,
	[CCNES_2d] [tinyint] NULL,
	[CCNES_2e] [tinyint] NULL,
	[CCNES_2f] [tinyint] NULL,
	[CCNES_3a] [tinyint] NULL,
	[CCNES_3b] [tinyint] NULL,
	[CCNES_3c] [tinyint] NULL,
	[CCNES_3d] [tinyint] NULL,
	[CCNES_3e] [tinyint] NULL,
	[CCNES_3f] [tinyint] NULL,
	[CCNES_4a] [tinyint] NULL,
	[CCNES_4b] [tinyint] NULL,
	[CCNES_4c] [tinyint] NULL,
	[CCNES_4d] [tinyint] NULL,
	[CCNES_4e] [tinyint] NULL,
	[CCNES_4f] [tinyint] NULL,
	[CCNES_5a] [tinyint] NULL,
	[CCNES_5b] [tinyint] NULL,
	[CCNES_5c] [tinyint] NULL,
	[CCNES_5d] [tinyint] NULL,
	[CCNES_5e] [tinyint] NULL,
	[CCNES_5f] [tinyint] NULL,
	[CCNES_6a] [tinyint] NULL,
	[CCNES_6b] [tinyint] NULL,
	[CCNES_6c] [tinyint] NULL,
	[CCNES_6d] [tinyint] NULL,
	[CCNES_6e] [tinyint] NULL,
	[CCNES_6f] [tinyint] NULL,
	[CCNES_7a] [tinyint] NULL,
	[CCNES_7b] [tinyint] NULL,
	[CCNES_7c] [tinyint] NULL,
	[CCNES_7d] [tinyint] NULL,
	[CCNES_7e] [tinyint] NULL,
	[CCNES_7f] [tinyint] NULL,
	[CCNES_8a] [tinyint] NULL,
	[CCNES_8b] [tinyint] NULL,
	[CCNES_8c] [tinyint] NULL,
	[CCNES_8d] [tinyint] NULL,
	[CCNES_8e] [tinyint] NULL,
	[CCNES_8f] [tinyint] NULL,
	[CCNES_9a] [tinyint] NULL,
	[CCNES_9b] [tinyint] NULL,
	[CCNES_9c] [tinyint] NULL,
	[CCNES_9d] [tinyint] NULL,
	[CCNES_9e] [tinyint] NULL,
	[CCNES_9f] [tinyint] NULL,
	[CCNES_10a] [tinyint] NULL,
	[CCNES_10b] [tinyint] NULL,
	[CCNES_10c] [tinyint] NULL,
	[CCNES_10d] [tinyint] NULL,
	[CCNES_10e] [tinyint] NULL,
	[CCNES_10f] [tinyint] NULL,
	[CCNES_11a] [tinyint] NULL,
	[CCNES_11b] [tinyint] NULL,
	[CCNES_11c] [tinyint] NULL,
	[CCNES_11d] [tinyint] NULL,
	[CCNES_11e] [tinyint] NULL,
	[CCNES_11f] [tinyint] NULL,
	[CCNES_12a] [tinyint] NULL,
	[CCNES_12b] [tinyint] NULL,
	[CCNES_12c] [tinyint] NULL,
	[CCNES_12d] [tinyint] NULL,
	[CCNES_12e] [tinyint] NULL,
	[CCNES_12f] [tinyint] NULL,
	[RecNum] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CCNES] PRIMARY KEY CLUSTERED 
(
	[ParticipantID] ASC,
	[TimePoint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_10a] FOREIGN KEY([CCNES_10a])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_10a]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_10b] FOREIGN KEY([CCNES_10b])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_10b]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_10c] FOREIGN KEY([CCNES_10c])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_10c]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_10d] FOREIGN KEY([CCNES_10d])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_10d]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_10e] FOREIGN KEY([CCNES_10e])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_10e]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_10f] FOREIGN KEY([CCNES_10f])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_10f]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_11a] FOREIGN KEY([CCNES_11a])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_11a]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_11b] FOREIGN KEY([CCNES_11b])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_11b]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_11c] FOREIGN KEY([CCNES_11c])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_11c]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_11d] FOREIGN KEY([CCNES_11d])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_11d]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_11e] FOREIGN KEY([CCNES_11e])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_11e]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_11f] FOREIGN KEY([CCNES_11f])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_11f]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_12a] FOREIGN KEY([CCNES_12a])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_12a]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_12b] FOREIGN KEY([CCNES_12b])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_12b]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_12c] FOREIGN KEY([CCNES_12c])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_12c]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_12d] FOREIGN KEY([CCNES_12d])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_12d]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_12e] FOREIGN KEY([CCNES_12e])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_12e]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_12f] FOREIGN KEY([CCNES_12f])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_12f]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_1a] FOREIGN KEY([CCNES_1a])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_1a]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_1b] FOREIGN KEY([CCNES_1b])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_1b]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_1c] FOREIGN KEY([CCNES_1c])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_1c]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_1d] FOREIGN KEY([CCNES_1d])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_1d]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_1e] FOREIGN KEY([CCNES_1e])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_1e]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_1f] FOREIGN KEY([CCNES_1f])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_1f]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_2a] FOREIGN KEY([CCNES_2a])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_2a]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_2b] FOREIGN KEY([CCNES_2b])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_2b]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_2c] FOREIGN KEY([CCNES_2c])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_2c]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_2d] FOREIGN KEY([CCNES_2d])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_2d]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_2e] FOREIGN KEY([CCNES_2e])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_2e]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_2f] FOREIGN KEY([CCNES_2f])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_2f]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_3a] FOREIGN KEY([CCNES_3a])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_3a]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_3b] FOREIGN KEY([CCNES_3b])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_3b]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_3c] FOREIGN KEY([CCNES_3c])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_3c]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_3d] FOREIGN KEY([CCNES_3d])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_3d]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_3e] FOREIGN KEY([CCNES_3e])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_3e]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_3f] FOREIGN KEY([CCNES_3f])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_3f]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_4a] FOREIGN KEY([CCNES_4a])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_4a]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_4b] FOREIGN KEY([CCNES_4b])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_4b]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_4c] FOREIGN KEY([CCNES_4c])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_4c]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_4d] FOREIGN KEY([CCNES_4d])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_4d]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_4e] FOREIGN KEY([CCNES_4e])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_4e]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_4f] FOREIGN KEY([CCNES_4f])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_4f]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_5a] FOREIGN KEY([CCNES_5a])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_5a]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_5b] FOREIGN KEY([CCNES_5b])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_5b]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_5c] FOREIGN KEY([CCNES_5c])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_5c]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_5d] FOREIGN KEY([CCNES_5d])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_5d]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_5e] FOREIGN KEY([CCNES_5e])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_5e]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_5f] FOREIGN KEY([CCNES_5f])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_5f]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_6a] FOREIGN KEY([CCNES_6a])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_6a]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_6b] FOREIGN KEY([CCNES_6b])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_6b]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_6c] FOREIGN KEY([CCNES_6c])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_6c]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_6d] FOREIGN KEY([CCNES_6d])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_6d]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_6e] FOREIGN KEY([CCNES_6e])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_6e]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_6f] FOREIGN KEY([CCNES_6f])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_6f]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_7a] FOREIGN KEY([CCNES_7a])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_7a]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_7b] FOREIGN KEY([CCNES_7b])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_7b]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_7c] FOREIGN KEY([CCNES_7c])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_7c]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_7d] FOREIGN KEY([CCNES_7d])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_7d]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_7e] FOREIGN KEY([CCNES_7e])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_7e]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_7f] FOREIGN KEY([CCNES_7f])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_7f]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_8a] FOREIGN KEY([CCNES_8a])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_8a]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_8b] FOREIGN KEY([CCNES_8b])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_8b]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_8c] FOREIGN KEY([CCNES_8c])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_8c]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_8d] FOREIGN KEY([CCNES_8d])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_8d]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_8e] FOREIGN KEY([CCNES_8e])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_8e]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_8f] FOREIGN KEY([CCNES_8f])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_8f]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_9a] FOREIGN KEY([CCNES_9a])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_9a]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_9b] FOREIGN KEY([CCNES_9b])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_9b]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_9c] FOREIGN KEY([CCNES_9c])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_9c]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_9d] FOREIGN KEY([CCNES_9d])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_9d]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_9e] FOREIGN KEY([CCNES_9e])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_9e]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_9f] FOREIGN KEY([CCNES_9f])
REFERENCES [FK].[CCNES] ([Code])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_9f]
GO

ALTER TABLE [Assessment].[CCNES]  WITH CHECK ADD  CONSTRAINT [FK_CCNES_timepoint] FOREIGN KEY([TimePoint])
REFERENCES [FK].[TimePoints] ([TimePoint])
GO

ALTER TABLE [Assessment].[CCNES] CHECK CONSTRAINT [FK_CCNES_timepoint]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a. send my child to his/her room to cool off' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_1a'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b. get angry at my child' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_1b'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'c. help my child think about ways that he/she can still be with friends (e.g., invite some friends over after the party)' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_1c'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'd. tell my child not to make a big deal out of missing the party' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_1d'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e. encourage my child to express his/her feelings of anger and frustration' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_1e'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'f. soothe my child and do something fun with him/her to make him/her feel better about missing the party' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_1f'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a. remain calm and not let myself get anxious' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_2a'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b. comfort my child and try to get him/her to forget about the accident' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_2b'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'c. tell my child that he/she is over-reacting' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_2c'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'd. help my child figure out how to get the bike fixed' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_2d'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e. tell my child it''s OK to cry' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_2e'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'f. tell my child to stop crying or he/she won''t be allowed to rid his/her bike anytime soon' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_2f'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a. get upset with him/her for being so careless and then crying about it' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_3a'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b. tell my child that he/she is over-reacting' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_3b'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'c. help my child think of places he/she hasn''t looked yet' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_3c'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'd. distract my child by talking about happy things' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_3d'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e. tell him/her it''s OK to cry when you feel unhappy' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_3e'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'f. tell him/her that''s what happens when you''re not careful' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_3f'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a. tell him/her to shape up or he/she won''t be allowed to do something he/she likes to do (e.g., watch TV)' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_4a'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b. encourage my child to talk about his/her fears' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_4b'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'c. tell my child not to make a big deal of the shot' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_4c'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'd. tell him/her not to embarrass us by crying' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_4d'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e. comfort him/her before and after the shot' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_4e'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'f. talk to my child about ways to make it hurt less (such as relaxing so it won''t hurt or taking deep breaths)' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_4f'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a. distract my child by talking about all the fun he/she will have with his/her friend' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_5a'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b. help my child think of things that he/she could do so that being at the friend''s house without me wasn''t scary (e.g., take a favorite book or toy with him/her)' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_5b'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'c. tell my child to quit over-reacting and being a baby' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_5c'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'd. tell the child that if he/she doesn''t stop that he/she won''t be allowed to go out anymore' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_5d'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e. feel upset and uncomfortable because of my child''s reactions' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_5e'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'f. encourage my child to talk about his/her nervous feelings' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_5f'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a. comfort my child and try to make him/her feel better' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_6a'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b. tell my child that he/she is over-reacting' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_6b'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'c. feel uncomfortable and embarrassed myself' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_6c'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'd. tell my child to straighten up or we''ll go home right away' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_6d'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e. encourage my child to talk about his/her feelings of embarrassment' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_6e'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'f. tell my child that I''ll help him/her practice so that he/she can do better next time' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_6f'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a. help my child think of things that he/she could do to get ready for his/her turn (e.g., to do some warm-ups and not to look at the audience)' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_7a'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b. suggest that my child think about something relaxing so that his/her nervousness will go away' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_7b'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'c. remain calm and not get nervous myself' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_7c'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'd. tell my child that he/she is being a baby about it' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_7d'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e. tell my child that if he/she doesn''t calm down, we''ll have to leave and go home right away' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_7e'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'f. encourage my child to talk about his/her nervous feelings' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_7f'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a. encourage my child to express his/her disappointed feelings' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_8a'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b. tell my child that the present can be exchanged for something the child wants' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_8b'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'c. [_u_]NOT[_/u_] be annoyed with my child for being rude' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_8c'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'd. tell my child that he/she is over-reacting' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_8d'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e. scold my child for being insensitive to the friend''s feelings' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_8e'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'f. try to get my child to feel better by doing something fun' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_8f'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a. encourage my child to talk about what scared him/her' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_9a'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b. get upset with him/her for being silly' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_9b'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'c. tell my child that he/she is over-reacting' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_9c'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'd. help my child think of something to do so that he/she cna get to sleep (e.g., take a toy to bed, leave the lights on)' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_9d'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e. tell him/her to go to bed or he/she won''t be allowed to watch any more TV' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_9e'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'f. do something fun with my child to help him/her forget what scared him/her' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_9f'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a. [_u_]NOT[_/u_] get upset myself' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_10a'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b. tell my child that if he/she starts crying then we''ll have to go home right away' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_10b'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'c. tell my child it''s OK to cry when he/she feels bad' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_10c'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'd. comfort my child and try to get him/her to think about something happy' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_10d'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e. help my child think of something else to do' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_10e'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'f. tell my child that he/she will feel better soon' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_10f'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a. tell my child not to make a big deal out of it' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_11a'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b. feel upset myself' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_11b'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'c. tell my child to behave or we''ll have to go home right away' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_11c'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'd. help my child think of constructive things to do when other children tease him/her (e.g., find other things to do)' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_11d'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e. comfort him/her and play a game to take his/her mind off the upsetting event' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_11e'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'f. encourage him/her to talk about how it hurts to be teased' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_11f'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a. help my child think of things to do that would make meeting my friends less scary (e.g., to take a favorite toy with him/her when meeting my friends)' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_12a'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b. tell my child that it is OK to feel nervous' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_12b'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'c. try to make my child happy by talking about the fun things we can do with our friends' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_12c'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'd. feel upset and uncomfortable because of my child''s reactions' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_12d'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'e. tell my child that he/she must stay in the living room and visit with our friends' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_12e'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'f. tell my child that he/she is being a baby' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'CCNES', @level2type=N'COLUMN',@level2name=N'CCNES_12f'
GO


