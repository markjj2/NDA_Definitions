USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_xxx]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


  /*
                              created 2023-09-19 - markjj2
                              
                              NDA structure shortname: cssrs01
  */

CREATE view [NDA].[v_Export_CSSRS]
as


SELECT  ndac.subjectkey as subjectkey
            ,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[ADate],101) as interview_date
        , FK.F_AgeInMonths(ndac.dob, x.ADate) as interview_age
        , ndac.gender as sex

      ,case when [SI1L] = 0 then 2 when [SI1L] = 1 then 1 when [SI1L] = -9 THEN -900 when [SI1L] = -8 then -300 else NULL end as [SI1L]
      ,case when [SI1p6] = 0 then 2 when [SI1p6] = 1 then 1 else null end as [SI1p6]
      ,case when [SI2L] = 0 then 2 when [SI2L] = 1 then 1 when [SI2L] = -9 THEN -900 when [SI2L] = -8 then -300 else NULL end as [SI2L]
      ,case when [SI2p6] = 0 then 2 when [SI2p6] = 1 then 1 else null end as [SI2p6]
      ,case when [ACTIVE_SI_Freq6] = 0 then 2 when [ACTIVE_SI_Freq6] = 1 then 1 else null end as [lvsi2]
      ,case when [SI3L] = 0 then 2 when [SI3L] = 1 then 1 when [SI3L] = -9 THEN -900 when [SI3L] = -8 then -300 else NULL end as [SI3L]
      ,case when [SI3p6] = 0 then 2 when [SI3p6] = 1 then 1 else null end as [SI3p6]
      ,case when [SI4L] = 0 then 2 when [SI4L] = 1 then 1 when [SI4L] = -9 THEN -900 when [SI4L] = -8 then -300 else NULL end as [SI4L]
      ,case when [SI4p6] = 0 then 2 when [SI4p6] = 1 then 1 else null end as [SI4p6]
      ,case when [SI5L] = 0 then 2 when [SI5L] = 1 then 1 when [SI5L] = -9 THEN -900 when [SI5L] = -8 then -300 else NULL end as [SI5L]
      ,case when [SI5p6] = 0 then 2 when [SI5p6] = 1 then 1 else null end as [SI5p6]
      ,case when [SIdfrq] between 1 and 5 then [SIdfrq] when [SIdfrq] = -8 then -888 when [SIdfrq] = -9 then -900 else NULL end as [SIdfrqL]
      ,case when [SIdfrqp6] between 1 and 5 then [SIdfrqp6] when [SIdfrqp6] = -8 then -888 else NULL end as [SIdfrqP]
      ,case when [SIddurL] between 1 and 5 then [SIddurL] when [SIddurL] = -8 then -888 else NULL end as [SIddurL]
      ,case when [SIddurp6] between 1 and 5 then [SIddurp6] when [SIddurp6] = -8 then -888 else NULL end as [SIddurP]
      ,case when [SIdctrL] between 0 and 5 then [SIdctrL] when [SIdctrL] = -8 then -888 else NULL end as [SIdctrL]
      ,case when [SIdctrp6] between 0 and 5 then [SIdctrp6] when [SIdctrp6] = -8 then -888 else NULL end as [SIdctrP]
      ,case when [SIddtrL] between 0 and 5 then [SIddtrL] when [SIddtrL] = -8 then -888 else NULL end as [SIddtrL]
      ,case when [SIddtrp6] between 0 and 5 then [SIddtrp6] when [SIddtrp6] = -8 then -888 else NULL end as [SIddtrP]
      ,case when [SIdrsnL] between 0 and 5 then [SIdrsnL] when [SIdrsnL] = -8 then -888 else NULL end as [SIdrsnL]
      ,case when [SIdrsnp6] between 0 and 5 then [SIdrsnp6] when [SIdrsnp6] = -8 then -888 else NULL end as [SIdrsnP]
      ,case when [SB2L] = 0 then 2 else [SB2L] end as [SB2L]
      ,case when [SB2p6] = 0 then 2 when [SB2p6] = 1 then 1 else null end as [cssrs_sa_6mo]
      ,[nmacatL] as [snmacatL]
     -- ,[nmacatp6]
      ,case when [SB3L] = 0 then 2 else [SB3L] end as [SB3L]
      ,case when [SB3p6] = 0 then 2 when [SB3p6] = 1 then 1 else null end as [cssrs_isa_6mo]
      ,[nminatL]
      ,[nminatp6] as [cssrs_isanum_6mo]
      ,case when [SB4L] = 0 then 2 else [SB4L] end as [SB4L]
      ,case when [SB4p6] = 0 then 2 when [SB4p6] = 1 then 1 end as [cssrs_asa_6mo]
      ,[nmabatL]
      ,[nmabatp6] as [cssrs_asanum_6mo]
      ,case when [SB5L] = 0 then 2 else [SB5L] end as [SB5L]
      ,case when [SB5p6] = 0 then 2 when [SB5p6] = 1 then 1 else null end as [cssrs_pa_6mo]
      ,[nmprepL] as [sbpabtnal]
    --  ,[nmprepp6]
      ,[recattdt] as [rctattdt]
      ,case when [actlthl1] between 0 and 6 then [actlthl1] when [actlthl1] = -8 then 9 else [actlthl1] end as [actlthl1]
      ,[lthldt]
      ,case when [actlthl2] between 0 and 6 then [actlthl2] when [actlthl2] = -8 then 9 else [actlthl2] end as [actlthl2]
      ,[initatdt]
      ,case when [actlth3] between 0 and 6 then [actlth3] when [actlth3] = -8 then 9 else [actlth3] end as [actlthl3]
      ,case when [potlthl1] between 0 and 5 then [potlthl1] when [potlthl1] = -8 then -300 when [potlthl1] = -9 then -900 else null end as [potlthl1]
      ,case when [potlthl2] between 0 and 2 then [potlthl2] when [potlthl2] = -8 then -300 when [potlthl2] = -9 then -900 else null end as [potlthl2]
      ,case when [potlthl3] between 0 and 5 then [potlthl3] when [potlthl3] = -8 then -300 when [potlthl3] = -9 then -900 else null end as [potlthl3]
     -- ,[timetbaMostRecent]
     -- ,[timetbaMostLethal]
      --,[timetbaInitial]
      --,[NSSImthd]
      --,[NSSIOther]
      ,case when [NSSIL] = 0 then 2 when [NSSIL] = 1 then 1 when [NSSIL] = -9 then -900 else null end as [sbnssibl]
      ,case when [NSSIp6] = 0 then 2 when [NSSIp6] = 1 then 1 else null end as [cssrs_sib_6mo]
      --,[nmNSSIp6]
      --,[NSSIFirstAge]
      --,[NSSILastAge]
      --,[NSSImedTx]
      --,[timetbNSSI]
      
  FROM [Assessment].[CSSRS] x
  inner join
  [Proj].[Participants] p on x.ID=p.ID
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on p.ID=ndac.src_subject_id
