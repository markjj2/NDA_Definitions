USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_xxx]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/*2023-06-16 - markjj2 - adapted from AFS version of the export view (i.e., has ScreeningID converted to string for eventual combination with SPARK imported data)*/


/* NDA structure name: srs_adult03 */


CREATE view [NDA].[v_Export_SRS_2_Self]
as


select subjectkey, src_subject_id, interview_date, interview_age, sex

      ,respond
      ,respond_detail
      ,phenotype

        ,srs_2005_adultresearch_1
        ,srs_2005_adultresearch_2
        ,srs_2005_adultresearch_3
        ,srs_2005_adultresearch_4
        ,srs_2005_adultresearch_5
        ,srs_2005_adultresearch_6
        ,srs_2005_adultresearch_7
        ,srs_2005_adultresearch_8
        ,srs_2005_adultresearch_9
        ,srs_2005_adultresearch_10
        ,srs_2005_adultresearch_11
        ,srs_2005_adultresearch_12
        ,srs_2005_adultresearch_13
        ,srs_2005_adultresearch_14
        ,srs_2005_adultresearch_15
        ,srs_2005_adultresearch_16
        ,srs_2005_adultresearch_17
        ,srs_2005_adultresearch_18
        ,srs_2005_adultresearch_19
        ,srs_2005_adultresearch_20
        ,srs_2005_adultresearch_21
        ,srs_2005_adultresearch_22
        ,srs_2005_adultresearch_23
        ,srs_2005_adultresearch_24
        ,srs_2005_adultresearch_25
        ,srs_2005_adultresearch_26
        ,srs_2005_adultresearch_27
        ,srs_2005_adultresearch_28
        ,srs_2005_adultresearch_29
        ,srs_2005_adultresearch_30
        ,srs_2005_adultresearch_31
        ,srs_2005_adultresearch_32
        ,srs_2005_adultresearch_33
        ,srs_2005_adultresearch_34
        ,srs_2005_adultresearch_35
        ,srs_2005_adultresearch_36
        ,srs_2005_adultresearch_37
        ,srs_2005_adultresearch_38
        ,srs_2005_adultresearch_39
        ,srs_2005_adultresearch_40
        ,srs_2005_adultresearch_41
        ,srs_2005_adultresearch_42
        ,srs_2005_adultresearch_43
        ,srs_2005_adultresearch_44
        ,srs_2005_adultresearch_45
        ,srs_2005_adultresearch_46
        ,srs_2005_adultresearch_47
        ,srs_2005_adultresearch_48
        ,srs_2005_adultresearch_49
        ,srs_2005_adultresearch_50
        ,srs_2005_adultresearch_51
        ,srs_2005_adultresearch_52
        ,srs_2005_adultresearch_53
        ,srs_2005_adultresearch_54
        ,srs_2005_adultresearch_55
        ,srs_2005_adultresearch_56
        ,srs_2005_adultresearch_57
        ,srs_2005_adultresearch_58
        ,srs_2005_adultresearch_59
        ,srs_2005_adultresearch_60
        ,srs_2005_adultresearch_61
        ,srs_2005_adultresearch_62
        ,srs_2005_adultresearch_63
        ,srs_2005_adultresearch_64
        ,srs_2005_adultresearch_65

from

