USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_SWYC_30]    Script Date: 2/9/2023 12:37:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/* NDA structure name: swyc01 (all versions) */

CREATE view [NDA].[v_Export_SWYC_30]
as

SELECT  ndac.subjectkey as subjectkey
		,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
	  , FK.F_AgeInMonths(ndac.dob, a.CDate) as interview_age
	  , ndac.gender as sex

      ,[SWYC30_dm1]
      ,[SWYC30_dm2]
      ,[SWYC30_dm3]
      ,[SWYC30_dm4]
      ,[SWYC30_dm5]
      ,[SWYC30_dm6]
      ,[SWYC30_dm7]
      ,[SWYC30_dm8]
      ,[SWYC30_dm9]
      ,[SWYC30_dm10]
      ,[SWYC30_ppsc1] as swyc_ppsc_1
      ,[SWYC30_ppsc2] as swyc_ppsc_2
      ,[SWYC30_ppsc3] as swyc_ppsc_3
      ,[SWYC30_ppsc4] as swyc_ppsc_4
      ,[SWYC30_ppsc5] as swyc_ppsc_5
      ,[SWYC30_ppsc6] as swyc_ppsc_6
      ,[SWYC30_ppsc7] as swyc_ppsc_7
      ,[SWYC30_ppsc8] as swyc_ppsc_8
      ,[SWYC30_ppsc9] as swyc_ppsc_9
      ,[SWYC30_ppsc10] as swyc_ppsc_10
      ,[SWYC30_ppsc11] as swyc_ppsc_11
      ,[SWYC30_ppsc12] as swyc_ppsc_12
      ,[SWYC30_ppsc13] as swyc_ppsc_13
      ,[SWYC30_ppsc14] as swyc_ppsc_14
      ,[SWYC30_ppsc15] as swyc_ppsc_15
      ,[SWYC30_ppsc16] as swyc_ppsc_16
      ,[SWYC30_ppsc17] as swyc_ppsc_17
      ,[SWYC30_ppsc18] as swyc_ppsc_18
      ,[SWYC30_posi1] as swyc24_posi1
      ,[SWYC30_posi2] as swyc24_posi2
      ,[SWYC30_posi3] as swyc24_posi3
      ,[SWYC30_posi4] as swyc24_posi4
      ,[SWYC30_posi5] as swyc24_posi5
      ,swyc30_posi6_sq01_says
      ,swyc30_posi6_sq02_points
      ,swyc30_posi6_sq03_reaches
      ,swyc30_posi6_sq04_pulls
      ,swyc30_posi6_sq05_grunts
      ,swyc30_posi7_sq01_playing
      ,swyc30_posi7_sq02_reading
      ,swyc30_posi7_sq03_climbing
      ,swyc30_posi7_sq04_lining
      ,swyc30_posi7_sq05_watching
      ,[SWYC30_pc1] as swyc24_pc1
      ,[SWYC30_pc2] as swyc24_pc2
      ,[SWYC30_fq1] as swyc24_fq1
      ,[SWYC30_fq2] as swyc24_fq2
      ,[SWYC30_fq3] as swyc24_fq3
      ,[SWYC30_fq4] as swyc24_fq4
      ,[SWYC30_fq5] as swyc24_fq5
      ,[SWYC30_fq6] as swyc24_fq6
      ,[SWYC30_fq7] as swyc24_fq7
      ,[SWYC30_fq8] as swyc24_fq8
      ,[SWYC30_fq9] as swyc24_fq9
      ,[SWYC30_fq10] as swyc24_fq10

      ,[version_form]

	  from
	  (select x.ParticipantID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate

      ,[SWYC30_dm1]
      ,[SWYC30_dm2]
      ,[SWYC30_dm3]
      ,[SWYC30_dm4]
      ,[SWYC30_dm5]
      ,[SWYC30_dm6]
      ,[SWYC30_dm7]
      ,[SWYC30_dm8]
      ,[SWYC30_dm9]
      ,[SWYC30_dm10]
      ,[SWYC30_ppsc1]
      ,[SWYC30_ppsc2]
      ,[SWYC30_ppsc3]
      ,[SWYC30_ppsc4]
      ,[SWYC30_ppsc5]
      ,[SWYC30_ppsc6]
      ,[SWYC30_ppsc7]
      ,[SWYC30_ppsc8]
      ,[SWYC30_ppsc9]
      ,[SWYC30_ppsc10]
      ,[SWYC30_ppsc11]
      ,[SWYC30_ppsc12]
      ,[SWYC30_ppsc13]
      ,[SWYC30_ppsc14]
      ,[SWYC30_ppsc15]
      ,[SWYC30_ppsc16]
      ,[SWYC30_ppsc17]
      ,[SWYC30_ppsc18]
      ,[SWYC30_posi1]
      ,[SWYC30_posi2]
      ,[SWYC30_posi3]
      ,[SWYC30_posi4]
      ,[SWYC30_posi5]
      ,CASE WHEN [SWYC30_posi6] like 'A|%' THEN 1 ELSE 0 END as swyc30_posi6_sq01_says
      ,CASE WHEN [SWYC30_posi6] like '%B|%' THEN 1 ELSE 0 END as swyc30_posi6_sq02_points
      ,CASE WHEN [SWYC30_posi6] like '%C|%' THEN 1 ELSE 0 END as swyc30_posi6_sq03_reaches
      ,CASE WHEN [SWYC30_posi6] like '%D|%' THEN 1 ELSE 0 END as swyc30_posi6_sq04_pulls
      ,CASE WHEN [SWYC30_posi6] like '%E|%' THEN 1 ELSE 0 END as swyc30_posi6_sq05_grunts
      ,CASE WHEN [SWYC30_posi7] like 'A|%' THEN 1 ELSE 0 END as swyc30_posi7_sq01_playing
      ,CASE WHEN [SWYC30_posi7] like '%B|%' THEN 1 ELSE 0 END as swyc30_posi7_sq02_reading
      ,CASE WHEN [SWYC30_posi7] like '%C|%' THEN 1 ELSE 0 END as swyc30_posi7_sq03_climbing
      ,CASE WHEN [SWYC30_posi7] like '%D|%' THEN 1 ELSE 0 END as swyc30_posi7_sq04_lining
      ,CASE WHEN [SWYC30_posi7] like '%E|%' THEN 1 ELSE 0 END as swyc30_posi7_sq05_watching
      ,[SWYC30_pc1]
      ,[SWYC30_pc2]
      ,[SWYC30_fq1]
      ,[SWYC30_fq2]
      ,[SWYC30_fq3]
      ,[SWYC30_fq4]
      ,[SWYC30_fq5]
      ,[SWYC30_fq6]
      ,[SWYC30_fq7]
      ,[SWYC30_fq8]
      ,[SWYC30_fq9]
      ,[SWYC30_fq10]

	  ,'SWYC - 30-mos' as version_form


  FROM [Assessment].[swyc] x
  inner join
  [Proj].[Participants] p on x.ID=p.ID
    /* limit to 30-mos version */
  where swyc30_dm1 is not null 

  ) a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id

