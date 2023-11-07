USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_UPPS_P_S]    Script Date: 11/7/2023 12:43:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE view [NDA].[v_Export_UPPS_P_S]
as

/*	NDA shortname: upps01
*/

select nda.GUID as SubjectKey
,x.ID as src_subject_id
,convert(varchar(10),x.CDATE,101) as interview_date
,nda.udf_NDA_InterviewAgeMonths(d.DOB, x.CDATE) as interview_age
,NDA_Sex as sex

      ,[Q1] as upps_p_s_1
      ,[Q2] as upps_p_s_2
      ,[Q3] as upps_p_s_3
      ,[Q4] as upps_p_s_4
      ,[Q5] as upps_p_s_5
      ,[Q6] as upps_p_s_6
      ,[Q7] as upps_p_s_7
      ,[Q8] as upps_p_s_8
      ,[Q9] as upps_p_s_9
      ,[Q10] as upps_p_s_10
      ,[Q11] as upps_p_s_11
      ,[Q12] as upps_p_s_12
      ,[Q13] as upps_p_s_13
      ,[Q14] as upps_p_s_14
      ,[Q15] as upps_p_s_15
      ,[Q16] as upps_p_s_16
      ,[Q17] as upps_p_s_17
      ,[Q18] as upps_p_s_18
      ,[Q19] as upps_p_s_19
      ,[Q20] as upps_p_s_20
	  
from

Assessment.UPPS_P_S x
left outer join DEAR.NDA_GUID nda on x.ID=nda.ID
left outer join (select ID, [Description] as NDA_Sex from DEAR.SubjectInfo s inner join FK.GUID_Sex sx on s.GUIDGender=sx.Code) as sex on x.ID=sex.ID
left outer join (select * from Assessment.DEMO where VISIT=1 and EntryNum=3) d on x.ID=d.ID
where 
nda.[GUID] is not null -- GUID is required to validate
and 
(d.DOB is not null) and (x.CDATE is not null) -- interview_age is required to validate
GO
