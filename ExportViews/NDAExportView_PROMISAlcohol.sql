USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_PROMISAlcohol]    Script Date: 11/7/2023 1:38:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/* NDA structure name: promis_alc_use01 */

CREATE view [NDA].[v_Export_PROMISAlcohol]
as

select subjectkey, src_subject_id, interview_date, interview_age, sex

,alcohol8screener
,con801
,con807
,con808
,crac02
,crac07
,crac08
,crac13

from

(

SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, a.CDate) as interview_age
        , ndac.gender as sex

      ,[alcohol8screener]
      ,[con801]
      ,[con807]
      ,[con808]
      ,[crac02]
      ,[crac07]
      ,[crac08]
      ,[crac13]

        from

 (select x.ParticipantID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate
      ,[AlcoholScreener] as alcohol8screener
      ,[CONS01] as con801
      ,[CONS07] as con807
      ,[CONS08] as con808
      ,[CRAC02]
      ,[CRAC07]
      ,[CRAC08]
      ,[CRAC13]
   
  FROM [Assessment].[PROMISAlcohol] as x  
  inner join
  [Proj].[Participants] p on x.ParticipantID=p.ParticipantID) as a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id
 ) x
GO


