USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_LEC]    Script Date: 11/7/2023 1:37:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE view [NDA].[v_Export_LEC]
as

select nda.GUID as SubjectKey
,x.ID as src_subject_id
,convert(varchar(10),x.CDATE,101) as interview_date
,nda.udf_NDA_InterviewAgeMonths(d.DOB, x.CDATE) as interview_age
,NDA_Sex as sex

,CASE WHEN LEC01 like '%1|%' THEN 1 ELSE 0 END as lec_1_1
,CASE WHEN LEC01 like '%2|%' THEN 1 ELSE 0 END as lec_1_2
,CASE WHEN LEC01 like '%3|%' THEN 1 ELSE 0 END as lec_1_3
,CASE WHEN LEC01 like '%4|%' THEN 1 ELSE 0 END as disasterjob
,CASE WHEN LEC01 like '%-7|%' THEN 1 ELSE 0 END as lec_1_4
,CASE WHEN LEC01 like '%-8|%' THEN 1 ELSE 0 END as lec_1_999

,CASE WHEN LEC02 like '%1|%' THEN 1 ELSE 0 END as lec_2_1
,CASE WHEN LEC02 like '%2|%' THEN 1 ELSE 0 END as lec_2_2
,CASE WHEN LEC02 like '%3|%' THEN 1 ELSE 0 END as lec_2_3
,CASE WHEN LEC02 like '%4|%' THEN 1 ELSE 0 END as firejob
,CASE WHEN LEC02 like '%-7|%' THEN 1 ELSE 0 END as lec_2_4
,CASE WHEN LEC02 like '%-8|%' THEN 1 ELSE 0 END as lec_2_999

,CASE WHEN LEC03 like '%1|%' THEN 1 ELSE 0 END as lec_3_1
,CASE WHEN LEC03 like '%2|%' THEN 1 ELSE 0 END as lec_3_2
,CASE WHEN LEC03 like '%3|%' THEN 1 ELSE 0 END as lec_3_3
,CASE WHEN LEC03 like '%4|%' THEN 1 ELSE 0 END as transjob
,CASE WHEN LEC03 like '%-7|%' THEN 1 ELSE 0 END as lec_3_4
,CASE WHEN LEC03 like '%-8|%' THEN 1 ELSE 0 END as lec_3_999

,CASE WHEN LEC04 like '%1|%' THEN 1 ELSE 0 END as lec_4_1
,CASE WHEN LEC04 like '%2|%' THEN 1 ELSE 0 END as lec_4_2
,CASE WHEN LEC04 like '%3|%' THEN 1 ELSE 0 END as lec_4_3
,CASE WHEN LEC04 like '%4|%' THEN 1 ELSE 0 END as seriousjob
,CASE WHEN LEC04 like '%-7|%' THEN 1 ELSE 0 END as lec_4_4
,CASE WHEN LEC04 like '%-8|%' THEN 1 ELSE 0 END as lec_4_999

,CASE WHEN LEC05 like '%1|%' THEN 1 ELSE 0 END as lec_5_1
,CASE WHEN LEC05 like '%2|%' THEN 1 ELSE 0 END as lec_5_2
,CASE WHEN LEC05 like '%3|%' THEN 1 ELSE 0 END as lec_5_3
,CASE WHEN LEC05 like '%4|%' THEN 1 ELSE 0 END as exposurejob
,CASE WHEN LEC05 like '%-7|%' THEN 1 ELSE 0 END as lec_5_4
,CASE WHEN LEC05 like '%-8|%' THEN 1 ELSE 0 END as lec_5_999

,CASE WHEN LEC06 like '%1|%' THEN 1 ELSE 0 END as lec06_1
,CASE WHEN LEC06 like '%2|%' THEN 1 ELSE 0 END as lec06_2
,CASE WHEN LEC06 like '%3|%' THEN 1 ELSE 0 END as lec06_3
,CASE WHEN LEC06 like '%4|%' THEN 1 ELSE 0 END as physassualtjob --(sic)
,CASE WHEN LEC06 like '%-7|%' THEN 1 ELSE 0 END as lec06_5
,CASE WHEN LEC06 like '%-8|%' THEN 1 ELSE 0 END as lec06_6

