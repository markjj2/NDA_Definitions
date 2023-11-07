USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_MATRICS]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [NDA].[v_NdarExport_MATRICS]
AS
SELECT     g.NDA_GUID AS subjectkey, x.ParticipantID AS src_subject_id, CONVERT(varchar(10), x.CDate, 101) 
                      AS interview_date, NDA.udf_NDA_InterviewAgeMonths(d.DOB, x.CDate) AS interview_age, LEFT(d.SexDesc, 1) AS sex, 
                                
                                x.TMT_R AS tmta_raw, x.BACS_R AS bacs_sc_raw, x.HVLTR_SUM AS hvltr_raw, 
                      x.WMS_R AS wms3_ss_total, x.LNS_R AS lns_raw, x.NAB_R AS nab_mazes_raw, 
                      x.BVMTR_SUM AS bvmtr_raw, x.FLUENCY_R AS catflu_raw, x.MSCEIT_R AS msceit_memo_raw, 
                      x.CPTR_M AS cpt_ip_raw, x.TMT_T AS tmta_tscore, x.BACS_T AS bacs_sc_tscore, 
                      x.HVLT_T AS hvltr_tscore, x.WMS_T AS sspan_tscore, x.LNS_T AS lns_tscore, 
                      x.NAB_T AS nab_mazes_tscore, x.BVMTR_T AS bvmtr_tscore, x.FLUENCY_T AS catflu_tscore, 
                      x.MSCEIT_T AS msceit_memo_tscore, x.CPT_T AS cpt_ip_tscore, x.HVLTR1 AS hvltr_t1, 
                      x.HVLTR2 AS hvltr_t2, x.HVLTR3 AS hvltr_t3, x.BACS_P AS matrics_02, x.HVLT_P AS matrics_04, 
                      x.LNS_P AS matrics_06
                                

FROM         Assessment.MATRICS x INNER JOIN
                      NDA.v_DEMO d ON x.ParticipantID = d.ParticipantID INNER JOIN
                      NDA.[GUID] g ON x.ParticipantID = g.ParticipantID
WHERE     (x.EntryNum in (1,3,4))

GO
