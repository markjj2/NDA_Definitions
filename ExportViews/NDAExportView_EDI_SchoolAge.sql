USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_EDI_SchoolAge]    Script Date: 2/9/2023 1:25:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/* nda structure: emdi01 */

CREATE view [NDA].[v_Export_EDI_SchoolAge]
as

SELECT  ndac.subjectkey as subjectkey
		,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
	  , FK.F_AgeInMonths(ndac.dob, a.CDate) as interview_age
	  , ndac.gender as sex

      ,[version_form]
      ,[EDI1s]
      ,[EDI3s]
      ,[EDI4s]
      ,[EDI6s]
      ,[EDI7s]
      ,[EDI8s]
      ,[EDI10s]
      ,[EDI13s]
      ,[EDI19s]
      ,[EDI21s]
      ,[EDI24s]
      ,[EDI26s]
      ,[EDI27s]
      ,[EDI28s]
      ,[EDI31s]
      ,[EDI34s]
      ,[EDI36s]
      ,[EDI38s]
      ,[EDI42s]
      ,[EDI43s]
      ,[EDI46s]
      ,[EDI50s]
      ,[EDI51s]
      ,[EDI52s]
      ,[EDI53s]
      ,[EDI57s]
      ,[EDI58s]
      ,[EDI59s]
      ,[EDI63s]
      ,[EDI64s]

from
	  (select x.ID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate

,'EDI - School Age' as version_form
      ,CASE WHEN [EDI1s] between 0 and 4 THEN [EDI1s] ELSE Null END as EDI1s
      ,CASE WHEN [EDI3s] between 0 and 4 THEN [EDI3s] ELSE Null END as EDI3s
      ,CASE WHEN [EDI4s] between 0 and 4 THEN [EDI4s] ELSE Null END as EDI4s
      ,CASE WHEN [EDI6s] between 0 and 4 THEN [EDI6s] ELSE Null END as EDI6s
      ,CASE WHEN [EDI7s] between 0 and 4 THEN [EDI7s] ELSE Null END as EDI7s
      ,CASE WHEN [EDI8s] between 0 and 4 THEN [EDI8s] ELSE Null END as EDI8s
      ,CASE WHEN [EDI10s] between 0 and 4 THEN [EDI10s] ELSE Null END as EDI10s
      ,CASE WHEN [EDI13s] between 0 and 4 THEN [EDI13s] ELSE Null END as EDI13s
      ,CASE WHEN [EDI19s] between 0 and 4 THEN [EDI19s] ELSE Null END as EDI19s
      ,CASE WHEN [EDI21s] between 0 and 4 THEN [EDI21s] ELSE Null END as EDI21s
      ,CASE WHEN [EDI24s] between 0 and 4 THEN [EDI24s] ELSE Null END as EDI24s
      ,CASE WHEN [EDI26s] between 0 and 4 THEN [EDI26s] ELSE Null END as EDI26s
      ,CASE WHEN [EDI27s] between 0 and 4 THEN [EDI27s] ELSE Null END as EDI27s
      ,CASE WHEN [EDI28s] between 0 and 4 THEN [EDI28s] ELSE Null END as EDI28s
      ,CASE WHEN [EDI31s] between 0 and 4 THEN [EDI31s] ELSE Null END as EDI31s
      ,CASE WHEN [EDI34s] between 0 and 4 THEN [EDI34s] ELSE Null END as EDI34s
      ,CASE WHEN [EDI36s] between 0 and 4 THEN [EDI36s] ELSE Null END as EDI36s
      ,CASE WHEN [EDI38s] between 0 and 4 THEN [EDI38s] ELSE Null END as EDI38s
      ,CASE WHEN [EDI42s] between 0 and 4 THEN [EDI42s] ELSE Null END as EDI42s
      ,CASE WHEN [EDI43s] between 0 and 4 THEN [EDI43s] ELSE Null END as EDI43s
      ,CASE WHEN [EDI46s] between 0 and 4 THEN [EDI46s] ELSE Null END as EDI46s
      ,CASE WHEN [EDI50s] between 0 and 4 THEN [EDI50s] ELSE Null END as EDI50s
      ,CASE WHEN [EDI51s] between 0 and 4 THEN [EDI51s] ELSE Null END as EDI51s
      ,CASE WHEN [EDI52s] between 0 and 4 THEN [EDI52s] ELSE Null END as EDI52s
      ,CASE WHEN [EDI53s] between 0 and 4 THEN [EDI53s] ELSE Null END as EDI53s
      ,CASE WHEN [EDI57s] between 0 and 4 THEN [EDI57s] ELSE Null END as EDI57s
      ,CASE WHEN [EDI58s] between 0 and 4 THEN [EDI58s] ELSE Null END as EDI58s
      ,CASE WHEN [EDI59s] between 0 and 4 THEN [EDI59s] ELSE Null END as EDI59s
      ,CASE WHEN [EDI63s] between 0 and 4 THEN [EDI63s] ELSE Null END as EDI63s
      ,CASE WHEN [EDI64s] between 0 and 4 THEN [EDI64s] ELSE Null END as EDI64s


  FROM (select * from [Assessment].[EDI_SchoolAge]/* where EntryNum in (3,4)*/) x
    inner join
  [Proj].[Participants] p on x.ID=p.ID) as a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id
GO


