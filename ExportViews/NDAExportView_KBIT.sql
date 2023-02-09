USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_KBIT]    Script Date: 2/9/2023 1:31:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/* nda structure: kbit_ii01 */

CREATE view [NDA].[v_Export_KBIT]
as



SELECT  ndac.subjectkey as subjectkey
		,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[ADate],101) as interview_date
	  , FK.F_AgeInMonths(ndac.dob, a.ADate) as interview_age
	  , ndac.gender as sex

	  ,kbit_riddle_score
	  ,kbit_verbalsum_score
	  ,kbit_verbalstand_score
	  ,kbit_nonverbal_score
	  ,kbit_nonverbalstand_score
	  ,kbit_iqsum_score
	  ,kbit_iqstand_score
from
	  (select x.ID, CONVERT(varchar,p.ScreeningID) as ScreeningID
	  , x.ADate
      ,[KBIT_Riddles_RawScore] as kbit_riddle_score
      ,[KBIT_Verbal_RawScore] as kbit_verbalsum_score
      ,[KBIT_Verbal_StdScore] as kbit_verbalstand_score
      ,[KBIT_Nonverbal_RawScore] as kbit_nonverbal_score
      ,[KBIT_Nonverbal_StdScore] as kbit_nonverbalstand_score
      ,[KBIT_IQComp_StdScoreSum] as kbit_iqsum_score
      ,[KBIT_IQComp_StdScore] as kbit_iqstand_score

  FROM (select * from [Assessment].[KBIT] /*where EntryNum in (3,4)*/) x
    inner join
  [Proj].[Participants] p on x.ID=p.ID) as a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id
GO