(

/*SRS-2 - self-report version*/

SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, a.CDate) as interview_age
        , ndac.gender as sex

        ,3 as respond
        ,999 as respond_detail
        ,'N/A' as phenotype

        ,srs_2005_adultresearch_1
        ,srs_2005_adultresearch_2
        ,srs_2005_adultresearch_3
        ,srs_2005_adultresearch_4
        ,srs_2005_adultresearch_5
        ,srs_2005_adultresearch_6
        ,srs_2005_adultresearch_7
        ,srs_2005_adultresearch_8
        ,srs_2005_adultresearch_9
        ,srs_2005_adultresearch_10
        ,srs_2005_adultresearch_11
        ,srs_2005_adultresearch_12
        ,srs_2005_adultresearch_13
        ,srs_2005_adultresearch_14
        ,srs_2005_adultresearch_15
        ,srs_2005_adultresearch_16
        ,srs_2005_adultresearch_17
        ,srs_2005_adultresearch_18
        ,srs_2005_adultresearch_19
        ,srs_2005_adultresearch_20
        ,srs_2005_adultresearch_21
        ,srs_2005_adultresearch_22
        ,srs_2005_adultresearch_23
        ,srs_2005_adultresearch_24
        ,srs_2005_adultresearch_25
        ,srs_2005_adultresearch_26
        ,srs_2005_adultresearch_27
        ,srs_2005_adultresearch_28
        ,srs_2005_adultresearch_29
        ,srs_2005_adultresearch_30
        ,srs_2005_adultresearch_31
        ,srs_2005_adultresearch_32
        ,srs_2005_adultresearch_33
        ,srs_2005_adultresearch_34
        ,srs_2005_adultresearch_35
        ,srs_2005_adultresearch_36
        ,srs_2005_adultresearch_37
        ,srs_2005_adultresearch_38
        ,srs_2005_adultresearch_39
        ,srs_2005_adultresearch_40
        ,srs_2005_adultresearch_41
        ,srs_2005_adultresearch_42
        ,srs_2005_adultresearch_43
        ,srs_2005_adultresearch_44
        ,srs_2005_adultresearch_45
        ,srs_2005_adultresearch_46
        ,srs_2005_adultresearch_47
        ,srs_2005_adultresearch_48
        ,srs_2005_adultresearch_49
        ,srs_2005_adultresearch_50
        ,srs_2005_adultresearch_51
        ,srs_2005_adultresearch_52
        ,srs_2005_adultresearch_53
        ,srs_2005_adultresearch_54
        ,srs_2005_adultresearch_55
        ,srs_2005_adultresearch_56
        ,srs_2005_adultresearch_57
        ,srs_2005_adultresearch_58
        ,srs_2005_adultresearch_59
        ,srs_2005_adultresearch_60
        ,srs_2005_adultresearch_61
        ,srs_2005_adultresearch_62
        ,srs_2005_adultresearch_63
        ,srs_2005_adultresearch_64
        ,srs_2005_adultresearch_65

        from

        (select x.ParticipantID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate
      ,[Q001] as srs_2005_adultresearch_1
      ,[Q002] as srs_2005_adultresearch_2
      ,[Q003] as srs_2005_adultresearch_3
      ,[Q004] as srs_2005_adultresearch_4
      ,[Q005] as srs_2005_adultresearch_5
      ,[Q006] as srs_2005_adultresearch_6
      ,[Q007] as srs_2005_adultresearch_7
      ,[Q008] as srs_2005_adultresearch_8
      ,[Q009] as srs_2005_adultresearch_9
      ,[Q010] as srs_2005_adultresearch_10
      ,[Q011] as srs_2005_adultresearch_11
      ,[Q012] as srs_2005_adultresearch_12
      ,[Q013] as srs_2005_adultresearch_13
      ,[Q014] as srs_2005_adultresearch_14
      ,[Q015] as srs_2005_adultresearch_15
      ,[Q016] as srs_2005_adultresearch_16
      ,[Q017] as srs_2005_adultresearch_17
      ,[Q018] as srs_2005_adultresearch_18
      ,[Q019] as srs_2005_adultresearch_19
      ,[Q020] as srs_2005_adultresearch_20
      ,[Q021] as srs_2005_adultresearch_21
      ,[Q022] as srs_2005_adultresearch_22
      ,[Q023] as srs_2005_adultresearch_23
      ,[Q024] as srs_2005_adultresearch_24
      ,[Q025] as srs_2005_adultresearch_25
      ,[Q026] as srs_2005_adultresearch_26
      ,[Q027] as srs_2005_adultresearch_27
      ,[Q028] as srs_2005_adultresearch_28
      ,[Q029] as srs_2005_adultresearch_29
      ,[Q030] as srs_2005_adultresearch_30
      ,[Q031] as srs_2005_adultresearch_31
      ,[Q032] as srs_2005_adultresearch_32
      ,[Q033] as srs_2005_adultresearch_33
      ,[Q034] as srs_2005_adultresearch_34
      ,[Q035] as srs_2005_adultresearch_35
      ,[Q036] as srs_2005_adultresearch_36
      ,[Q037] as srs_2005_adultresearch_37
      ,[Q038] as srs_2005_adultresearch_38
      ,[Q039] as srs_2005_adultresearch_39
      ,[Q040] as srs_2005_adultresearch_40
      ,[Q041] as srs_2005_adultresearch_41
      ,[Q042] as srs_2005_adultresearch_42
      ,[Q043] as srs_2005_adultresearch_43
      ,[Q044] as srs_2005_adultresearch_44
      ,[Q045] as srs_2005_adultresearch_45
      ,[Q046] as srs_2005_adultresearch_46
      ,[Q047] as srs_2005_adultresearch_47
      ,[Q048] as srs_2005_adultresearch_48
      ,[Q049] as srs_2005_adultresearch_49
      ,[Q050] as srs_2005_adultresearch_50
      ,[Q051] as srs_2005_adultresearch_51
      ,[Q052] as srs_2005_adultresearch_52
      ,[Q053] as srs_2005_adultresearch_53
      ,[Q054] as srs_2005_adultresearch_54
      ,[Q055] as srs_2005_adultresearch_55
      ,[Q056] as srs_2005_adultresearch_56
      ,[Q057] as srs_2005_adultresearch_57
      ,[Q058] as srs_2005_adultresearch_58
      ,[Q059] as srs_2005_adultresearch_59
      ,[Q060] as srs_2005_adultresearch_60
      ,[Q061] as srs_2005_adultresearch_61
      ,[Q062] as srs_2005_adultresearch_62
      ,[Q063] as srs_2005_adultresearch_63
      ,[Q064] as srs_2005_adultresearch_64
      ,[Q065] as srs_2005_adultresearch_65

    
  FROM [Assessment].[SRS_2_Self] x
  inner join
  [Proj].[Participants] p on x.ParticipantID=p.ParticipantID) as a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id


  ) x
