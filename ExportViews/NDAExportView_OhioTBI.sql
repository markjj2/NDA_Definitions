USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[V_Export_OhioTBI]    Script Date: 11/7/2023 1:34:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [NDA].[V_Export_OhioTBI]
AS

--markjj2 Note 12/31/2019: Field size of 'cause of concussion' fields continues to be problematic.  NDA limits to 20, while SQL table accepts up to 50 characters.
--          All other issues with validation of this measure have been resolved

SELECT NDA.GUID as subjectkey
,x.ID as src_subject_id
,convert(varchar(10),x.CDATE,101) as interview_date
,NDA.udf_NDA_InterviewAgeMonths(d.DOB, x.CDATE) as interview_age
--, CASE WHEN DAY(x.CDATE)>=DAY(d.DOB)THEN DATEDIFF(mm,d.DOB,x.CDATE) WHEN DAY(x.CDATE)< DAY(d.DOB)THEN DATEDIFF(mm,d.DOB,x.CDATE)-1 ELSE NULL END  as ViewCalcAge
, NDA_Sex as sex
, x.ohio_tbi01
, x.ohio_tbi02
, x.ohio_tbi03
, x.ohio_tbi04
, x.ohio_tbi05
, left(x.ohio_tbi06a,20) as ohio_tbi06a -- temporarily limited to 20 characters per NDA definition for validation testing; awaiting decision from Dr. Scott whether to change field length in the table to match
, x.ohio_tbi06b
, x.ohio_tbi06c
, x.ohio_tbi06d
, left(x.ohio_tbi07a,20) as ohio_tbi07a -- temporarily limited to 20 characters per NDA definition for validation testing; awaiting decision from Dr. Scott whether to change field length in the table to match
, x.ohio_tbi07b
, x.ohio_tbi07c
, x.ohio_tbi07d
, left(x.ohio_tbi08a,20) as ohio_tbi08a -- temporarily limited to 20 characters per NDA definition for validation testing; awaiting decision from Dr. Scott whether to change field length in the table to match
, x.ohio_tbi08b
, x.ohio_tbi08c
, x.ohio_tbi08d
, left(x.ohio_tbi09a,20) as ohio_tbi09a -- temporarily limited to 20 characters per NDA definition for validation testing; awaiting decision from Dr. Scott whether to change field length in the table to match
, x.ohio_tbi09b
, x.ohio_tbi09c
, x.ohio_tbi09d
, x.ohio_tbi10b as ohio_tbi10a -- recoded to match NDA's messed up data structure 12/20/2019 - markjj2
, x.ohio_tbi10c as ohio_tbi10b -- recoded to match NDA's messed up data structure 12/20/2019 - markjj2
, x.ohio_tbi10d as ohio_tbi10c -- recoded to match NDA's messed up data structure 12/20/2019 - markjj2
, left(x.ohio_tbi11a,20) as ohio_tbi10d -- recoded to match NDA's messed up data structure 12/20/2019 - markjj2 -- temporarily limited to 20 characters per NDA definition for validation testing; awaiting decision from Dr. Scott whether to change field length in the table to match
, x.ohio_tbi11b as ohio_tbi11a -- recoded to match NDA's messed up data structure 12/20/2019 - markjj2
, x.ohio_tbi11c as ohio_tbi11b -- recoded to match NDA's messed up data structure 12/20/2019 - markjj2
, x.ohio_tbi11d as ohio_tbi11c -- recoded to match NDA's messed up data structure 12/20/2019 - markjj2
, x.ohio_tbi12a
, x.ohio_tbi12b -- note: NDA definition lists this as a String(15) field, which is not correct.  We should submit the code to match the analogous fields earlier in the measure.
, x.ohio_tbi12c
, x.ohio_tbi12d
, x.overdose
, x.odNum
, x.chokenum

FROM

Assessment.OhioTBI x
left outer join DEAR.NDA_GUID NDA on x.ID=NDA.ID
left outer join (select ID, [Description] as NDA_Sex from DEAR.SubjectInfo s inner join FK.GUID_Sex sx on s.GUIDGender=sx.Code) as sex on x.ID=sex.ID
left outer join (SELECT * FROM Assessment.DEMO WHERE VISIT = 1 AND ENTRYNUM = 3) d on x.ID=d.ID 

WHERE 
x.EntryNum = 3 -- verified records only
and
NDA.GUID is not null -- GUID is required to validate
and 
(d.DOB is not null) and (x.CDATE is not null) -- interview_age is required to validate
GO


