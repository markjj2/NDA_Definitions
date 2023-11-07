USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_xxx]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

  /*created 2023-05-23 - markjj2 - combination of PDS_F and PDS_M tables 

                              NDA structure shortname: pds01
  */

CREATE view [NDA].[v_Export_PDS]
as


SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, x.CDATE) as interview_age
        , ndac.gender as sex

        /*NDA required field*/
        ,3 as respond /*3 = self*/
      ,[pdsfemale_1] as pds_1
      ,[pdsfemale_2] as pds_2
      ,[pdsfemale_3] as pds_3
        ,null as pds_4
        ,null as pds_5
      ,[pdsfemale_4] as pds_6
      ,[pdsfemale_5] as pdsf_5
        ,null as pdsm_6
      ,CASE WHEN [pdsfemale_6]=0 THEN 1 WHEN [pdsfemale_6]=1 THEN 2 ELSE 77 END as pds_7
      ,[pdsfemale_6_age_years] as pds6gyr
      ,[pdsfemale_6_age_months] as pds6gmo
      ,[pdsfemale_7_feet] * 12 + [pdsfemale_7_inches] as pds_ch_in
      ,[pdsfemale_8] as weight_std
        /* not available in NDA data structure
      ,[pdsfemale_9]
      ,[pdsfemale_9_age_years]
      ,[pdsfemale_9_age_months]
      */
  FROM [Assessment].[PDS_F] x
  inner join
  [Proj].[Participants] p on x.ParticipantID=p.ParticipantID
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on p.ScreeningID=ndac.src_subject_id

union

SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, x.CDATE) as interview_age
        , ndac.gender as sex

        /*NDA required field*/
        ,3 as respond /*3 = self*/
      ,[pdsmale_1] as pds_1
      ,[pdsmale_2] as pds_2
      ,[pdsmale_3] as pds_3
      ,[pdsmale_4] as pds_4
      ,[pdsmale_5] as pds_5
      ,null as pds_6
      ,null as pdsf_5
      ,[pdsmale_6] as pdsm_6
        ,null as pds_7
      ,null as pds6gyr
      ,null as pds6gmo
      ,[pds_male_7_feet] * 12 + [pds_male_7_inches] as pds_ch_in
      ,[pds_male_8] as weight_std
        /* not available in NDA data structure
      ,[pdsmale_9]
      ,[pdsmale_9_age_years]
      ,[pdsmale_9_age_months]
      */
  FROM [Assessment].[PDS_M] x
  inner join
  [Proj].[Participants] p on x.ParticipantID=p.ParticipantID
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on p.ScreeningID=ndac.src_subject_id
