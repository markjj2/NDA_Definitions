USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_ARSQ]    Script Date: 11/7/2023 1:36:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE view [NDA].[v_Export_ARSQ]
as

select nda.GUID as SubjectKey
,x.ID as src_subject_id
,convert(varchar(10),x.CDATE,101) as interview_date
,nda.udf_NDA_InterviewAgeMonths(d.DOB, x.CDATE) as interview_age
,NDA_Sex as sex
,'A-RSQ' as version_form
,'Other' as respondent
,cast(ss.Total_Rejection_Sensitivity_Score as decimal(6,3)) as rs_score
      ,[EN11871] as arsq_001
      ,[EN11872] as arsq_001a
      ,[EN11873] as arsq_002
      ,[EN11874] as arsq_002a
      ,[EN11875] as arsq_003
      ,[EN11876] as arsq_003a
      ,[EN11877] as arsq_004
      ,[EN11878] as arsq_004a
      ,[EN11879] as arsq_005
      ,[EN11880] as arsq_005a
      ,[EN11881] as arsq_006
      ,[EN11882] as arsq_006a
      ,[EN11883] as arsq_007
      ,[EN11884] as arsq_007a
      ,[EN11885] as arsq_008
      ,[EN11886] as arsq_008a
      ,[EN11887] as arsq_009
      ,[EN11888] as arsq_009a


from

Assessment.ARSQ x
left outer join DEAR.NDA_GUID nda on x.ID=nda.ID
left outer join (select * from Assessment.DEMO where VISIT=1 and EntryNum=3) d on x.ID=d.ID
left outer join (select ID, [Description] as NDA_Sex from DEAR.SubjectInfo s inner join FK.GUID_Sex sx on s.GUIDGender=sx.Code) as sex on x.ID=sex.ID
left outer join NDA.ss_ARSQ ss on x.ID=ss.src_subject_id and x.CDATE=ss.interview_date
where 
nda.[GUID] is not null -- GUID is required to validate
and 
(d.DOB is not null) and (x.CDATE is not null) -- interview_age is required to validate

GO


