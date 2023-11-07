USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_xxx]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


  /*
                              created 2023-09-19 - markjj2
                              
                              NDA structure shortname: ados4_201201
  */

CREATE view [NDA].[v_Export_ADOS2_Module4]
as


SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[ADate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, x.ADate) as interview_age
        , ndac.gender as sex

      ,[ADOS2_Mod4_A1] as ados2_m4a1
      ,isnull([ADOS2_Mod4_A2],9) as ados2_m4a2
      ,isnull([ADOS2_Mod4_A3],9) as ados2_m4a3
      ,isnull([ADOS2_Mod4_A4],9) as ados2_m4a4
      ,isnull([ADOS2_Mod4_A5],9) as ados2_m4a5
      ,isnull([ADOS2_Mod4_A6],9) as ados2_m4a6
      ,isnull([ADOS2_Mod4_A7],9) as ados2_m4a7
      ,[ADOS2_Mod4_A8] as ados2_m4a8
      ,isnull([ADOS2_Mod4_A9],9) as ados2_m4a9
      ,isnull([ADOS2_Mod4_A10],9) as ados2_m4a10
      ,isnull([ADOS2_Mod4_B1],9) as ados2_m4b1
      ,[ADOS2_Mod4_B2] as ados2_m4b2
      ,isnull([ADOS2_Mod4_B3],9) as ados2_m4b3
      ,isnull([ADOS2_Mod4_B4],9) as ados2_m4b4
      ,isnull([ADOS2_Mod4_B5],9) as ados2_m4b5
      ,[ADOS2_Mod4_B6] as ados2_m4b6
      ,[ADOS2_Mod4_B7] as ados2_m4b7
      ,isnull([ADOS2_Mod4_B8],9) as ados2_m4b8
      ,isnull([ADOS2_Mod4_B9],9) as ados2_m4b9
      ,[ADOS2_Mod4_B10] as ados2_m4b10
      ,isnull([ADOS2_Mod4_B11],9) as ados2_m4b11
      ,isnull([ADOS2_Mod4_B12],9) as ados2_m4b12
      ,isnull([ADOS2_Mod4_B13],9) as ados2_m4b13
      ,isnull([ADOS2_Mod4_C1],9) as ados2_m4c1
      ,isnull([ADOS2_Mod4_D1],9) as ados2_m4d1
      ,isnull([ADOS2_Mod4_D2],9) as ados2_m4d2
      ,isnull([ADOS2_Mod4_D3],9) as ados2_m4d3
      ,[ADOS2_Mod4_D4] as ados2_m4d4
      ,[ADOS2_Mod4_D5] as ados2_m4d5
      ,isnull([ADOS2_Mod4_E1],9) as ados2_m4e1
      ,isnull([ADOS2_Mod4_E2],9) as ados2_m4e2
      ,isnull([ADOS2_Mod4_E3],9) as ados2_m4e3

      ,999 as [ados2_m4_comtot]
      ,999 as [ados2_m4_sitot]
      ,999 as [ados2_m4_comsitot]
    ,isnull([ADOS2_Mod4_C1],999) as [ados2_m4_imagtot]
      ,999 as [ados2_m4sbritot]

      ,isnull([ADOS2_Mod4_SA_Total],-99) as [satotal]
      ,isnull([ADOS2_Mod4_RRB_Total],-99) as [rrbtotal]
      ,[ADOS2_Mod4_SARRB_Total] as [ados_total]
      ,[ADOS2_Mod4_CSS] as [adoscss]
      ,[ADOS2_Mod4_CompScore] as [scoresumm_compscore]
      ,[ADOS2_Mod4_ADOS-2_Class] as [ados2_m4_class_cat]
      ,[ADOS2_Mod4_OvrDx] as [scoresumm_overalldiag]
      
  FROM (select * from [Assessment].[ADOS2_Module4] where EntryNum=3) x
  inner join
  [Proj].[Participants] p on x.ID=p.ID
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on p.ID=ndac.src_subject_id


GO
