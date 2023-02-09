USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_SWYC_60]    Script Date: 2/9/2023 1:00:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/* NDA structure name: swyc01 */

CREATE view [NDA].[v_Export_SWYC_60]
as

SELECT  ndac.subjectkey as subjectkey
		,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
	  , FK.F_AgeInMonths(ndac.dob, a.CDate) as interview_age
	  , ndac.gender as sex

	        ,[swyc_1]
      ,[swyc_2]
      ,[swyc_3]
      ,[swyc_4]
      ,[swyc_5]
      ,[swyc_6]
      ,[swyc_7]
      ,[swyc_8]
      ,[swyc_9]
      ,[swyc_10]
      ,[swyc_ppsc_1]
      ,[swyc_ppsc_2]
      ,[swyc_ppsc_3]
      ,[swyc_ppsc_4]
      ,[swyc_ppsc_5]
      ,[swyc_ppsc_6]
      ,[swyc_ppsc_7]
      ,[swyc_ppsc_8]
      ,[swyc_ppsc_9]
      ,[swyc_ppsc_10]
      ,[swyc_ppsc_11]
      ,[swyc_ppsc_12]
      ,[swyc_ppsc_13]
      ,[swyc_ppsc_14]
      ,[swyc_ppsc_15]
      ,[swyc_ppsc_16]
      ,[swyc_ppsc_17]
      ,[swyc_ppsc_18]
      ,[swyc_prnt_con1]
      ,[swyc_prnt_con2]
      ,[swyc_fam_1]
      ,[swyc_fam_2]
      ,[swyc_fam_3]
      ,[swyc_fam_4]
      ,[swyc_fam_5]
      ,[swyc_fam_6]
      ,[swyc_fam_7]
      ,[swyc_fam_8]
      ,[swyc_fam_9]
      ,[swyc_fam_10]
      ,[version_form]

	  from
	  (select x.ParticipantID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate

      ,[SWYC60_dm1] as swyc_1
      ,[SWYC60_dm2] as swyc_2
      ,[SWYC60_dm3] as swyc_3
      ,[SWYC60_dm4] as swyc_4
      ,[SWYC60_dm5] as swyc_5
      ,[SWYC60_dm6] as swyc_6
      ,[SWYC60_dm7] as swyc_7
      ,[SWYC60_dm8] as swyc_8
      ,[SWYC60_dm9] as swyc_9
      ,[SWYC60_dm10] as swyc_10

      ,[SWYC60_ppsc1] as swyc_ppsc_1
      ,[SWYC60_ppsc2] as swyc_ppsc_2
      ,[SWYC60_ppsc3] as swyc_ppsc_3
      ,[SWYC60_ppsc4] as swyc_ppsc_4
      ,[SWYC60_ppsc5] as swyc_ppsc_5
      ,[SWYC60_ppsc6] as swyc_ppsc_6
      ,[SWYC60_ppsc7] as swyc_ppsc_7
      ,[SWYC60_ppsc8] as swyc_ppsc_8
      ,[SWYC60_ppsc9] as swyc_ppsc_9
      ,[SWYC60_ppsc10] as swyc_ppsc_10
      ,[SWYC60_ppsc11] as swyc_ppsc_11
      ,[SWYC60_ppsc12] as swyc_ppsc_12
      ,[SWYC60_ppsc13] as swyc_ppsc_13
      ,[SWYC60_ppsc14] as swyc_ppsc_14
      ,[SWYC60_ppsc15] as swyc_ppsc_15
      ,[SWYC60_ppsc16] as swyc_ppsc_16
      ,[SWYC60_ppsc17] as swyc_ppsc_17
      ,[SWYC60_ppsc18] as swyc_ppsc_18

	  ,x.[SWYC60_pc1] as swyc_prnt_con1
      ,x.[SWYC60_pc2] as swyc_prnt_con2

	  ,x.[SWYC60_fq1] as swyc_fam_1
	  ,x.[SWYC60_fq2] as swyc_fam_2
	  ,x.[SWYC60_fq3] as swyc_fam_3
	  ,x.[SWYC60_fq4] as swyc_fam_4
	  ,x.[SWYC60_fq5] as swyc_fam_5
	  ,x.[SWYC60_fq6] as swyc_fam_6
	  ,x.[SWYC60_fq7] as swyc_fam_7
	  ,CASE WHEN x.[SWYC60_fq8] = 3 THEN 9 ELSE x.[SWYC60_fq8] END as swyc_fam_8
	  ,CASE WHEN x.[SWYC60_fq9] = 3 THEN 9 ELSE x.[SWYC60_fq9] END as swyc_fam_9
	  ,x.[SWYC60_fq10] as swyc_fam_10

	  ,'SWYC - 60-mos and older' as version_form


  FROM [Assessment].[swyc] x
  inner join
  [Proj].[Participants] p on x.ID=p.ID
    /* limit to 60-mos version, which is all NDA structure allows for
	(requested other versions not available at time of this view [July 2021]) */
  where swyc60_dm1 is not null 

  ) a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id

