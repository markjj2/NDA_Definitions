USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_MATRICS]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [NDA].[v_NdarExport_WASI]
AS
SELECT     g.NDA_GUID AS subjectkey, x.ParticipantID AS src_subject_id, CONVERT(VARCHAR(10), x.CDate, 101) 
                      AS interview_date, 
                                NDA.udf_NDA_InterviewAgeMonths(d.DOB, x.CDate) AS interview_age, 
                                LEFT(d.SexDesc, 1) AS sex, 
                                999 AS ss_vocabularytscoreverbal4, 
                                999 AS ss_similaritiestscoreverbal4, 
                                999 AS ss_blockdesigntscoreperf4,
                                isnull(x.VERBIQ,999) AS iqscores_verbiq, 
                      isnull(x.PERFIQ,999) AS iqscores_perfiq, 
                                isnull(x.FULLIQ4,999) AS iqscores_full4iq, 
                                isnull(x.FULLIQ2,999) AS iqscores_full2iq, 
                      x.VERBTILE AS iqscores_verbpercentile, 
                                x.PERFTILE AS iqscores_perfpercentile, 
                                x.FULLTILE4 AS iqscores_full4percentile, 
                      x.FULLTILE2 AS iqscores_full2percentile
FROM         Assessment.WASI x INNER JOIN
                      NDA.v_DEMO d ON x.ParticipantID = d.ParticipantID INNER JOIN
                      NDA.[GUID] g ON x.ParticipantID = g.ParticipantID
WHERE     (x.EntryNum = 3) 
GO

