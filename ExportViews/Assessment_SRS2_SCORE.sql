USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_xxx]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE view [Assessment].[v_SRS2_SCORE]
as


        /*data transformation below comes from SRS-2 manual:
                  - for non-reverse coded questions, scale 1-4 gets scored as 0-3 respectively
                  - reverse coded questions, scale 1-4 gets scored as 3-0 respectively
                  - if question is unanswered, use the MEAN score for that question (must consult hard copy measure, as it is question-specific) to score it
            */

SELECT ParticipantID, interview_date, srs_version, respond, respond_detail_oth_spec,
            zzz.awr_raw, zzz.cog_raw, zzz.com_raw, zzz.mot_raw, zzz.rrb_raw, zzz.sci_raw, zzz.srs2_raw as srs2_rawscore
            ,tot.srs2_tscore, awr.awr_tscore, cog.cog_tscore, com.com_tscore, mot.mot_tscore, rrb.rrb_tscore, rrb5.rrb_dsm5_tscore, sci5.sci_dsm5_tscore
FROM

(select zz.ParticipantID
      ,CONVERT(varchar,[CDate],101) as interview_date

        ,'Adult' as srs_version
        ,4 as respond
        ,'Caregiver' as respond_detail_oth_spec

--
        ,parentreport_2+parentreport_7+parentreport_25+parentreport_32+parentreport_45+parentreport_52+parentreport_54+parentreport_56 as awr_raw
        ,parentreport_5+parentreport_10+parentreport_15+parentreport_17+parentreport_30+parentreport_40+parentreport_42+parentreport_44+parentreport_48+parentreport_58+parentreport_59+parentreport_62 as cog_raw
        ,parentreport_12+parentreport_13+parentreport_16+parentreport_18+parentreport_19+parentreport_21+parentreport_22+parentreport_26+parentreport_33+parentreport_35+parentreport_36+parentreport_37+parentreport_38+parentreport_41+parentreport_46+parentreport_47+parentreport_51+parentreport_53+parentreport_55+parentreport_57+parentreport_60+parentreport_61 as com_raw
        ,parentreport_1+parentreport_3+parentreport_6+parentreport_9+parentreport_11+parentreport_23+parentreport_27+parentreport_34+parentreport_43+parentreport_64+parentreport_65 as mot_raw
        ,parentreport_4+parentreport_8+parentreport_14+parentreport_20+parentreport_24+parentreport_28+parentreport_29+parentreport_31+parentreport_39+parentreport_49+parentreport_50+parentreport_63 as rrb_raw

        ,parentreport_2+parentreport_7+parentreport_25+parentreport_32+parentreport_45+parentreport_52+parentreport_54+parentreport_56+
        parentreport_5+parentreport_10+parentreport_15+parentreport_17+parentreport_30+parentreport_40+parentreport_42+parentreport_44+parentreport_48+parentreport_58+parentreport_59+parentreport_62+
        parentreport_12+parentreport_13+parentreport_16+parentreport_18+parentreport_19+parentreport_21+parentreport_22+parentreport_26+parentreport_33+parentreport_35+parentreport_36+parentreport_37+parentreport_38+parentreport_41+parentreport_46+parentreport_47+parentreport_51+parentreport_53+parentreport_55+parentreport_57+parentreport_60+parentreport_61+
        parentreport_1+parentreport_3+parentreport_6+parentreport_9+parentreport_11+parentreport_23+parentreport_27+parentreport_34+parentreport_43+parentreport_64+parentreport_65 as sci_raw

        ,parentreport_2+parentreport_7+parentreport_25+parentreport_32+parentreport_45+parentreport_52+parentreport_54+parentreport_56+
        parentreport_5+parentreport_10+parentreport_15+parentreport_17+parentreport_30+parentreport_40+parentreport_42+parentreport_44+parentreport_48+parentreport_58+parentreport_59+parentreport_62+
        parentreport_12+parentreport_13+parentreport_16+parentreport_18+parentreport_19+parentreport_21+parentreport_22+parentreport_26+parentreport_33+parentreport_35+parentreport_36+parentreport_37+parentreport_38+parentreport_41+parentreport_46+parentreport_47+parentreport_51+parentreport_53+parentreport_55+parentreport_57+parentreport_60+parentreport_61+
        parentreport_1+parentreport_3+parentreport_6+parentreport_9+parentreport_11+parentreport_23+parentreport_27+parentreport_34+parentreport_43+parentreport_64+parentreport_65+
        parentreport_4+parentreport_8+parentreport_14+parentreport_20+parentreport_24+parentreport_28+parentreport_29+parentreport_31+parentreport_39+parentreport_49+parentreport_50+parentreport_63 as srs2_raw
        /*
        ,-9 as awr_tscore
        ,-9 as cog_tscore
        ,-9 as com_tscore
        ,-9 as mot_tscore
        ,-9 as rrb_tscore
        ,'N/A' as phenotype
        */

        from

        (
        select x.ParticipantID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate
      ,case when isnull([Q001],-999) = -999 then 1 else [Q001]-1 end as parentreport_1
      ,case when isnull([Q002],-999) = -999 then 0 else [Q002]-1 end as parentreport_2
      ,case when isnull([Q003],-999) = -999 then 1 else 4-[Q003] end as parentreport_3
      ,case when isnull([Q004],-999) = -999 then 0 else [Q004]-1 end as parentreport_4
      ,case when isnull([Q005],-999) = -999 then 0 else [Q005]-1 end as parentreport_5
      ,case when isnull([Q006],-999) = -999 then 1 else [Q006]-1 end as parentreport_6
      ,case when isnull([Q007],-999) = -999 then 0 else 4-[Q007] end as parentreport_7
      ,case when isnull([Q008],-999) = -999 then 0 else [Q008]-1 end as parentreport_8
      ,case when isnull([Q009],-999) = -999 then 0 else [Q009]-1 end as parentreport_9
      ,case when isnull([Q010],-999) = -999 then 0 else [Q010]-1 end as parentreport_10
      ,case when isnull([Q011],-999) = -999 then 1 else 4-[Q011] end as parentreport_11
      ,case when isnull([Q012],-999) = -999 then 1 else 4-[Q012] end as parentreport_12
      ,case when isnull([Q013],-999) = -999 then 0 else [Q013]-1 end as parentreport_13
      ,case when isnull([Q014],-999) = -999 then 0 else [Q014]-1 end as parentreport_14
      ,case when isnull([Q015],-999) = -999 then 1 else 4-[Q015] end as parentreport_15
      ,case when isnull([Q016],-999) = -999 then 0 else [Q016]-1 end as parentreport_16
      ,case when isnull([Q017],-999) = -999 then 0 else 4-[Q017] end as parentreport_17
      ,case when isnull([Q018],-999) = -999 then 0 else [Q018]-1 end as parentreport_18
      ,case when isnull([Q019],-999) = -999 then 1 else [Q019]-1 end as parentreport_19
      ,case when isnull([Q020],-999) = -999 then 0 else [Q020]-1 end as parentreport_20
      ,case when isnull([Q021],-999) = -999 then 1 else 4-[Q021] end as parentreport_21
      ,case when isnull([Q022],-999) = -999 then 0 else 4-[Q022] end as parentreport_22
      ,case when isnull([Q023],-999) = -999 then 0 else [Q023]-1 end as parentreport_23
      ,case when isnull([Q024],-999) = -999 then 0 else [Q024]-1 end as parentreport_24
      ,case when isnull([Q025],-999) = -999 then 1 else [Q025]-1 end as parentreport_25
      ,case when isnull([Q026],-999) = -999 then 1 else 4-[Q026] end as parentreport_26
      ,case when isnull([Q027],-999) = -999 then 0 else [Q027]-1 end as parentreport_27
      ,case when isnull([Q028],-999) = -999 then 0 else [Q028]-1 end as parentreport_28
      ,case when isnull([Q029],-999) = -999 then 0 else [Q029]-1 end as parentreport_29
      ,case when isnull([Q030],-999) = -999 then 0 else [Q030]-1 end as parentreport_30
      ,case when isnull([Q031],-999) = -999 then 1 else [Q031]-1 end as parentreport_31
      ,case when isnull([Q032],-999) = -999 then 0 else 4-[Q032] end as parentreport_32
      ,case when isnull([Q033],-999) = -999 then 0 else [Q033]-1 end as parentreport_33
      ,case when isnull([Q034],-999) = -999 then 0 else [Q034]-1 end as parentreport_34
      ,case when isnull([Q035],-999) = -999 then 0 else [Q035]-1 end as parentreport_35
      ,case when isnull([Q036],-999) = -999 then 0 else [Q036]-1 end as parentreport_36
      ,case when isnull([Q037],-999) = -999 then 0 else [Q037]-1 end as parentreport_37
      ,case when isnull([Q038],-999) = -999 then 1 else 4-[Q038] end as parentreport_38
      ,case when isnull([Q039],-999) = -999 then 0 else [Q039]-1 end as parentreport_39
      ,case when isnull([Q040],-999) = -999 then 1 else 4-[Q040] end as parentreport_40
      ,case when isnull([Q041],-999) = -999 then 0 else [Q041]-1 end as parentreport_41
      ,case when isnull([Q042],-999) = -999 then 0 else [Q042]-1 end as parentreport_42
      ,case when isnull([Q043],-999) = -999 then 1 else 4-[Q043] end as parentreport_43
      ,case when isnull([Q044],-999) = -999 then 0 else [Q044]-1 end as parentreport_44
      ,case when isnull([Q045],-999) = -999 then 1 else 4-[Q045] end as parentreport_45
      ,case when isnull([Q046],-999) = -999 then 0 else [Q046]-1 end as parentreport_46
      ,case when isnull([Q047],-999) = -999 then 0 else [Q047]-1 end as parentreport_47
      ,case when isnull([Q048],-999) = -999 then 0 else 4-[Q048] end as parentreport_48
      ,case when isnull([Q049],-999) = -999 then 0 else [Q049]-1 end as parentreport_49
      ,case when isnull([Q050],-999) = -999 then 0 else [Q050]-1 end as parentreport_50
      ,case when isnull([Q051],-999) = -999 then 0 else [Q051]-1 end as parentreport_51
      ,case when isnull([Q052],-999) = -999 then 1 else 4-[Q052] end as parentreport_52
      ,case when isnull([Q053],-999) = -999 then 0 else [Q053]-1 end as parentreport_53
      ,case when isnull([Q054],-999) = -999 then 0 else [Q054]-1 end as parentreport_54
      ,case when isnull([Q055],-999) = -999 then 1 else 4-[Q055] end as parentreport_55
      ,case when isnull([Q056],-999) = -999 then 0 else [Q056]-1 end as parentreport_56
      ,case when isnull([Q057],-999) = -999 then 0 else [Q057]-1 end as parentreport_57
      ,case when isnull([Q058],-999) = -999 then 0 else [Q058]-1 end as parentreport_58
      ,case when isnull([Q059],-999) = -999 then 0 else [Q059]-1 end as parentreport_59
      ,case when isnull([Q060],-999) = -999 then 0 else [Q060]-1 end as parentreport_60
      ,case when isnull([Q061],-999) = -999 then 0 else [Q061]-1 end as parentreport_61
      ,case when isnull([Q062],-999) = -999 then 0 else [Q062]-1 end as parentreport_62
      ,case when isnull([Q063],-999) = -999 then 0 else [Q063]-1 end as parentreport_63
      ,case when isnull([Q064],-999) = -999 then 0 else [Q064]-1 end as parentreport_64
      ,case when isnull([Q065],-999) = -999 then 0 else [Q065]-1 end as parentreport_65

        from Assessment.SRS_2_CG x inner join Proj.Participants p on x.ParticipantID=p.ParticipantID
            left outer join NDA.ExcludeFromAnalysis e on p.ScreeningID=e.ScreeningID

            where e.ScreeningID is null

        ) zz
) zzz
left outer join FK.SRS_ConvTbl_total tot on zzz.srs2_raw=tot.srs2_raw
left outer join FK.SRS_ConvTbl_awr awr on zzz.awr_raw=awr.awr_raw
left outer join FK.SRS_ConvTbl_cog cog on zzz.cog_raw=cog.cog_raw
left outer join FK.SRS_ConvTbl_com com on zzz.com_raw=com.com_raw
left outer join FK.SRS_ConvTbl_mot mot on zzz.mot_raw=mot.mot_raw
left outer join FK.SRS_ConvTbl_rrb rrb on zzz.rrb_raw=rrb.rrb_raw
left outer join FK.SRS_ConvTbl_rrb_dsm5 rrb5 on zzz.rrb_raw=rrb5.rrb_dsm5_raw
left outer join FK.SRS_ConvTbl_sci_dsm5 sci5 on zzz.sci_raw=sci5.sci_dsm5_raw

GO