,CASE WHEN LEC07 like '%1|%' THEN 1 ELSE 0 END as lec07_1
,CASE WHEN LEC07 like '%2|%' THEN 1 ELSE 0 END as lec07_2
,CASE WHEN LEC07 like '%3|%' THEN 1 ELSE 0 END as lec07_3
,CASE WHEN LEC07 like '%4|%' THEN 1 ELSE 0 END as weaponjob
,CASE WHEN LEC07 like '%-7|%' THEN 1 ELSE 0 END as lec07_5
,CASE WHEN LEC07 like '%-8|%' THEN 1 ELSE 0 END as lec07_6

,CASE WHEN LEC08 like '%1|%' THEN 1 ELSE 0 END as lec08_1
,CASE WHEN LEC08 like '%2|%' THEN 1 ELSE 0 END as lec08_2
,CASE WHEN LEC08 like '%3|%' THEN 1 ELSE 0 END as lec08_3
,CASE WHEN LEC08 like '%4|%' THEN 1 ELSE 0 END as rapejob
,CASE WHEN LEC08 like '%-7|%' THEN 1 ELSE 0 END as lec08_5
,CASE WHEN LEC08 like '%-8|%' THEN 1 ELSE 0 END as lec08_6

,CASE WHEN LEC09 like '%1|%' THEN 1 ELSE 0 END as lec09_1
,CASE WHEN LEC09 like '%2|%' THEN 1 ELSE 0 END as lec09_2
,CASE WHEN LEC09 like '%3|%' THEN 1 ELSE 0 END as lec09_3
,CASE WHEN LEC09 like '%4|%' THEN 1 ELSE 0 END as othersexexpjob
,CASE WHEN LEC09 like '%-7|%' THEN 1 ELSE 0 END as lec09_5
,CASE WHEN LEC09 like '%-8|%' THEN 1 ELSE 0 END as lec09_6

,CASE WHEN LEC10 like '%1|%' THEN 1 ELSE 0 END as lec_10_1
,CASE WHEN LEC10 like '%2|%' THEN 1 ELSE 0 END as lec_10_2
,CASE WHEN LEC10 like '%3|%' THEN 1 ELSE 0 END as lec_10_3
,CASE WHEN LEC10 like '%4|%' THEN 1 ELSE 0 END as combatjob
,CASE WHEN LEC10 like '%-7|%' THEN 1 ELSE 0 END as lec_10_4
,CASE WHEN LEC10 like '%-8|%' THEN 1 ELSE 0 END as lec_10_999

,CASE WHEN LEC11 like '%1|%' THEN 1 ELSE 0 END as lec11_1
,CASE WHEN LEC11 like '%2|%' THEN 1 ELSE 0 END as lec11_2
,CASE WHEN LEC11 like '%3|%' THEN 1 ELSE 0 END as lec11_3
,CASE WHEN LEC11 like '%4|%' THEN 1 ELSE 0 END as captivityjob
,CASE WHEN LEC11 like '%-7|%' THEN 1 ELSE 0 END as lec11_5
,CASE WHEN LEC11 like '%-8|%' THEN 1 ELSE 0 END as lec11_6

,CASE WHEN LEC12 like '%1|%' THEN 1 ELSE 0 END as lec_12_1
,CASE WHEN LEC12 like '%2|%' THEN 1 ELSE 0 END as lec_12_2
,CASE WHEN LEC12 like '%3|%' THEN 1 ELSE 0 END as lec_12_3
,CASE WHEN LEC12 like '%4|%' THEN 1 ELSE 0 END as lifethreatjob
,CASE WHEN LEC12 like '%-7|%' THEN 1 ELSE 0 END as lec_12_4
,CASE WHEN LEC12 like '%-8|%' THEN 1 ELSE 0 END as lec_12_999

