USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_xxx]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


  /*
                              created 2023-09-19 - markjj2
                              
                              NDA structure shortname: bi60item01
  */

CREATE view [NDA].[v_Export_BFI]
as


SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[ADate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, x.ADate) as interview_age
        , ndac.gender as sex

      ,case when [BFI1] = -999 then null else [BFI1] end as bfi2_1_1
      ,case when [BFI2] = -999 then null else [BFI2] end as bfi2_1_2
      ,case when [BFI3] = -999 then null else [BFI3] end as bfi2_1_3
      ,case when [BFI4] = -999 then null else [BFI4] end as bfi2_1_4
      ,case when [BFI5] = -999 then null else [BFI5] end as bfi2_1_5
      ,case when [BFI6] = -999 then null else [BFI6] end as bfi2_1_6
      ,case when [BFI7] = -999 then null else [BFI7] end as bfi2_1_7
      ,case when [BFI8] = -999 then null else [BFI8] end as bfi2_1_8
      ,case when [BFI9] = -999 then null else [BFI9] end as bfi2_1_9
      ,case when [BFI10] = -999 then null else [BFI10] end as bfi2_1_10
      ,case when [BFI11] = -999 then null else [BFI11] end as bfi2_2_11
      ,case when [BFI12] = -999 then null else [BFI12] end as bfi2_2_12
      ,case when [BFI13] = -999 then null else [BFI13] end as bfi2_2_13
      ,case when [BFI14] = -999 then null else [BFI14] end as bfi2_2_14
      ,case when [BFI15] = -999 then null else [BFI15] end as bfi2_2_15
      ,case when [BFI16] = -999 then null else [BFI16] end as bfi2_2_16
      ,case when [BFI17] = -999 then null else [BFI17] end as bfi2_2_17
      ,case when [BFI18] = -999 then null else [BFI18] end as bfi2_2_18
      ,case when [BFI19] = -999 then null else [BFI19] end as bfi2_2_19
      ,case when [BFI20] = -999 then null else [BFI20] end as bfi2_2_20
      ,case when [BFI21] = -999 then null else [BFI21] end as bfi2_3_21
      ,case when [BFI22] = -999 then null else [BFI22] end as bfi2_3_22
      ,case when [BFI23] = -999 then null else [BFI23] end as bfi2_3_23
      ,case when [BFI24] = -999 then null else [BFI24] end as bfi2_3_24
      ,case when [BFI25] = -999 then null else [BFI25] end as bfi2_3_25
      ,case when [BFI26] = -999 then null else [BFI26] end as bfi2_3_26
      ,case when [BFI27] = -999 then null else [BFI27] end as bfi2_3_27
      ,case when [BFI28] = -999 then null else [BFI28] end as bfi2_3_28
      ,case when [BFI29] = -999 then null else [BFI29] end as bfi2_3_29
      ,case when [BFI30] = -999 then null else [BFI30] end as bfi2_3_30
      ,case when [BFI31] = -999 then null else [BFI31] end as bfi2_4_31
      ,case when [BFI32] = -999 then null else [BFI32] end as bfi2_4_32
      ,case when [BFI33] = -999 then null else [BFI33] end as bfi2_4_33
      ,case when [BFI34] = -999 then null else [BFI34] end as bfi2_4_34
      ,case when [BFI35] = -999 then null else [BFI35] end as bfi2_4_35
      ,case when [BFI36] = -999 then null else [BFI36] end as bfi2_4_36
      ,case when [BFI37] = -999 then null else [BFI37] end as bfi2_4_37
      ,case when [BFI38] = -999 then null else [BFI38] end as bfi2_4_38
      ,case when [BFI39] = -999 then null else [BFI39] end as bfi2_4_39
      ,case when [BFI40] = -999 then null else [BFI40] end as bfi2_4_40
      ,case when [BFI41] = -999 then null else [BFI41] end as bfi2_5_41
      ,case when [BFI42] = -999 then null else [BFI42] end as bfi2_5_42
      ,case when [BFI43] = -999 then null else [BFI43] end as bfi2_5_43
      ,case when [BFI44] = -999 then null else [BFI44] end as bfi2_5_44
      ,case when [BFI45] = -999 then null else [BFI45] end as bfi2_5_45
      ,case when [BFI46] = -999 then null else [BFI46] end as bfi2_5_46
      ,case when [BFI47] = -999 then null else [BFI47] end as bfi2_5_47
      ,case when [BFI48] = -999 then null else [BFI48] end as bfi2_5_48
      ,case when [BFI49] = -999 then null else [BFI49] end as bfi2_5_49
      ,case when [BFI50] = -999 then null else [BFI50] end as bfi2_5_50
      ,case when [BFI51] = -999 then null else [BFI51] end as bfi2_6_51
      ,case when [BFI52] = -999 then null else [BFI52] end as bfi2_6_52
      ,case when [BFI53] = -999 then null else [BFI53] end as bfi2_6_53
      ,case when [BFI54] = -999 then null else [BFI54] end as bfi2_6_54
      ,case when [BFI55] = -999 then null else [BFI55] end as bfi2_6_55
      ,case when [BFI56] = -999 then null else [BFI56] end as bfi2_6_56
      ,case when [BFI57] = -999 then null else [BFI57] end as bfi2_6_57
      ,case when [BFI58] = -999 then null else [BFI58] end as bfi2_6_58
      ,case when [BFI59] = -999 then null else [BFI59] end as bfi2_6_59
      ,case when [BFI60] = -999 then null else [BFI60] end as bfi2_6_60

      
  FROM [Assessment].[BFI] x
  inner join
  [Proj].[Participants] p on x.ID=p.ID
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on p.ID=ndac.src_subject_id


GO

