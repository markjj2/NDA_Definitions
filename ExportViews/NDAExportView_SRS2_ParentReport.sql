USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_xxx]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*NOTE: Assessment.v_SRS2_SCORE required (can be found in the Git repository)*/


/* NDA structure name: srs201 */


CREATE view [NDA].[v_Export_SRS]
as

select x.subjectkey, src_subject_id, interview_date, interview_age, sex, srs_version, respond, respond_detail_oth_spec

        ,parentreport_1
        ,parentreport_2
        ,parentreport_3
        ,parentreport_4
        ,parentreport_5
        ,parentreport_6
        ,parentreport_7
        ,parentreport_8
        ,parentreport_9
        ,parentreport_10
        ,parentreport_11
        ,parentreport_12
        ,parentreport_13
        ,parentreport_14
        ,parentreport_15
        ,parentreport_16
        ,parentreport_17
        ,parentreport_18
        ,parentreport_19
        ,parentreport_20
        ,parentreport_21
        ,parentreport_22
        ,parentreport_23
        ,parentreport_24
        ,parentreport_25
        ,parentreport_26
        ,parentreport_27
        ,parentreport_28
        ,parentreport_29
        ,parentreport_30
        ,parentreport_31
        ,parentreport_32
        ,parentreport_33
        ,parentreport_34
        ,parentreport_35
        ,parentreport_36
        ,parentreport_37
        ,parentreport_38
        ,parentreport_39
        ,parentreport_40
        ,parentreport_41
        ,parentreport_42
        ,parentreport_43
        ,parentreport_44
        ,parentreport_45
        ,parentreport_46
        ,parentreport_47
        ,parentreport_48
        ,parentreport_49
        ,parentreport_50
        ,parentreport_51
        ,parentreport_52
        ,parentreport_53
        ,parentreport_54
        ,parentreport_55
        ,parentreport_56
        ,parentreport_57
        ,parentreport_58
        ,parentreport_59
        ,parentreport_60
        ,parentreport_61
        ,parentreport_62
        ,parentreport_63
        ,parentreport_64
        ,parentreport_65

        ,awr_raw
        ,cog_raw
        ,com_raw
        ,mot_raw
        ,rrb_raw
        ,awr_tscore
        ,cog_tscore
        ,com_tscore
        ,mot_tscore
        ,rrb_tscore
        ,sci_rawscore
        ,srs2_rawscore
        ,srs2_tscore
        ,cs_tscore_dsm5_sci
        ,cs_tscore_dsm5_rrb
        ,phenotype

from

