USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_CAINS]    Script Date: 11/7/2023 1:42:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [NDA].[v_NdarExport_CAINS]
AS
SELECT     g.NDA_GUID AS subjectkey, x.ParticipantID AS src_subject_id, CONVERT(varchar(10), x.CDate, 101) 
                      AS interview_date, NDA.udf_NDA_InterviewAgeMonths(d.DOB, x.CDate) AS interview_age, LEFT(d.SexDesc, 1) AS sex, 
                                
                              x.Item1 as cains1,
                              x.Item2 as cains2,
                              x.Item3 as cains3,
                              x.Item4 as cains4,
                              x.Item5 as cains5,
                              x.Item6 as cains6,
                              x.Item7 as cains7,
                              x.Item8 as cains8,
                              x.Item9 as cains9
                              
                              ,(x.Item1 + x.Item2 + x.Item3 + x.Item4 + x.Item5 + x.Item6 + x.Item7 + x.Item8 + x.Item9) as cains_map_ssum,

                              x.Item10 as cains10,
                              x.Item11 as cains11,
                              x.Item12 as cains12,
                              x.Item13 as cains13

                              ,(x.Item10 + x.Item11 + x.Item12 + x.Item13) as cains_exp_ssum
                              ,(x.Item1 + x.Item2 + x.Item3 + x.Item4 + x.Item5 + x.Item6 + x.Item7 + x.Item8 + x.Item9 + x.Item10 + x.Item11 + x.Item12 + x.Item13) as   cains_ssum

                              ,x.MAP_AVG as cainsmap
                              ,x.EXP_AVG as cains_expression_avg

FROM         Assessment.CAINS x INNER JOIN
                      NDA.v_DEMO d ON x.ParticipantID = d.ParticipantID INNER JOIN
                      NDA.[GUID] g ON x.ParticipantID = g.ParticipantID
WHERE     (x.EntryNum = 3)

GO


