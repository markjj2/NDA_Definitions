USE [PI_ProjectName]
GO

/****** Object:  Table [Assessment].[KBIT]    Script Date: 2/9/2023 1:27:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Assessment].[KBIT](
	[ID] [int] NOT NULL,
	[TimePoint] [int] NOT NULL,
	[ADate] [smalldatetime] NOT NULL,
--	[EntryNum] [int] NOT NULL,
	[Rater] [int] NULL,
	[KBIT_DOB] [smalldatetime] NULL,
	[KBIT_Age] [varchar](10) NULL,
	[KBIT_VerbKnowledge_RawScore] [int] NULL,
	[KBIT_Riddles_RawScore] [int] NULL,
	[KBIT_Verbal_RawScore] [int] NULL,
	[KBIT_Verbal_StdScore] [int] NULL,
	[KBIT_Verbal_CI_High] [int] NULL,
	[KBIT_Verbal_CI_Low] [int] NULL,
	[KBIT_Verbal_Percentile] [varchar](10) NULL,
	[KBIT_Verbal_DescCat] [int] NULL,
	[KBIT_Verbal_AgeEquiv] [varchar](10) NULL,
	[KBIT_Nonverbal_RawScore] [int] NULL,
	[KBIT_Nonverbal_StdScore] [int] NULL,
	[KBIT_Nonverbal_CI_High] [int] NULL,
	[KBIT_Nonverbal_CI_Low] [int] NULL,
	[KBIT_Nonverbal_Percentile] [varchar](10) NULL,
	[KBIT_Nonverbal_DescCat] [int] NULL,
	[KBIT_Nonverbal_AgeEquiv] [varchar](10) NULL,
	[KBIT_IQComp_StdScoreSum] [int] NULL,
	[KBIT_IQComp_StdScore] [int] NULL,
	[KBIT_IQComp_CI_High] [int] NULL,
	[KBIT_IQComp_CI_Low] [int] NULL,
	[KBIT_IQComp_Percentile] [varchar](10) NULL,
	[KBIT_IQComp_DescCat] [int] NULL,
	[RecordNumber] [bigint] IDENTITY(1,1) NOT NULL,
	[RecordVersion] [timestamp] NOT NULL,
--	[DE] [datetime] NOT NULL,
--	[DC] [datetime] NULL,
--	[ENTUSER] [varchar](150) NOT NULL,
--	[CHGUSER] [varchar](150) NULL,
--	[DoubleEntryPK]  AS ((('ID: '+[DE].[DE_F_S]([ID]))+' TimePoint: ')+[DE].[DE_F_S]([TimePoint])),
 CONSTRAINT [PK_KBIT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[TimePoint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Assessment].[KBIT]  WITH CHECK ADD  CONSTRAINT [FK_KBIT_KBIT_IQComp_DescCat] FOREIGN KEY([KBIT_IQComp_DescCat])
REFERENCES [FK].[KBIT_DescCat] ([Code])
GO

ALTER TABLE [Assessment].[KBIT] CHECK CONSTRAINT [FK_KBIT_KBIT_IQComp_DescCat]
GO

ALTER TABLE [Assessment].[KBIT]  WITH CHECK ADD  CONSTRAINT [FK_KBIT_KBIT_Nonverb_DescCat] FOREIGN KEY([KBIT_Nonverbal_DescCat])
REFERENCES [FK].[KBIT_DescCat] ([Code])
GO

ALTER TABLE [Assessment].[KBIT] CHECK CONSTRAINT [FK_KBIT_KBIT_Nonverb_DescCat]
GO

ALTER TABLE [Assessment].[KBIT]  WITH CHECK ADD  CONSTRAINT [FK_KBIT_KBIT_Verb_DescCat] FOREIGN KEY([KBIT_Verbal_DescCat])
REFERENCES [FK].[KBIT_DescCat] ([Code])
GO

ALTER TABLE [Assessment].[KBIT] CHECK CONSTRAINT [FK_KBIT_KBIT_Verb_DescCat]
GO

ALTER TABLE [Assessment].[KBIT]  WITH CHECK ADD  CONSTRAINT [FK_KBIT_Raters] FOREIGN KEY([Rater])
REFERENCES [FK].[Raters] ([Rater])
GO

ALTER TABLE [Assessment].[KBIT] CHECK CONSTRAINT [FK_KBIT_Raters]
GO

ALTER TABLE [Assessment].[KBIT]  WITH CHECK ADD  CONSTRAINT [FK_KBIT_timepoint] FOREIGN KEY([TimePoint])
REFERENCES [FK].[TimePoints] ([TimePoint])
GO

ALTER TABLE [Assessment].[KBIT] CHECK CONSTRAINT [FK_KBIT_timepoint]
GO

--ALTER TABLE [Assessment].[KBIT]  WITH NOCHECK ADD  CONSTRAINT [CK_KBIT_EntryNum] CHECK  (([EntryNum]=(1) OR [EntryNum]=(2) OR [EntryNum]=(3)))
--GO

--ALTER TABLE [Assessment].[KBIT] CHECK CONSTRAINT [CK_KBIT_EntryNum]
--GO