,CASE WHEN LEC13 like '%1|%' THEN 1 ELSE 0 END as lec13_1
,CASE WHEN LEC13 like '%2|%' THEN 1 ELSE 0 END as lec13_2
,CASE WHEN LEC13 like '%3|%' THEN 1 ELSE 0 END as lec13_3
,CASE WHEN LEC13 like '%4|%' THEN 1 ELSE 0 END as sufferjob
,CASE WHEN LEC13 like '%-7|%' THEN 1 ELSE 0 END as lec13_5
,CASE WHEN LEC13 like '%-8|%' THEN 1 ELSE 0 END as lec13_6

,CASE WHEN LEC14 like '%1|%' THEN 1 ELSE 0 END as lec14_1
,CASE WHEN LEC14 like '%2|%' THEN 1 ELSE 0 END as lec14_2
,CASE WHEN LEC14 like '%3|%' THEN 1 ELSE 0 END as lec14_3
,CASE WHEN LEC14 like '%4|%' THEN 1 ELSE 0 END as suddenjob
,CASE WHEN LEC14 like '%-7|%' THEN 1 ELSE 0 END as lec14_5
,CASE WHEN LEC14 like '%-8|%' THEN 1 ELSE 0 END as lec14_6

,CASE WHEN LEC15 like '%1|%' THEN 1 ELSE 0 END as lec15_1
,CASE WHEN LEC15 like '%2|%' THEN 1 ELSE 0 END as lec15_2
,CASE WHEN LEC15 like '%3|%' THEN 1 ELSE 0 END as lec15_3
,CASE WHEN LEC15 like '%4|%' THEN 1 ELSE 0 END as suddendeathjob
,CASE WHEN LEC15 like '%-7|%' THEN 1 ELSE 0 END as lec15_5
,CASE WHEN LEC15 like '%-8|%' THEN 1 ELSE 0 END as lec15_6

,CASE WHEN LEC16 like '%1|%' THEN 1 ELSE 0 END as lec_16_1
,CASE WHEN LEC16 like '%2|%' THEN 1 ELSE 0 END as lec_16_2
,CASE WHEN LEC16 like '%3|%' THEN 1 ELSE 0 END as lec_16_3
,CASE WHEN LEC16 like '%4|%' THEN 1 ELSE 0 END as injurytojob
,CASE WHEN LEC16 like '%-7|%' THEN 1 ELSE 0 END as lec_16_4
,CASE WHEN LEC16 like '%-8|%' THEN 1 ELSE 0 END as lec_16_999

,CASE WHEN LEC17 like '%1|%' THEN 1 ELSE 0 END as othereventme
,CASE WHEN LEC17 like '%2|%' THEN 1 ELSE 0 END as othereventwit
,CASE WHEN LEC17 like '%3|%' THEN 1 ELSE 0 END as othereventlearn
,CASE WHEN LEC17 like '%4|%' THEN 1 ELSE 0 END as othereventjob
,CASE WHEN LEC17 like '%-7|%' THEN 1 ELSE 0 END as othereventnotsure
,CASE WHEN LEC17 like '%-8|%' THEN 1 ELSE 0 END as othereventna




from

Assessment.LEC x
left outer join DEAR.NDA_GUID nda on x.ID=nda.ID
left outer join (select ID, [Description] as NDA_Sex from DEAR.SubjectInfo s inner join FK.GUID_Sex sx on s.GUIDGender=sx.Code) as sex on x.ID=sex.ID
left outer join (select * from Assessment.DEMO where VISIT=1 and EntryNum=3) d on x.ID=d.ID
where 
nda.[GUID] is not null -- GUID is required to validate
and 
(d.DOB is not null) and (x.CDATE is not null) -- interview_age is required to validate
GO


