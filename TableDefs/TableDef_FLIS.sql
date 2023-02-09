USE [PI_ProjectName]
GO

/****** Object:  Table [Assessment].[FLIS]    Script Date: 2/9/2023 12:18:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Assessment].[FLIS](
	[ParticipantID] [int] NOT NULL,
	[TimePoint] [int] NOT NULL,
	[CDate] [smalldatetime] NOT NULL,
	[FLIS_1] [int] NULL,
	[FLIS_2] [int] NULL,
	[FLIS_3] [int] NULL,
	[FLIS_4] [int] NULL,
	[FLIS_5] [int] NULL,
	[FLIS_6] [int] NULL,
	[FLIS_7] [int] NULL,
	[FLIS_8] [int] NULL,
	[FLIS_9] [int] NULL,
	[FLIS_10] [int] NULL,
	[FLIS_11] [int] NULL,
	[FLIS_12] [int] NULL,
	[FLIS_13] [int] NULL,
	[FLIS_14] [int] NULL,
	[FLIS_15] [int] NULL,
	[FLIS_16] [int] NULL,
	[FLIS_17] [int] NULL,
	[FLIS_18] [int] NULL,
	[FLIS_19] [int] NULL,
	[RecNum] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_FLIS] PRIMARY KEY CLUSTERED 
(
	[ParticipantID] ASC,
	[TimePoint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_1] FOREIGN KEY([FLIS_1])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_1]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_10] FOREIGN KEY([FLIS_10])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_10]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_11] FOREIGN KEY([FLIS_11])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_11]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_12] FOREIGN KEY([FLIS_12])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_12]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_13] FOREIGN KEY([FLIS_13])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_13]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_14] FOREIGN KEY([FLIS_14])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_14]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_15] FOREIGN KEY([FLIS_15])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_15]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_16] FOREIGN KEY([FLIS_16])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_16]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_17] FOREIGN KEY([FLIS_17])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_17]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_18] FOREIGN KEY([FLIS_18])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_18]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_19] FOREIGN KEY([FLIS_19])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_19]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_2] FOREIGN KEY([FLIS_2])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_2]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_3] FOREIGN KEY([FLIS_3])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_3]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_4] FOREIGN KEY([FLIS_4])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_4]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_5] FOREIGN KEY([FLIS_5])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_5]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_6] FOREIGN KEY([FLIS_6])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_6]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_7] FOREIGN KEY([FLIS_7])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_7]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_8] FOREIGN KEY([FLIS_8])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_8]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_9] FOREIGN KEY([FLIS_9])
REFERENCES [FK].[FLIS] ([Code])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_9]
GO

ALTER TABLE [Assessment].[FLIS]  WITH CHECK ADD  CONSTRAINT [FK_FLIS_timepoint] FOREIGN KEY([TimePoint])
REFERENCES [FK].[TimePoints] ([TimePoint])
GO

ALTER TABLE [Assessment].[FLIS] CHECK CONSTRAINT [FK_FLIS_timepoint]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'We rarely take [PI_ProjectName_KEYS[HimHer]] to visit family or friends' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_1'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'We rarely take [PI_ProjectName_KEYS[HimHer]] out to family restaurants' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_2'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'We rarely take [PI_ProjectName_KEYS[HimHer]] grocery shopping (or on other errands)' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_3'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'We rarely take [PI_ProjectName_KEYS[HimHer]] to meet new people or to new places' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_4'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'We rarely take [PI_ProjectName_KEYS[HimHer]] on car, bus, or train trips longer than 15 minutes' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_5'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'We rarely leave [PI_ProjectName_KEYS[HimHer]] with relatives whom [PI_ProjectName_KEYS[HeShe]] knows well' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_6'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'We rarely leave [PI_ProjectName_KEYS[HimHer]] with a babysitter' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_7'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'We rarely make changes to [PI_ProjectName_KEYS[HisHer]] daily schedule' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_8'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'It has been difficult to find appropriate childcare for [PI_ProjectName_KEYS[HimHer]]' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_9'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'I have become more spiritual or religious' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_10'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'My relationships with family or friends have improved' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_11'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'I feel that I have grown or matured' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_12'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'I have learned to speak out for myself or for my child' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_13'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'My relationship with my spouse/partner has improved' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_14'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'I am unable to see or talk to my relatives as much as I would like' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_15'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'I am unable to give my other children enough attention' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_16'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'I am usually exhausted all day' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_17'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'My spouse/partner and I have more disagreements' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_18'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'I am unable to spend enough quiet or intimate time with my partner' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'FLIS', @level2type=N'COLUMN',@level2name=N'FLIS_19'
GO


