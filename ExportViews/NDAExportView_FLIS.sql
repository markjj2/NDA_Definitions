USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_FLIS]    Script Date: 2/9/2023 12:31:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/* NDA structure name: flis01 */

CREATE view [NDA].[v_Export_FLIS]
as

SELECT  ndac.subjectkey as subjectkey
		,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
	  , FK.F_AgeInMonths(ndac.dob, a.CDate) as interview_age
	  , ndac.gender as sex

	  ,t1fli4
	  ,t1fli5
	  ,t1fli7
	  ,t1fli8
	  ,t1fli9
	  ,t1fli21
	  ,t1fli22
	  ,t1fli23
	  ,t1fli18
	  ,t1fli10
	  ,t1fli15
	  ,t1fli11
	  ,t1fli16
	  ,t1fli17

	  from

	  (select x.ParticipantID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate
      ,[FLIS_1] as t1fli4
      ,[FLIS_2] as t1fli5
      ,[FLIS_3] as t1fli7
      ,[FLIS_4] as t1fli8
      ,[FLIS_5] as t1fli9
      ,[FLIS_6] as t1fli21
      ,[FLIS_7] as t1fli22
      ,[FLIS_8] as t1fli23
      ,[FLIS_9] as t1fli18
  /*    ,[FLIS_10] as t1fli
      ,[FLIS_11] as t1fli
      ,[FLIS_12] as t1fli
      ,[FLIS_13] as t1fli
      ,[FLIS_14] as t1fli		NDA data structure does not accommodate these fields*/
      ,[FLIS_15] as t1fli10
      ,[FLIS_16] as t1fli15
      ,[FLIS_17] as t1fli11
      ,[FLIS_18] as t1fli16
      ,[FLIS_19] as t1fli17
    
  FROM [Assessment].[FLIS] x
  inner join
  [Proj].[Participants] p on x.ID=p.ID) as a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id
 
