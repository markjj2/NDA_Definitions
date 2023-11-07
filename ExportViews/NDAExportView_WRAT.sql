USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_MATRICS]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [NDA].[v_NdarExport_WRAT]
AS
SELECT     g.NDA_GUID AS subjectkey, x.ParticipantID AS src_subject_id, CONVERT(varchar(10), x.CDate, 101) 
                      AS interview_date, NDA.udf_NDA_InterviewAgeMonths(d.DOB, x.CDate) AS interview_age, LEFT(d.SexDesc, 1) 
                      AS sex, 999 AS lr_rawscore, 999 as wr_rawscore, x.RAW_SC AS wr_totalrawscore, x.STAND_SC AS wr_standardscore, 
                      x.PCT_RANK AS wr_percentilerank
FROM         Assessment.WRAT x INNER JOIN
                      NDA.v_DEMO d ON x.ParticipantID = d.ParticipantID INNER JOIN
                      NDA.[GUID] g ON x.ParticipantID = g.ParticipantID
WHERE     (x.EntryNum = 3)

GO
