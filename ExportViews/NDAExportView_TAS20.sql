USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_NdarExport_xxx]    Script Date: 11/7/2023 1:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE view [Assessment].[V_TAS20]
as
SELECT x.[ParticipantID]
      ,[TimePoint]
      ,x.[ParticipantType]
      ,x.[CDATE]
      ,[tas1]
      ,[tas2]
      ,[tas3]
      ,[tas4]
      ,[tas5]
      ,[tas6]
      ,[tas7]
      ,[tas8]
      ,[tas9]
      ,[tas10]
      ,[tas11]
      ,[tas12]
      ,[tas13]
      ,[tas14]
      ,[tas15]
      ,[tas16]
      ,[tas17]
      ,[tas18]
      ,[tas19]
      ,[tas20]
      ,x.[RecordNumber]
  FROM [Assessment].[TAS20] x
  left outer join Proj.Participants p on x.ParticipantID=p.ParticipantID
  left outer join NDA.ExcludeFromAnalysis e on p.ScreeningID=e.ScreeningID

  where e.ScreeningID is null
GO
