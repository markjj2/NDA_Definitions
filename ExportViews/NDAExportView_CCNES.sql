USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_CCNES]    Script Date: 2/9/2023 12:27:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/* NDA structure name: pabq01 */

CREATE view [NDA].[v_Export_CCNES]
as

SELECT  ndac.subjectkey as subjectkey
		,CONVERT(varchar,ndac.src_subject_id) as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
	  , FK.F_AgeInMonths(ndac.dob, a.CDate) as interview_age
	  , ndac.gender as sex

	  ,CASE WHEN ccnes1a = 8 THEN 999 ELSE ccnes1a END as ccnes1a
	  ,CASE WHEN ccnes1b = 8 THEN 999 ELSE ccnes1b END as ccnes1b
	  ,CASE WHEN ccnes1c = 8 THEN 999 ELSE ccnes1c END as ccnes1c
	  ,CASE WHEN ccnes1d = 8 THEN 999 ELSE ccnes1d END as ccnes1d
	  ,CASE WHEN ccnes1e = 8 THEN 999 ELSE ccnes1e END as ccnes1e	
	  ,CASE WHEN ccnes1f = 8 THEN 999 ELSE ccnes1f END as ccnes1f	
	  ,CASE WHEN ccnes2a = 8 THEN 999 ELSE ccnes2a END as ccnes2a
	  ,CASE WHEN ccnes2b = 8 THEN 999 ELSE ccnes2b END as ccnes2b
	  ,CASE WHEN ccnes2c = 8 THEN 999 ELSE ccnes2c END as ccnes2c
	  ,CASE WHEN ccnes2d = 8 THEN 999 ELSE ccnes2d END as ccnes2d
	  ,CASE WHEN ccnes2e = 8 THEN 999 ELSE ccnes2e END as ccnes2e	
	  ,CASE WHEN ccnes2f = 8 THEN 999 ELSE ccnes2f END as ccnes2f	
	  ,CASE WHEN ccnes3a = 8 THEN 999 ELSE ccnes3a END as ccnes3a
	  ,CASE WHEN ccnes3b = 8 THEN 999 ELSE ccnes3b END as ccnes3b
	  ,CASE WHEN ccnes3c = 8 THEN 999 ELSE ccnes3c END as ccnes3c
	  ,CASE WHEN ccnes3d = 8 THEN 999 ELSE ccnes3d END as ccnes3d
	  ,CASE WHEN ccnes3e = 8 THEN 999 ELSE ccnes3e END as ccnes3e	
	  ,CASE WHEN ccnes3f = 8 THEN 999 ELSE ccnes3f END as ccnes3f	
	  ,CASE WHEN ccnes4a = 8 THEN 999 ELSE ccnes4a END as ccnes4a
	  ,CASE WHEN ccnes4b = 8 THEN 999 ELSE ccnes4b END as ccnes4b
	  ,CASE WHEN ccnes4c = 8 THEN 999 ELSE ccnes4c END as ccnes4c
	  ,CASE WHEN ccnes4d = 8 THEN 999 ELSE ccnes4d END as ccnes4d
	  ,CASE WHEN ccnes4e = 8 THEN 999 ELSE ccnes4e END as ccnes4e	
	  ,CASE WHEN ccnes4f = 8 THEN 999 ELSE ccnes4f END as ccnes4f	
	  ,CASE WHEN ccnes5a = 8 THEN 999 ELSE ccnes5a END as ccnes5a
	  ,CASE WHEN ccnes5b = 8 THEN 999 ELSE ccnes5b END as ccnes5b
	  ,CASE WHEN ccnes5c = 8 THEN 999 ELSE ccnes5c END as ccnes5c
	  ,CASE WHEN ccnes5d = 8 THEN 999 ELSE ccnes5d END as ccnes5d
	  ,CASE WHEN ccnes5e = 8 THEN 999 ELSE ccnes5e END as ccnes5e	
	  ,CASE WHEN ccnes5f = 8 THEN 999 ELSE ccnes5f END as ccnes5f	
	  ,CASE WHEN ccnes6a = 8 THEN 999 ELSE ccnes6a END as ccnes6a
	  ,CASE WHEN ccnes6b = 8 THEN 999 ELSE ccnes6b END as ccnes6b
	  ,CASE WHEN ccnes6c = 8 THEN 999 ELSE ccnes6c END as ccnes6c
	  ,CASE WHEN ccnes6d = 8 THEN 999 ELSE ccnes6d END as ccnes6d
	  ,CASE WHEN ccnes6e = 8 THEN 999 ELSE ccnes6e END as ccnes6e	
	  ,CASE WHEN ccnes6f = 8 THEN 999 ELSE ccnes6f END as ccnes6f	
	  ,CASE WHEN ccnes7a = 8 THEN 999 ELSE ccnes7a END as ccnes7a
	  ,CASE WHEN ccnes7b = 8 THEN 999 ELSE ccnes7b END as ccnes7b
	  ,CASE WHEN ccnes7c = 8 THEN 999 ELSE ccnes7c END as ccnes7c
	  ,CASE WHEN ccnes7d = 8 THEN 999 ELSE ccnes7d END as ccnes7d
	  ,CASE WHEN ccnes7e = 8 THEN 999 ELSE ccnes7e END as ccnes7e	
	  ,CASE WHEN ccnes7f = 8 THEN 999 ELSE ccnes7f END as ccnes7f	
	  ,CASE WHEN ccnes8a = 8 THEN 999 ELSE ccnes8a END as ccnes8a
	  ,CASE WHEN ccnes8b = 8 THEN 999 ELSE ccnes8b END as ccnes8b
	  ,CASE WHEN ccnes8c = 8 THEN 999 ELSE ccnes8c END as ccnes8c
	  ,CASE WHEN ccnes8d = 8 THEN 999 ELSE ccnes8d END as ccnes8d
	  ,CASE WHEN ccnes8e = 8 THEN 999 ELSE ccnes8e END as ccnes8e	
	  ,CASE WHEN ccnes8f = 8 THEN 999 ELSE ccnes8f END as ccnes8f	
	  ,CASE WHEN ccnes9a = 8 THEN 999 ELSE ccnes9a END as ccnes9a
	  ,CASE WHEN ccnes9b = 8 THEN 999 ELSE ccnes9b END as ccnes9b
	  ,CASE WHEN ccnes9c = 8 THEN 999 ELSE ccnes9c END as ccnes9c
	  ,CASE WHEN ccnes9d = 8 THEN 999 ELSE ccnes9d END as ccnes9d
	  ,CASE WHEN ccnes9e = 8 THEN 999 ELSE ccnes9e END as ccnes9e	
	  ,CASE WHEN ccnes9f = 8 THEN 999 ELSE ccnes9f END as ccnes9f	
	  ,CASE WHEN ccnes10a = 8 THEN 999 ELSE ccnes10a END as ccnes10a
	  ,CASE WHEN ccnes10b = 8 THEN 999 ELSE ccnes10b END as ccnes10b
	  ,CASE WHEN ccnes10c = 8 THEN 999 ELSE ccnes10c END as ccnes10c
	  ,CASE WHEN ccnes10d = 8 THEN 999 ELSE ccnes10d END as ccnes10d
	  ,CASE WHEN ccnes10e = 8 THEN 999 ELSE ccnes10e END as ccnes10e	
	  ,CASE WHEN ccnes10f = 8 THEN 999 ELSE ccnes10f END as ccnes10f	
	  ,CASE WHEN ccnes11a = 8 THEN 999 ELSE ccnes11a END as ccnes11a
	  ,CASE WHEN ccnes11b = 8 THEN 999 ELSE ccnes11b END as ccnes11b
	  ,CASE WHEN ccnes11c = 8 THEN 999 ELSE ccnes11c END as ccnes11c
	  ,CASE WHEN ccnes11d = 8 THEN 999 ELSE ccnes11d END as ccnes11d
	  ,CASE WHEN ccnes11e = 8 THEN 999 ELSE ccnes11e END as ccnes11e	
	  ,CASE WHEN ccnes11f = 8 THEN 999 ELSE ccnes11f END as ccnes11f	
	  ,CASE WHEN ccnes12a = 8 THEN 999 ELSE ccnes12a END as ccnes12a
	  ,CASE WHEN ccnes12b = 8 THEN 999 ELSE ccnes12b END as ccnes12b
	  ,CASE WHEN ccnes12c = 8 THEN 999 ELSE ccnes12c END as ccnes12c
	  ,CASE WHEN ccnes12d = 8 THEN 999 ELSE ccnes12d END as ccnes12d
	  ,CASE WHEN ccnes12e = 8 THEN 999 ELSE ccnes12e END as ccnes12e	
	  ,CASE WHEN ccnes12f = 8 THEN 999 ELSE ccnes12f END as ccnes12f	