(

/*SRS-2 - Caregiver version*/

SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, a.CDate) as interview_age
        , ndac.gender as sex

        ,'Adult' as srs_version
        ,4 as respond
        ,'Caregiver' as respond_detail_oth_spec

        ,parentreport_1
        ,parentreport_2
        ,parentreport_3
        ,parentreport_4
        ,parentreport_5
        ,parentreport_6
        ,parentreport_7
        ,parentreport_8
        ,parentreport_9
        ,parentreport_10
        ,parentreport_11
        ,parentreport_12
        ,parentreport_13
        ,parentreport_14
        ,parentreport_15
        ,parentreport_16
        ,parentreport_17
        ,parentreport_18
        ,parentreport_19
        ,parentreport_20
        ,parentreport_21
        ,parentreport_22
        ,parentreport_23
        ,parentreport_24
        ,parentreport_25
        ,parentreport_26
        ,parentreport_27
        ,parentreport_28
        ,parentreport_29
        ,parentreport_30
        ,parentreport_31
        ,parentreport_32
        ,parentreport_33
        ,parentreport_34
        ,parentreport_35
        ,parentreport_36
        ,parentreport_37
        ,parentreport_38
        ,parentreport_39
        ,parentreport_40
        ,parentreport_41
        ,parentreport_42
        ,parentreport_43
        ,parentreport_44
        ,parentreport_45
        ,parentreport_46
        ,parentreport_47
        ,parentreport_48
        ,parentreport_49
        ,parentreport_50
        ,parentreport_51
        ,parentreport_52
        ,parentreport_53
        ,parentreport_54
        ,parentreport_55
        ,parentreport_56
        ,parentreport_57
        ,parentreport_58
        ,parentreport_59
        ,parentreport_60
        ,parentreport_61
        ,parentreport_62
        ,parentreport_63
        ,parentreport_64
        ,parentreport_65

        ,score.awr_raw
        ,score.cog_raw
        ,score.com_raw
        ,score.mot_raw
        ,score.rrb_raw
        ,score.awr_tscore
        ,score.cog_tscore
        ,score.com_tscore
        ,score.mot_tscore
        ,score.rrb_tscore
        ,score.sci_raw as sci_rawscore
        ,score.srs2_rawscore
        ,score.srs2_tscore
        ,score.sci_dsm5_tscore as cs_tscore_dsm5_sci
        ,score.rrb_dsm5_tscore as cs_tscore_dsm5_rrb
        ,'N/A' as phenotype


        from

        (select x.ParticipantID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate
      ,[Q001] as parentreport_1
      ,[Q002] as parentreport_2
      ,[Q003] as parentreport_3
      ,[Q004] as parentreport_4
      ,[Q005] as parentreport_5
      ,[Q006] as parentreport_6
      ,[Q007] as parentreport_7
      ,[Q008] as parentreport_8
      ,[Q009] as parentreport_9
      ,[Q010] as parentreport_10
      ,[Q011] as parentreport_11
      ,[Q012] as parentreport_12
      ,[Q013] as parentreport_13
      ,[Q014] as parentreport_14
      ,[Q015] as parentreport_15
      ,[Q016] as parentreport_16
      ,[Q017] as parentreport_17
      ,[Q018] as parentreport_18
      ,[Q019] as parentreport_19
      ,[Q020] as parentreport_20
      ,[Q021] as parentreport_21
      ,[Q022] as parentreport_22
      ,[Q023] as parentreport_23
      ,[Q024] as parentreport_24
      ,[Q025] as parentreport_25
      ,[Q026] as parentreport_26
      ,[Q027] as parentreport_27
      ,[Q028] as parentreport_28
      ,[Q029] as parentreport_29
      ,[Q030] as parentreport_30
      ,[Q031] as parentreport_31
      ,[Q032] as parentreport_32
      ,[Q033] as parentreport_33
      ,[Q034] as parentreport_34
      ,[Q035] as parentreport_35
      ,[Q036] as parentreport_36
      ,[Q037] as parentreport_37
      ,[Q038] as parentreport_38
      ,[Q039] as parentreport_39
      ,[Q040] as parentreport_40
      ,[Q041] as parentreport_41
      ,[Q042] as parentreport_42
      ,[Q043] as parentreport_43
      ,[Q044] as parentreport_44
      ,[Q045] as parentreport_45
      ,[Q046] as parentreport_46
      ,[Q047] as parentreport_47
      ,[Q048] as parentreport_48
      ,[Q049] as parentreport_49
      ,[Q050] as parentreport_50
      ,[Q051] as parentreport_51
      ,[Q052] as parentreport_52
      ,[Q053] as parentreport_53
      ,[Q054] as parentreport_54
      ,[Q055] as parentreport_55
      ,[Q056] as parentreport_56
      ,[Q057] as parentreport_57
      ,[Q058] as parentreport_58
      ,[Q059] as parentreport_59
      ,[Q060] as parentreport_60
      ,[Q061] as parentreport_61
      ,[Q062] as parentreport_62
      ,[Q063] as parentreport_63
      ,[Q064] as parentreport_64
      ,[Q065] as parentreport_65

    
  FROM [Assessment].[SRS_2_CG] x
  inner join
  [Proj].[Participants] p on x.ParticipantID=p.ParticipantID) as a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id
  inner join Assessment.V_SRS2_SCORE score on a.ParticipantID=score.ParticipantID) x
