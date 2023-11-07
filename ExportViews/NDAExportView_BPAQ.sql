USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_xxx]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



/*2023-06-21 - markjj2 */

/* NDA structure name: bpaq01 */

CREATE view [NDA].[v_Export_BPAQ]
as


  /*Self-report data*/

SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[ADate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, ADate) as interview_age
        , ndac.gender as sex

      ,[BPAQ_01] as bpaq_1
      ,[BPAQ_02] as bpaq_2
      ,[BPAQ_03] as bpaq_3
      ,[BPAQ_04] as bpaq_4
      ,[BPAQ_05] as bpaq_5
      ,[BPAQ_06] as bpaq_6
      ,[BPAQ_07] as bpaq_7
      ,[BPAQ_08] as bpaq_8
      ,[BPAQ_09] as bpaq_9
      ,[BPAQ_010] as bpaq_10
      ,[BPAQ_011] as bpaq_11
      ,[BPAQ_012] as bpaq_12
      ,[BPAQ_013] as bpaq_13
      ,[BPAQ_014] as bpaq_14
      ,[BPAQ_015] as bpaq_15
      ,[BPAQ_016] as bpaq_16
      ,[BPAQ_017] as bpaq_17
      ,[BPAQ_018] as bpaq_18
      ,[BPAQ_019] as bpaq_19
      ,[BPAQ_020] as bpaq_20
      ,[BPAQ_021] as bpaq_21
      ,[BPAQ_022] as bpaq_22
      ,[BPAQ_023] as bpaq_23
      ,[BPAQ_024] as bpaq_24
      ,[BPAQ_025] as bpaq_25
      ,[BPAQ_026] as bpaq_26
      ,[BPAQ_027] as bpaq_27
      ,[BPAQ_028] as bpaq_28
      ,[BPAQ_029] as bpaq_29

        from

  [Assessment].[BPAQ] x
  inner join
  [Proj].[Participants] p on x.ID=p.ID
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on x.ID=ndac.src_subject_id
 