from
	  (select x.ParticipantID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate
      ,[CCNES_1a] as ccnes1a
      ,[CCNES_1b] as ccnes1b
      ,[CCNES_1c] as ccnes1c
      ,[CCNES_1d] as ccnes1d
      ,[CCNES_1e] as ccnes1e
      ,[CCNES_1f] as ccnes1f
      ,[CCNES_2a] as ccnes2a
      ,[CCNES_2b] as ccnes2b
      ,[CCNES_2c] as ccnes2c
      ,[CCNES_2d] as ccnes2d
      ,[CCNES_2e] as ccnes2e
      ,[CCNES_2f] as ccnes2f
      ,[CCNES_3a] as ccnes3a
      ,[CCNES_3b] as ccnes3b
      ,[CCNES_3c] as ccnes3c
      ,[CCNES_3d] as ccnes3d
      ,[CCNES_3e] as ccnes3e
      ,[CCNES_3f] as ccnes3f
      ,[CCNES_4a] as ccnes4a
      ,[CCNES_4b] as ccnes4b
      ,[CCNES_4c] as ccnes4c
      ,[CCNES_4d] as ccnes4d
      ,[CCNES_4e] as ccnes4e
      ,[CCNES_4f] as ccnes4f
      ,[CCNES_5a] as ccnes5a
      ,[CCNES_5b] as ccnes5b
      ,[CCNES_5c] as ccnes5c
      ,[CCNES_5d] as ccnes5d
      ,[CCNES_5e] as ccnes5e
      ,[CCNES_5f] as ccnes5f
      ,[CCNES_6a] as ccnes6a
      ,[CCNES_6b] as ccnes6b
      ,[CCNES_6c] as ccnes6c
      ,[CCNES_6d] as ccnes6d
      ,[CCNES_6e] as ccnes6e
      ,[CCNES_6f] as ccnes6f
      ,[CCNES_7a] as ccnes7a
      ,[CCNES_7b] as ccnes7b
      ,[CCNES_7c] as ccnes7c
      ,[CCNES_7d] as ccnes7d
      ,[CCNES_7e] as ccnes7e
      ,[CCNES_7f] as ccnes7f
      ,[CCNES_8a] as ccnes8a
      ,[CCNES_8b] as ccnes8b
      ,[CCNES_8c] as ccnes8c
      ,[CCNES_8d] as ccnes8d
      ,[CCNES_8e] as ccnes8e
      ,[CCNES_8f] as ccnes8f
      ,[CCNES_9a] as ccnes9a
      ,[CCNES_9b] as ccnes9b
      ,[CCNES_9c] as ccnes9c
      ,[CCNES_9d] as ccnes9d
      ,[CCNES_9e] as ccnes9e
      ,[CCNES_9f] as ccnes9f
      ,[CCNES_10a] as ccnes10a
      ,[CCNES_10b] as ccnes10b
      ,[CCNES_10c] as ccnes10c
      ,[CCNES_10d] as ccnes10d
      ,[CCNES_10e] as ccnes10e
      ,[CCNES_10f] as ccnes10f
      ,[CCNES_11a] as ccnes11a
      ,[CCNES_11b] as ccnes11b
      ,[CCNES_11c] as ccnes11c
      ,[CCNES_11d] as ccnes11d
      ,[CCNES_11e] as ccnes11e
      ,[CCNES_11f] as ccnes11f
      ,[CCNES_12a] as ccnes12a
      ,[CCNES_12b] as ccnes12b
      ,[CCNES_12c] as ccnes12c
      ,[CCNES_12d] as ccnes12d
      ,[CCNES_12e] as ccnes12e
      ,[CCNES_12f] as ccnes12f
  FROM [Assessment].[CCNES] x
  inner join
  [Proj].[Participants] p on x.ID=p.ID) as a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id

