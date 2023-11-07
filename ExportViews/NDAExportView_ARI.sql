USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_xxx]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

  /*created 2023-06-15 - markjj2 - 

      NDA structure shortname: ari01

      NOTE: NDA data structure includes both SR and CG versions of the ARI
  */

CREATE view [NDA].[v_Export_ARI]
as

      /*self-report data*/

SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, x.CDATE) as interview_age
        , ndac.gender as sex

        ,isnull([arisr_1],-9) as ari_c_1
      ,isnull([arisr_2],-9) as ari_c_2
      ,isnull([arisr_3],-9) as ari_c_3
      ,isnull([arisr_4],-9) as ari_c_4
      ,isnull([arisr_5],-9) as ari_c_5
      ,isnull([arisr_6],-9) as ari_c_6
      ,isnull([arisr_7],-9) as ari_c_7

        /*nda required fields - if any questions are unanswered use -9 code as incomplete per NDA definition*/
        ,CASE WHEN 
        isnull([arisr_1],-9)
      +isnull([arisr_2],-9)
      +isnull([arisr_3],-9)
      +isnull([arisr_4],-9)
      +isnull([arisr_5],-9)
      +isnull([arisr_6],-9) >=0 THEN isnull([arisr_1],-9)
      +isnull([arisr_2],-9)
      +isnull([arisr_3],-9)
      +isnull([arisr_4],-9)
      +isnull([arisr_5],-9)
      +isnull([arisr_6],-9) ELSE -9 END as ari_totalscore
        ,CASE WHEN 
        isnull([arisr_1],-9)
      +isnull([arisr_2],-9)
      +isnull([arisr_3],-9)
      +isnull([arisr_4],-9)
      +isnull([arisr_5],-9)
      +isnull([arisr_6],-9) >=0 THEN 
        (isnull([arisr_1],-9)
      +isnull([arisr_2],-9)
      +isnull([arisr_3],-9)
      +isnull([arisr_4],-9)
      +isnull([arisr_5],-9)
      +isnull([arisr_6],-9))/6.00 ELSE -9 END as ari_averagescore
        ,'Self' as respondent

  FROM [Assessment].[ARI_SR] x
  inner join
  [Proj].[Participants] p on x.ParticipantID=p.ParticipantID
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on p.ScreeningID=ndac.src_subject_id

  union

  /*caregiver data*/

  SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, x.CDATE) as interview_age
        , ndac.gender as sex

        ,isnull([arip_1],-9) as ari_c_1
      ,isnull([arip_2],-9) as ari_c_2
      ,isnull([arip_3],-9) as ari_c_3
      ,isnull([arip_4],-9) as ari_c_4
      ,isnull([arip_5],-9) as ari_c_5
      ,isnull([arip_6],-9) as ari_c_6
      ,isnull([arip_7],-9) as ari_c_7

        /*nda required fields - if any questions are unanswered use -9 code as incomplete per NDA definition*/
        ,CASE WHEN 
        isnull([arip_1],-9)
      +isnull([arip_2],-9)
      +isnull([arip_3],-9)
      +isnull([arip_4],-9)
      +isnull([arip_5],-9)
      +isnull([arip_6],-9) >=0 THEN isnull([arip_1],-9)
      +isnull([arip_2],-9)
      +isnull([arip_3],-9)
      +isnull([arip_4],-9)
      +isnull([arip_5],-9)
      +isnull([arip_6],-9) ELSE -9 END as ari_totalscore
        ,CASE WHEN 
        isnull([arip_1],-9)
      +isnull([arip_2],-9)
      +isnull([arip_3],-9)
      +isnull([arip_4],-9)
      +isnull([arip_5],-9)
      +isnull([arip_6],-9) >=0 THEN 
        (isnull([arip_1],-9)
      +isnull([arip_2],-9)
      +isnull([arip_3],-9)
      +isnull([arip_4],-9)
      +isnull([arip_5],-9)
      +isnull([arip_6],-9))/6.00 ELSE -9 END as ari_averagescore
        ,'Caregiver' as respondent

  FROM [Assessment].[ARI_P] x
  inner join
  [Proj].[Participants] p on x.ParticipantID=p.ParticipantID
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on p.ScreeningID=ndac.src_subject_id
