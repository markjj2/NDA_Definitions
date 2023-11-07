USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_INQ]    Script Date: 11/7/2023 1:33:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE view [NDA].[v_Export_INQ]
as

select nda.GUID as SubjectKey
,x.ID as src_subject_id
,convert(varchar(10),x.CDATE,101) as interview_date
,nda.udf_NDA_InterviewAgeMonths(d.DOB, x.CDATE) as interview_age
,NDA_Sex as sex
-- jjm note 2019-12-17: codes do not match NDA coding, so adjustment made
      ,[Q1] - 1 as inq15_1
      ,[Q2] - 1 as inq15_2
      ,[Q3] - 1 as inq15_3
      ,[Q4] - 1 as inq15_4
      ,[Q5] - 1 as inq15_5
      ,[Q6] - 1 as inq15_6
      ,[Q7] - 1 as inq15_7
      ,[Q8] - 1 as inq15_8
      ,[Q9] - 1 as inq15_9
      ,[Q10] - 1 as inq15_10
      ,[Q11] - 1 as inq15_11
      ,[Q12] - 1 as inq15_12
      ,[Q13] - 1 as inq15_13
      ,[Q14] - 1 as inq15_14
      ,[Q15] - 1 as inq15_15
from

Assessment.INQ x
left outer join DEAR.NDA_GUID nda on x.ID=nda.ID
left outer join (select ID, [Description] as NDA_Sex from DEAR.SubjectInfo s inner join FK.GUID_Sex sx on s.GUIDGender=sx.Code) as sex on x.ID=sex.ID
left outer join (select * from Assessment.DEMO where VISIT=1 and EntryNum=3) d on x.ID=d.ID
where 
nda.[GUID] is not null -- GUID is required to validate
and 
(d.DOB is not null) and (x.CDATE is not null) -- interview_age is required to validate
GO


