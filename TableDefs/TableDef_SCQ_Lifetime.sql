USE [PI_ProjectName]
GO

/****** Object:  Table [Assessment].[SCQ_Lifetime]    Script Date: 2/9/2023 12:21:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Assessment].[SCQ_Lifetime](
	[ParticipantID] [int] NOT NULL,
	[TimePoint] [int] NOT NULL,
	[CDate] [smalldatetime] NOT NULL,
	[SCQ_shortphrases] [int] NULL,
	[SCQ_turns] [int] NULL,
	[SCQ_oddphrases] [int] NULL,
	[SCQ_askiappques] [int] NULL,
	[SCQ_pronounsmix] [int] NULL,
	[SCQ_madeup] [int] NULL,
	[SCQ_sayagain] [int] NULL,
	[SCQ_things] [int] NOT NULL,
	[SCQ_facialex] [int] NOT NULL,
	[SCQ_handtool] [int] NOT NULL,
	[SCQ_oddinterest] [int] NOT NULL,
	[SCQ_interestobjpart] [int] NOT NULL,
	[SCQ_unusual] [int] NOT NULL,
	[SCQ_unusualint] [int] NOT NULL,
	[SCQ_manner] [int] NOT NULL,
	[SCQ_movement] [int] NOT NULL,
	[SCQ_injure] [int] NOT NULL,
	[SCQ_objcarry] [int] NOT NULL,
	[SCQ_bestfrnd] [int] NOT NULL,
	[SCQ_talkfrndly] [int] NOT NULL,
	[SCQ_copyyou] [int] NOT NULL,
	[SCQ_ptthings] [int] NOT NULL,
	[SCQ_gesture] [int] NOT NULL,
	[SCQ_nodheady] [int] NOT NULL,
	[SCQ_nodheadn] [int] NOT NULL,
	[SCQ_facelook] [int] NOT NULL,
	[SCQ_smileback] [int] NOT NULL,
	[SCQ_attn] [int] NOT NULL,
	[SCQ_share] [int] NOT NULL,
	[SCQ_joinenjoy] [int] NOT NULL,
	[SCQ_comfort] [int] NOT NULL,
	[SCQ_help] [int] NOT NULL,
	[SCQ_normalfacialexp] [int] NOT NULL,
	[SCQ_copyaction] [int] NOT NULL,
	[SCQ_makebelievegame] [int] NOT NULL,
	[SCQ_childinterest] [int] NOT NULL,
	[SCQ_positiveapp] [int] NOT NULL,
	[SCQ_talknoname] [int] NOT NULL,
	[SCQ_imaginegame] [int] NOT NULL,
	[SCQ_playcoop] [int] NOT NULL,
	[RecNum] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SCQ_Lifetime] PRIMARY KEY CLUSTERED 
(
	[ParticipantID] ASC,
	[TimePoint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_askiappques] FOREIGN KEY([SCQ_askiappques])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_askiappques]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_attn] FOREIGN KEY([SCQ_attn])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_attn]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_bestfrnd] FOREIGN KEY([SCQ_bestfrnd])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_bestfrnd]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_childinterest] FOREIGN KEY([SCQ_childinterest])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_childinterest]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_comfort] FOREIGN KEY([SCQ_comfort])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_comfort]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_copyaction] FOREIGN KEY([SCQ_copyaction])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_copyaction]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_copyyou] FOREIGN KEY([SCQ_copyyou])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_copyyou]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_facelook] FOREIGN KEY([SCQ_facelook])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_facelook]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_facialex] FOREIGN KEY([SCQ_facialex])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_facialex]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_gesture] FOREIGN KEY([SCQ_gesture])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_gesture]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_handtool] FOREIGN KEY([SCQ_handtool])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_handtool]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_help] FOREIGN KEY([SCQ_help])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_help]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_imaginegame] FOREIGN KEY([SCQ_imaginegame])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_imaginegame]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_injure] FOREIGN KEY([SCQ_injure])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_injure]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_interestobjpart] FOREIGN KEY([SCQ_interestobjpart])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_interestobjpart]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_joinenjoy] FOREIGN KEY([SCQ_joinenjoy])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_joinenjoy]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_madeup] FOREIGN KEY([SCQ_madeup])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_madeup]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_makebelievegame] FOREIGN KEY([SCQ_makebelievegame])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_makebelievegame]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_manner] FOREIGN KEY([SCQ_manner])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_manner]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_movement] FOREIGN KEY([SCQ_movement])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_movement]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_nodheadn] FOREIGN KEY([SCQ_nodheadn])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_nodheadn]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_nodheady] FOREIGN KEY([SCQ_nodheady])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_nodheady]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_normalfacialexp] FOREIGN KEY([SCQ_normalfacialexp])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_normalfacialexp]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_objcarry] FOREIGN KEY([SCQ_objcarry])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_objcarry]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_oddinterest] FOREIGN KEY([SCQ_oddinterest])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_oddinterest]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_oddphrases] FOREIGN KEY([SCQ_oddphrases])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_oddphrases]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_playcoop] FOREIGN KEY([SCQ_playcoop])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_playcoop]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_positiveapp] FOREIGN KEY([SCQ_positiveapp])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_positiveapp]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_pronounsmix] FOREIGN KEY([SCQ_pronounsmix])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_pronounsmix]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_ptthings] FOREIGN KEY([SCQ_ptthings])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_ptthings]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_sayagain] FOREIGN KEY([SCQ_sayagain])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_sayagain]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_share] FOREIGN KEY([SCQ_share])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_share]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_shortphrases] FOREIGN KEY([SCQ_shortphrases])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_shortphrases]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_smileback] FOREIGN KEY([SCQ_smileback])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_smileback]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_talkfrndly] FOREIGN KEY([SCQ_talkfrndly])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_talkfrndly]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_talknoname] FOREIGN KEY([SCQ_talknoname])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_talknoname]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_things] FOREIGN KEY([SCQ_things])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_things]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_timepoint] FOREIGN KEY([TimePoint])
REFERENCES [FK].[TimePoints] ([TimePoint])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_timepoint]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_turns] FOREIGN KEY([SCQ_turns])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_turns]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_unusual] FOREIGN KEY([SCQ_unusual])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_unusual]
GO

ALTER TABLE [Assessment].[SCQ_Lifetime]  WITH CHECK ADD  CONSTRAINT [FK_SCQ_Lifetime_unusualint] FOREIGN KEY([SCQ_unusualint])
REFERENCES [FK].[SCQ] ([Code])
GO

ALTER TABLE [Assessment].[SCQ_Lifetime] CHECK CONSTRAINT [FK_SCQ_Lifetime_unusualint]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is [PI_ProjectName_SCQ_Lifetime[HeShe]] now able to talk using short phrases or sentences?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_shortphrases'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Can you have a to and fro "conversation" with [PI_ProjectName_SCQ_Lifetime[HerHim]] that involves taking turns or building on what you have said?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_turns'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever used odd phrases or said the same thing over and over in almost exactly the same way (either phrases that [HeShe] has heard other people use or ones that she/he has made up?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_oddphrases'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever used socially inappropriate questions or statements? For example, has [HeShe] ever regularly asked personal questions or made personal comments at awkward times?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_askiappques'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever got [HisHer] pronouns mixed up?[_br_](e.g. saying [_i_]you[_/i_] or [_i_]she/he[_/i_] for [_i_]I[_/i_]?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_pronounsmix'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever used words that [HeShe] seemed to have invented or made up [Himself/Herself]; put things in odd, indirect ways; or used metaphorical ways of saying things (e.g. saying [_i_]hot rain[_/i_] for [_i_]steam[_/i_]?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_madeup'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever said the same thing over and over in exactly the same way or insisted that you say the same thing over and over again?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_sayagain'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever had things that [HeShe] seem to have to do in a very particular way or order or rituals that [HeShe] insisted that you go through?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_things'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HisHer]] facial expression usually seemed appropriate to the particular situation, as far as you could tell?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_facialex'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever used your hand like a tool or as if it were part of [HisHer] own body (e.g., pointing with your finger, putting your hand on a doorknob to get you to open the door)?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_handtool'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever had any interests that preoccupy [HimHer] and might seem odd to other people (e.g., traffic lights, drainpipes, or timetables)?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_oddinterest'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever seemed to be more interested in parts of a toy or object (e.g., spinning the wheels of a car), rather than using the object as it was intended?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_interestobjpart'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever seemed to be [_i_]unusually[_/i_] interested in the sight, feel, sound, taste, or smell of things or people?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_unusualint'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever had any mannerisms or odd way of moving [HisHer] hands or fingers, such as flapping or moving [HisHer] fingers in front of [HisHer] eyes?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_manner'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever had any complicated movements of [HisHer] whole body, such as spinning or repeatedly bouncing up and down?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_movement'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever injured [Himself/Herself] deliberately, such as by biting [HisHer] arm or banging [HisHer] head?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_injure'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has [PI_ProjectName_SCQ_Lifetime[HeShe]] ever had any objects ([_i_]other[_/i_] than a soft toy or comfort blanket) that [HeShe] [_i_]had[_/i_] to carry around?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_objcarry'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does [PI_ProjectName_SCQ_Lifetime[HeShe]] have any particular friends or a best friend?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_bestfrnd'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] ever talk with you just to be friendly (rather than to get something)?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_talkfrndly'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] ever [_i_]spontaneously[_/i_] copy you (or other people) or what you were doing (such as vacuuming, gardening, or mending things)?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_copyyou'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] ever spontaneously point at things around [HimHer] just to show you things (not because [HeShe] wanted them)?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_ptthings'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] ever use gestures, other that pointing or pulling your hand, to let you know what [HeShe] wanted?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_gesture'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] nod [HisHer] head to mean [_i_]yes[_/i_]?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_nodheady'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] shake [HisHer] head to mean [_i_]no[_/i_]?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_nodheadn'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] usually look at you directly in the face when doing things with you or talking with you?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_facelook'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] smile back if someone smiled at [HimHer]?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_smileback'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] ever show you things that interested [HimHer] to engage your attention?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_attn'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] ever offer to share things other than food with you?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_share'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] ever seem to want you to join in [HisHer] enjoyment of something?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_joinenjoy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] ever try to comfort you if you were sad or hurt?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_comfort'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, when [HeShe] wanted something or wanted help, did [HeShe] look at you and use gestures with sounds or words to get your attention?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_help'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] show a normal range of facial expressions?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_normalfacialexp'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] ever spontaneously join in and try to copy the actions in social games, such as [_i_]The Mulberry Bush[_/i_] or [_i_]London Bridge is Falling Down[_/i_]?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_copyaction'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] play any pretend or make-believe games?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_makebelievegame'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] seem interested in other children of approximately the same age whom [HeShe] did not know?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_childinterest'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] respond positively when another child approached [HimHer]?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_positiveapp'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, if you came into a room and started talking to [HimHer] without calling [HisHer] name, did [HeShe] usually look up and pay attention to you?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_talknoname'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] ever play imaginative game with another child in such a way that you could tell that they each understood what the other was pretending?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_imaginegame'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When [PI_ProjectName_SCQ_Lifetime[HeShe]] was 4 to 5, did [HeShe] play cooperatively in games that required joining in with a group of other children, such as hide-and-seek or ball games?' , @level0type=N'SCHEMA',@level0name=N'Assessment', @level1type=N'TABLE',@level1name=N'SCQ_Lifetime', @level2type=N'COLUMN',@level2name=N'SCQ_playcoop'
GO


