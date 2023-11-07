USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_xxx]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

  /*created 2023-05-23 - markjj2 - 

                              NDA structure shortname: abc_community02
  */

CREATE view [NDA].[v_Export_ABCI]
as


SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, x.CDATE) as interview_age
        , ndac.gender as sex

      ,CASE WHEN [abci2] = -999 THEN -8 ELSE [abci2] END as abcc002
      ,CASE WHEN [abci4] = -999 THEN -8 ELSE [abci4] END as abcc004
      ,CASE WHEN [abci8] = -999 THEN -8 ELSE [abci8] END as abcc008
      ,CASE WHEN [abci10] = -999 THEN -8 ELSE [abci10] END as abcc010
      ,CASE WHEN [abci14] = -999 THEN -8 ELSE [abci14] END as abcc014
      ,CASE WHEN [abci19] = -999 THEN -8 ELSE [abci19] END as abcc019
      ,CASE WHEN [abci25] = -999 THEN -8 ELSE [abci25] END as abcc025
      ,CASE WHEN [abci29] = -999 THEN -8 ELSE [abci29] END as abcc029
      ,CASE WHEN [abci34] = -999 THEN -8 ELSE [abci34] END as abcc034
      ,CASE WHEN [abci36] = -999 THEN -8 ELSE [abci36] END as abcc036
      ,CASE WHEN [abci41] = -999 THEN -8 ELSE [abci41] END as abcc041
      ,CASE WHEN [abci47] = -999 THEN -8 ELSE [abci47] END as abcc047
      ,CASE WHEN [abci50] = -999 THEN -8 ELSE [abci50] END as abcc050
      ,CASE WHEN [abci52] = -999 THEN -8 ELSE [abci52] END as abcc052
      ,CASE WHEN [abci57] = -999 THEN -8 ELSE [abci57] END as abcc057

        /*NDA-required items not collected in EDISR*/
        ,999 as inter_deaf
        ,999 as inter_cp

  FROM [Assessment].[ABCI] x
  inner join
  [Proj].[Participants] p on x.ParticipantID=p.ParticipantID
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on p.ScreeningID=ndac.src_subject_id
