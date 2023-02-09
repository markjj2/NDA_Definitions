USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_SWYC_48]    Script Date: 2/9/2023 12:40:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/* NDA structure name: swyc01 (all versions) */

CREATE view [NDA].[v_Export_SWYC_48]
as

SELECT  ndac.subjectkey as subjectkey
		,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
	  , FK.F_AgeInMonths(ndac.dob, a.CDate) as interview_age
	  , ndac.gender as sex

      ,[SWYC48_dm1] as swyc30_dm9
      ,[SWYC48_dm2] as swyc30_dm10
      ,[SWYC48_dm3]
      ,[SWYC48_dm4]
      ,[SWYC48_dm5]
      ,[SWYC48_dm6]
      ,[SWYC48_dm7]
      ,[SWYC48_dm8]
      ,[SWYC48_dm9]
      ,[SWYC48_dm10]
      ,[SWYC48_ppsc1] as swyc_ppsc_1
      ,[SWYC48_ppsc2] as swyc_ppsc_2
      ,CASE WHEN [SWYC48_ppsc3] = -999 THEN NULL ELSE [SWYC48_ppsc3] END as swyc_ppsc_3
      ,[SWYC48_ppsc4] as swyc_ppsc_4
      ,[SWYC48_ppsc5] as swyc_ppsc_5
      ,[SWYC48_ppsc6] as swyc_ppsc_6
      ,[SWYC48_ppsc7] as swyc_ppsc_7
      ,[SWYC48_ppsc8] as swyc_ppsc_8
      ,[SWYC48_ppsc9] as swyc_ppsc_9
      ,[SWYC48_ppsc10] as swyc_ppsc_10
      ,[SWYC48_ppsc11] as swyc_ppsc_11
      ,[SWYC48_ppsc12] as swyc_ppsc_12
      ,[SWYC48_ppsc13] as swyc_ppsc_13
      ,[SWYC48_ppsc14] as swyc_ppsc_14
      ,[SWYC48_ppsc15] as swyc_ppsc_15
      ,[SWYC48_ppsc16] as swyc_ppsc_16
      ,[SWYC48_ppsc17] as swyc_ppsc_17
      ,[SWYC48_ppsc18] as swyc_ppsc_18
      ,[SWYC48_pc1] as swyc24_pc1
      ,[SWYC48_pc2] as swyc24_pc2
      ,[SWYC48_fq1] as swyc24_fq1
      ,[SWYC48_fq2] as swyc24_fq2
      ,[SWYC48_fq3] as swyc24_fq3
      ,[SWYC48_fq4] as swyc24_fq4
      ,[SWYC48_fq5] as swyc24_fq5
      ,[SWYC48_fq6] as swyc24_fq6
      ,[SWYC48_fq7] as swyc24_fq7
      ,[SWYC48_fq8] as swyc24_fq8
      ,[SWYC48_fq9] as swyc24_fq9
      ,[SWYC48_fq10] as swyc24_fq10

      ,[version_form]

	  from
	  (select x.ParticipantID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate

      ,[SWYC48_dm1]
      ,[SWYC48_dm2]
      ,[SWYC48_dm3]
      ,[SWYC48_dm4]
      ,[SWYC48_dm5]
      ,[SWYC48_dm6]
      ,[SWYC48_dm7]
      ,[SWYC48_dm8]
      ,[SWYC48_dm9]
      ,[SWYC48_dm10]
      ,[SWYC48_ppsc1]
      ,[SWYC48_ppsc2]
      ,[SWYC48_ppsc3]
      ,[SWYC48_ppsc4]
      ,[SWYC48_ppsc5]
      ,[SWYC48_ppsc6]
      ,[SWYC48_ppsc7]
      ,[SWYC48_ppsc8]
      ,[SWYC48_ppsc9]
      ,[SWYC48_ppsc10]
      ,[SWYC48_ppsc11]
      ,[SWYC48_ppsc12]
      ,[SWYC48_ppsc13]
      ,[SWYC48_ppsc14]
      ,[SWYC48_ppsc15]
      ,[SWYC48_ppsc16]
      ,[SWYC48_ppsc17]
      ,[SWYC48_ppsc18]
      ,[SWYC48_pc1]
      ,[SWYC48_pc2]
      ,[SWYC48_fq1]
      ,[SWYC48_fq2]
      ,[SWYC48_fq3]
      ,[SWYC48_fq4]
      ,[SWYC48_fq5]
      ,[SWYC48_fq6]
      ,[SWYC48_fq7]
      ,[SWYC48_fq8]
      ,[SWYC48_fq9]
      ,[SWYC48_fq10]

	  ,'SWYC - 48-mos' as version_form


  FROM [Assessment].[swyc] x
  inner join
  [Proj].[Participants] p on x.ID=p.ID
    /* limit to 48-mos version */
  where swyc48_dm1 is not null 

  ) a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id

