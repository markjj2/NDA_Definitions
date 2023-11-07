USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_CTQ]    Script Date: 11/7/2023 1:22:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE view [NDA].[v_Export_CTQ]
as

select nda.GUID as SubjectKey
,x.ID as src_subject_id
,convert(varchar(10),x.CDATE,101) as interview_date
,nda.udf_NDA_InterviewAgeMonths(d.DOB, x.CDATE) as interview_age
,NDA_Sex as sex
,x.CTQ01 as ctq_01
,x.CTQ02 as ctq_02
,x.CTQ03 as ctq_03
,x.CTQ04 as ctq_04
,x.CTQ05 as ctq_05
,x.CTQ06 as ctq_06
,x.CTQ07 as ctq_07
,x.CTQ08 as ctq_08
,x.CTQ09 as ctq_09
,x.CTQ10 as ctq_10
,x.CTQ11 as ctq_11
,x.CTQ12 as ctq_12
,x.CTQ13 as ctq_13
,x.CTQ14 as ctq_14
,x.CTQ15 as ctq_15
,x.CTQ16 as ctq_16
,x.CTQ17 as ctq_17
,x.CTQ18 as ctq_18
,x.CTQ19 as ctq_19
,x.CTQ20 as ctq_20
,x.CTQ21 as ctq_21
,x.CTQ22 as ctq_22
,x.CTQ23 as ctq_23
,x.CTQ24 as ctq_24
,x.CTQ25 as ctq_25
,x.CTQ26 as ctq_26
,x.CTQ27 as ctq_27
,x.CTQ28 as ctq_28

from

Assessment.CTQ x
left outer join DEAR.NDA_GUID nda on x.ID=nda.ID
left outer join (select ID, [Description] as NDA_Sex from DEAR.SubjectInfo s inner join FK.GUID_Sex sx on s.GUIDGender=sx.Code) as sex on x.ID=sex.ID
left outer join (select * from Assessment.DEMO where VISIT=1 and EntryNum=3) d on x.ID=d.ID
where 
nda.[GUID] is not null -- GUID is required to validate
and 
(d.DOB is not null) and (x.CDATE is not null) -- interview_age is required to validate
GO


