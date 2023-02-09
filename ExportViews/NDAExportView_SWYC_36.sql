USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_SWYC_36]    Script Date: 2/9/2023 12:38:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/* NDA structure name: swyc01 (all versions) */

CREATE view [NDA].[v_Export_SWYC_36]
as

SELECT  ndac.subjectkey as subjectkey
		,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
	  , FK.F_AgeInMonths(ndac.dob, a.CDate) as interview_age
	  , ndac.gender as sex

      ,[SWYC36_dm1]
      ,[SWYC36_dm2]
      ,[SWYC36_dm3]
      ,[SWYC36_dm4] as swyc30_dm8
      ,[SWYC36_dm5] as swyc30_dm9
      ,[SWYC36_dm6] as swyc30_dm10
      ,[SWYC36_dm7]
      ,[SWYC36_dm8]
      ,[SWYC36_dm9]
      ,[SWYC36_dm10]
      ,[SWYC36_ppsc1] as swyc_ppsc_1
      ,[SWYC36_ppsc2] as swyc_ppsc_2
      ,[SWYC36_ppsc3] as swyc_ppsc_3
      ,[SWYC36_ppsc4] as swyc_ppsc_4
      ,[SWYC36_ppsc5] as swyc_ppsc_5
      ,[SWYC36_ppsc6] as swyc_ppsc_6
      ,[SWYC36_ppsc7] as swyc_ppsc_7
      ,[SWYC36_ppsc8] as swyc_ppsc_8
      ,[SWYC36_ppsc9] as swyc_ppsc_9
      ,[SWYC36_ppsc10] as swyc_ppsc_10
      ,[SWYC36_ppsc11] as swyc_ppsc_11
      ,[SWYC36_ppsc12] as swyc_ppsc_12
      ,[SWYC36_ppsc13] as swyc_ppsc_13
      ,[SWYC36_ppsc14] as swyc_ppsc_14
      ,[SWYC36_ppsc15] as swyc_ppsc_15
      ,[SWYC36_ppsc16] as swyc_ppsc_16
      ,[SWYC36_ppsc17] as swyc_ppsc_17
      ,[SWYC36_ppsc18] as swyc_ppsc_18
      ,[SWYC36_pc1] as swyc24_pc1
      ,[SWYC36_pc2] as swyc24_pc2
      ,[SWYC36_fq1] as swyc24_fq1
      ,[SWYC36_fq2] as swyc24_fq2
      ,[SWYC36_fq3] as swyc24_fq3
      ,[SWYC36_fq4] as swyc24_fq4
      ,[SWYC36_fq5] as swyc24_fq5
      ,[SWYC36_fq6] as swyc24_fq6
      ,[SWYC36_fq7] as swyc24_fq7
      ,[SWYC36_fq8] as swyc24_fq8
      ,[SWYC36_fq9] as swyc24_fq9
      ,[SWYC36_fq10] as swyc24_fq10

      ,[version_form]

	  from
	  (select x.ParticipantID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate

      ,[SWYC36_dm1]
      ,[SWYC36_dm2]
      ,[SWYC36_dm3]
      ,[SWYC36_dm4]
      ,[SWYC36_dm5]
      ,[SWYC36_dm6]
      ,[SWYC36_dm7]
      ,[SWYC36_dm8]
      ,[SWYC36_dm9]
      ,[SWYC36_dm10]
      ,[SWYC36_ppsc1]
      ,[SWYC36_ppsc2]
      ,[SWYC36_ppsc3]
      ,[SWYC36_ppsc4]
      ,[SWYC36_ppsc5]
      ,[SWYC36_ppsc6]
      ,[SWYC36_ppsc7]
      ,[SWYC36_ppsc8]
      ,[SWYC36_ppsc9]
      ,[SWYC36_ppsc10]
      ,[SWYC36_ppsc11]
      ,[SWYC36_ppsc12]
      ,[SWYC36_ppsc13]
      ,[SWYC36_ppsc14]
      ,[SWYC36_ppsc15]
      ,[SWYC36_ppsc16]
      ,[SWYC36_ppsc17]
      ,[SWYC36_ppsc18]
      ,[SWYC36_pc1]
      ,[SWYC36_pc2]
      ,[SWYC36_fq1]
      ,[SWYC36_fq2]
      ,[SWYC36_fq3]
      ,[SWYC36_fq4]
      ,[SWYC36_fq5]
      ,[SWYC36_fq6]
      ,[SWYC36_fq7]
      ,[SWYC36_fq8]
      ,[SWYC36_fq9]
      ,[SWYC36_fq10]

	  ,'SWYC - 36-mos' as version_form


  FROM [Assessment].[swyc] x
  inner join
  [Proj].[Participants] p on x.ID=p.ID
    /* limit to 36-mos version */
  where swyc36_dm1 is not null 

  ) a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id

