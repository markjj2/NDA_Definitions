USE [PI_ProjectName]
GO

/****** Object:  Table [Assessment].[EDI_SchoolAge]    Script Date: 2/9/2023 1:20:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*NOTE - If utilizing DDE system, uncomment the relevant fields*/
CREATE TABLE [Assessment].[EDI_SchoolAge](
	[ID] [int] NOT NULL,
	[ADate] [datetime] NOT NULL,
	[TimePoint] [int] NOT NULL,
--	[EntryNum] [int] NOT NULL,
	[EDI1s] [int] NULL,
	[EDI3s] [int] NULL,
	[EDI4s] [int] NULL,
	[EDI6s] [int] NULL,
	[EDI7s] [int] NULL,
	[EDI8s] [int] NULL,
	[EDI10s] [int] NULL,
	[EDI13s] [int] NULL,
	[EDI19s] [int] NULL,
	[EDI21s] [int] NULL,
	[EDI24s] [int] NULL,
	[EDI26s] [int] NULL,
	[EDI27s] [int] NULL,
	[EDI28s] [int] NULL,
	[EDI31s] [int] NULL,
	[EDI34s] [int] NULL,
	[EDI36s] [int] NULL,
	[EDI38s] [int] NULL,
	[EDI42s] [int] NULL,
	[EDI43s] [int] NULL,
	[EDI46s] [int] NULL,
	[EDI50s] [int] NULL,
	[EDI51s] [int] NULL,
	[EDI52s] [int] NULL,
	[EDI53s] [int] NULL,
	[EDI57s] [int] NULL,
	[EDI58s] [int] NULL,
	[EDI59s] [int] NULL,
	[EDI63s] [int] NULL,
	[EDI64s] [int] NULL,
	[RecordNumber] [bigint] IDENTITY(1,1) NOT NULL,
	[RecordVersion] [timestamp] NOT NULL,
--	[DE] [smalldatetime] NULL,
--	[DC] [smalldatetime] NULL,
--	[ENTUSER] [varchar](150) NULL,
--	[CHGUSER] [varchar](150) NULL,
--	[DoubleEntryPK]  AS ((('ID: '+[DE].[DE_F_S]([ID]))+' TimePoint: ')+[DE].[DE_F_S]([TimePoint])),
 CONSTRAINT [PK_EDI_SchoolAge_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[TimePoint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI10s] FOREIGN KEY([EDI10s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI10s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI13s] FOREIGN KEY([EDI13s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI13s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI19s] FOREIGN KEY([EDI19s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI19s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI1s] FOREIGN KEY([EDI1s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI1s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI21s] FOREIGN KEY([EDI21s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI21s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI24s] FOREIGN KEY([EDI24s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI24s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI26s] FOREIGN KEY([EDI26s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI26s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI27s] FOREIGN KEY([EDI27s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI27s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI28s] FOREIGN KEY([EDI28s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI28s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI31s] FOREIGN KEY([EDI31s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI31s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI34s] FOREIGN KEY([EDI34s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI34s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI36s] FOREIGN KEY([EDI36s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI36s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI38s] FOREIGN KEY([EDI38s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI38s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI3s] FOREIGN KEY([EDI3s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI3s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI42s] FOREIGN KEY([EDI42s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI42s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI43s] FOREIGN KEY([EDI43s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI43s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI46s] FOREIGN KEY([EDI46s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI46s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI4s] FOREIGN KEY([EDI4s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI4s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI50s] FOREIGN KEY([EDI50s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI50s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI51s] FOREIGN KEY([EDI51s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI51s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI52s] FOREIGN KEY([EDI52s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI52s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI53s] FOREIGN KEY([EDI53s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI53s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI57s] FOREIGN KEY([EDI57s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI57s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI58s] FOREIGN KEY([EDI58s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI58s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI59s] FOREIGN KEY([EDI59s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI59s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI63s] FOREIGN KEY([EDI63s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI63s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI64s] FOREIGN KEY([EDI64s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI64s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI6s] FOREIGN KEY([EDI6s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI6s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI7s] FOREIGN KEY([EDI7s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI7s]
GO

ALTER TABLE [Assessment].[EDI_SchoolAge]  WITH CHECK ADD  CONSTRAINT [FK_EDI_M_EDI8s] FOREIGN KEY([EDI8s])
REFERENCES [FK].[EDI_M] ([Code])
GO

ALTER TABLE [Assessment].[EDI_SchoolAge] CHECK CONSTRAINT [FK_EDI_M_EDI8s]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1. Appears angry or irritable' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI1s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'3. Has explosive outbursts' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI3s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'4. Cries or stays angry for 5 minutes or longer' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI4s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6. Cannot calm down without help from someone else' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI6s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'7. Suddenly switches to an opposite emotion (e.g. from sad to happy)' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI7s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'8. Frustrates easily' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI8s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'10. Destroys property on purpose' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI10s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'13. Breaks down (crying, screaming) if told he/she can''t do something' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI13s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'19. Has extreme or intense emotional reactions' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI19s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'21. Hard to calm him/her down when he/she is mad or upset' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI21s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'24. Reactions are so intense that he/she has had to be removed from an activity or place' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI24s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'26. Physically attacks people' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI26s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'27. Physically attacks people' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI27s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'28. When upset or angry, he/she stays that way for a long time' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI28s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'31. Does not seem to enjoy anything' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI31s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'34. Emotions go from 0 to 100 instantly' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI34s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'36. Has trouble calming him/herself down' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI36s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'38. Tense or agitated and unable to relax' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI38s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'42. Seems to be in a rage' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI42s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'43. Very little makes him/her happy' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI43s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'46. Reactions usually are more severe than the situation calls for' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI46s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'50. Becomes upset without a clear reason' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI50s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'51. Refuses to leave the house or go to school or activities unless forced' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI51s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'52. Has mood swings' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI52s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'53. Difficult to distract if he/she is frustrated or upset' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI53s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'57. Not responsive to praise or good things happening' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI57s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'58. Cannot change his/her mood even with your best efforts' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI58s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'59. Easily triggered/upset (you have to walk on eggshells around him/her)' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI59s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'63. Seems sad or unhappy' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI63s'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'64. Appears uneasy through the day' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'EDI_SchoolAge', @level2type=N'COLUMN',@level2name=N'EDI64s'
GO


