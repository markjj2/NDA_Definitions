USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_xxx]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


  /*
                              created 2023-09-19 - markjj2 - needs to be requested
                              
                              NDA structure shortname: TBD
  */

CREATE view [NDA].[v_Export_ACWRSS]
as


SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[ADate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, x.ADate) as interview_age
        , ndac.gender as sex

      ,[ACWRSS01]
      ,[ACWRSS02]
      ,[ACWRSS03]
      ,[ACWRSS04]
      ,[ACWRSS05]
      ,[ACWRSS06]
      ,[ACWRSS07]
      
  FROM [Assessment].[ACWRSS] x
  inner join
  [Proj].[Participants] p on x.ID=p.ID
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on p.ID=ndac.src_subject_id
