USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_SWYC_24]    Script Date: 2/9/2023 12:35:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/* NDA structure name: swyc01 (all versions) */

CREATE view [NDA].[v_Export_SWYC_24]
as

SELECT  ndac.subjectkey as subjectkey
		,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
	  , FK.F_AgeInMonths(ndac.dob, a.CDate) as interview_age
	  , ndac.gender as sex

      ,[SWYC24_dm1]
      ,[SWYC24_dm2]
      ,[SWYC24_dm3]
      ,[SWYC24_dm4]
      ,[SWYC24_dm5]
      ,[SWYC24_dm6]
      ,[SWYC24_dm7]
      ,[SWYC24_dm8]
      ,[SWYC24_dm9]
      ,[SWYC24_dm10]
      ,[SWYC24_ppsc1]
      ,[SWYC24_ppsc2]
      ,[SWYC24_ppsc3]
      ,[SWYC24_ppsc4]
      ,[SWYC24_ppsc5]
      ,[SWYC24_ppsc6]
      ,[SWYC24_ppsc7]
      ,[SWYC24_ppsc8]
      ,[SWYC24_ppsc9]
      ,[SWYC24_ppsc10]
      ,[SWYC24_ppsc11]
      ,[SWYC24_ppsc12]
      ,[SWYC24_ppsc13]
      ,[SWYC24_ppsc14]
      ,[SWYC24_ppsc15]
      ,[SWYC24_ppsc16]
      ,[SWYC24_ppsc17]
      ,[SWYC24_ppsc18]
      ,[SWYC24_posi1]
      ,[SWYC24_posi2]
      ,[SWYC24_posi3]
      ,[SWYC24_posi4]
      ,[SWYC24_posi5]
      ,swyc24_posi6_sq01_says
      ,swyc24_posi6_sq02_points
      ,swyc24_posi6_sq03_reaches
      ,swyc24_posi6_sq04_pulls
      ,swyc24_posi6_sq05_grunts
      ,swyc24_posi7_sq01_playing
      ,swyc24_posi7_sq02_reading
      ,swyc24_posi7_sq03_climbing
      ,swyc24_posi7_sq04_lining
      ,swyc24_posi7_sq05_watching
      ,[SWYC24_pc1]
      ,[SWYC24_pc2]
      ,[SWYC24_fq1]
      ,[SWYC24_fq2]
      ,[SWYC24_fq3]
      ,[SWYC24_fq4]
      ,[SWYC24_fq5]
      ,[SWYC24_fq6]
      ,[SWYC24_fq7]
      ,[SWYC24_fq8]
      ,[SWYC24_fq9]
      ,[SWYC24_fq10]

      ,[version_form]

	  from
	  (select x.ParticipantID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate

      ,[SWYC24_dm1]
      ,[SWYC24_dm2]
      ,[SWYC24_dm3]
      ,[SWYC24_dm4]
      ,[SWYC24_dm5]
      ,[SWYC24_dm6]
      ,[SWYC24_dm7]
      ,[SWYC24_dm8]
      ,[SWYC24_dm9]
      ,[SWYC24_dm10]
      ,[SWYC24_ppsc1]
      ,[SWYC24_ppsc2]
      ,[SWYC24_ppsc3]
      ,[SWYC24_ppsc4]
      ,[SWYC24_ppsc5]
      ,[SWYC24_ppsc6]
      ,[SWYC24_ppsc7]
      ,[SWYC24_ppsc8]
      ,[SWYC24_ppsc9]
      ,[SWYC24_ppsc10]
      ,[SWYC24_ppsc11]
      ,[SWYC24_ppsc12]
      ,[SWYC24_ppsc13]
      ,[SWYC24_ppsc14]
      ,[SWYC24_ppsc15]
      ,[SWYC24_ppsc16]
      ,[SWYC24_ppsc17]
      ,[SWYC24_ppsc18]
      ,[SWYC24_posi1]
      ,[SWYC24_posi2]
      ,[SWYC24_posi3]
      ,[SWYC24_posi4]
      ,[SWYC24_posi5]
      ,CASE WHEN [SWYC24_posi6] like 'A|%' THEN 1 ELSE 0 END as swyc24_posi6_sq01_says
      ,CASE WHEN [SWYC24_posi6] like '%B|%' THEN 1 ELSE 0 END as swyc24_posi6_sq02_points
      ,CASE WHEN [SWYC24_posi6] like '%C|%' THEN 1 ELSE 0 END as swyc24_posi6_sq03_reaches
      ,CASE WHEN [SWYC24_posi6] like '%D|%' THEN 1 ELSE 0 END as swyc24_posi6_sq04_pulls
      ,CASE WHEN [SWYC24_posi6] like '%E|%' THEN 1 ELSE 0 END as swyc24_posi6_sq05_grunts
      ,CASE WHEN [SWYC24_posi7] like 'A|%' THEN 1 ELSE 0 END as swyc24_posi7_sq01_playing
      ,CASE WHEN [SWYC24_posi7] like '%B|%' THEN 1 ELSE 0 END as swyc24_posi7_sq02_reading
      ,CASE WHEN [SWYC24_posi7] like '%C|%' THEN 1 ELSE 0 END as swyc24_posi7_sq03_climbing
      ,CASE WHEN [SWYC24_posi7] like '%D|%' THEN 1 ELSE 0 END as swyc24_posi7_sq04_lining
      ,CASE WHEN [SWYC24_posi7] like '%E|%' THEN 1 ELSE 0 END as swyc24_posi7_sq05_watching
      ,[SWYC24_pc1]
      ,[SWYC24_pc2]
      ,[SWYC24_fq1]
      ,[SWYC24_fq2]
      ,[SWYC24_fq3]
      ,[SWYC24_fq4]
      ,[SWYC24_fq5]
      ,[SWYC24_fq6]
      ,[SWYC24_fq7]
      ,[SWYC24_fq8]
      ,[SWYC24_fq9]
      ,[SWYC24_fq10]

	  ,'SWYC - 24-mos' as version_form

  FROM [Assessment].[swyc] x
  inner join
  [Proj].[Participants] p on x.ID=p.ID
    /* limit to 24-mos version */
  where swyc24_dm1 is not null 

  ) a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id

