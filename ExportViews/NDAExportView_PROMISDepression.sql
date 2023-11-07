USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_xxx]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*2023-05-22 - markjj2 - adapted from AFS export view*/

/* NDA structure name: predd01 */


CREATE view [NDA].[v_Export_PROMISDepression]
as

  /*Caregiver data below*/

SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, a.CDate) as interview_age
        , ndac.gender as sex

      ,[EDDEP04]
      ,[EDDEP06]
      ,[EDDEP29]
      ,[EDDEP41]

        from

        (select x.ParticipantID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate
      ,[EDDEP04]
      ,[EDDEP06]
      ,[EDDEP29]
      ,[EDDEP41]
   
  FROM [Assessment].[PROMISDepression_CG] x
  inner join
  [Proj].[Participants] p on x.ParticipantID=p.ParticipantID) as a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id
 