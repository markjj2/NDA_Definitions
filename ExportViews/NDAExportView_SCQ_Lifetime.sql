USE [PI_ProjectName]
GO

/****** Object:  View [NDA].[v_Export_SCQ_Lifetime]    Script Date: 2/9/2023 12:34:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/* NDA structure name: scq_lifetime04 */

CREATE view [NDA].[v_Export_SCQ_Lifetime]
as

SELECT  ndac.subjectkey as subjectkey
		,ndac.src_subject_id as src_subject_id
      ,CONVERT(varchar,[CDate],101) as interview_date
	  , FK.F_AgeInMonths(ndac.dob, a.CDate) as interview_age
	  , ndac.gender as sex

	        ,[lifetime_shortphrases]
      ,[lifetime_turns]
      ,[lifetime_oddphrases]
      ,[lifetime_askiappques]
      ,[lifetime_pronounsmix]
      ,[lifetime_madeup]
      ,[lifetime_sayagain]
      ,[lifetime_things]
      ,[lifetime_facialex]
      ,[lifetime_handtool]
      ,[lifetime_oddinterest]
      ,[lifetime_interestobjpart]
      ,[lifetime_unusual]
      ,[lifetime_unusualint]
      ,[lifetime_manner]
      ,[lifetime_movement]
      ,[lifetime_injure]
      ,[lifetime_objcarry]
      ,[lifetime_bestfrnd]
      ,[lifetime_talkfrndly]
      ,[lifetime_copyyou]
      ,[lifetime_ptthings]
      ,[lifetime_gesture]
      ,[lifetime_nodheady]
      ,[lifetime_nodheadn]
      ,[lifetime_facelook]
      ,[lifetime_smileback]
      ,[lifetime_attn]
      ,[lifetime_share]
      ,[lifetime_joinenjoy]
      ,[lifetime_comfort]
      ,[lifetime_help]
      ,[lifetime_normalfacialexp]
      ,[lifetime_copyaction]
      ,[lifetime_makebelievegame]
      ,[lifetime_childinterest]
      ,[lifetime_positiveapp]
      ,[lifetime_talknoname]
      ,[lifetime_imaginegame]
      ,[lifetime_playcoop]
      ,[scq_total_score]


	  from
	  (select x.ParticipantID, CONVERT(varchar,p.ScreeningID) as ScreeningID, x.CDate

	        ,CASE WHEN [SCQ_shortphrases] = 1 THEN 'Yes'
	  WHEN SCQ_shortphrases = 0 THEN 'No' ELSE 'not_answered' END as lifetime_shortphrases
      ,CASE WHEN [scq_turns] = 1 THEN 'Yes'
	  WHEN scq_turns = 0 THEN 'No' ELSE 'not_answered' END as lifetime_turns
      ,CASE WHEN [scq_oddphrases] = 1 THEN 'Yes'
	  WHEN scq_oddphrases = 0 THEN 'No' ELSE 'not_answered' END as lifetime_oddphrases
      ,CASE WHEN [scq_askiappques] = 1 THEN 'Yes'
	  WHEN scq_askiappques = 0 THEN 'No' ELSE 'not_answered' END as lifetime_askiappques
      ,CASE WHEN [scq_pronounsmix] = 1 THEN 'Yes'
	  WHEN scq_pronounsmix = 0 THEN 'No' ELSE 'not_answered' END as lifetime_pronounsmix
      ,CASE WHEN [scq_madeup] = 1 THEN 'Yes'
	  WHEN scq_madeup = 0 THEN 'No' ELSE 'not_answered' END as lifetime_madeup
      ,CASE WHEN [scq_sayagain] = 1 THEN 'Yes'
	  WHEN scq_sayagain = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_sayagain
      ,CASE WHEN [scq_things] = 1 THEN 'Yes' 
	  WHEN scq_things = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_things
      ,CASE WHEN [scq_facialex] = 1 THEN 'Yes'
	  WHEN scq_facialex = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_facialex
      ,CASE WHEN [scq_handtool] = 1 THEN 'Yes'
	  WHEN scq_handtool = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_handtool
      ,CASE WHEN [scq_oddinterest] = 1 THEN 'Yes'
	  WHEN scq_oddinterest = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_oddinterest
      ,CASE WHEN [scq_interestobjpart] = 1 THEN 'Yes'
	  WHEN scq_interestobjpart = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_interestobjpart
      ,CASE WHEN [scq_unusual] = 1 THEN 'Yes'
	  WHEN scq_unusual = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_unusual
      ,CASE WHEN [scq_unusualint] = 1 THEN 'Yes'
	  WHEN scq_unusualint = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_unusualint
      ,CASE WHEN [scq_manner] = 1 THEN 'Yes'
	  WHEN scq_manner = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_manner
      ,CASE WHEN [scq_movement] = 1 THEN 'Yes'
	  WHEN scq_movement = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_movement
      ,CASE WHEN [scq_injure] = 1 THEN 'Yes'
	  WHEN scq_injure = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_injure
      ,CASE WHEN [scq_objcarry] = 1 THEN 'Yes'
	  WHEN scq_objcarry = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_objcarry
      ,CASE WHEN [scq_bestfrnd] = 1 THEN 'Yes'
	  WHEN scq_bestfrnd = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_bestfrnd
      ,CASE WHEN [scq_talkfrndly] = 1 THEN 'Yes'
	  WHEN scq_talkfrndly = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_talkfrndly
      ,CASE WHEN [scq_copyyou] = 1 THEN 'Yes'
	  WHEN scq_copyyou = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_copyyou
      ,CASE WHEN [scq_ptthings] = 1 THEN 'Yes'
	  WHEN scq_ptthings = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_ptthings
      ,CASE WHEN [scq_gesture] = 1 THEN 'Yes'
	  WHEN scq_gesture = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_gesture
      ,CASE WHEN [scq_nodheady] = 1 THEN 'Yes'
	  WHEN scq_nodheady = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_nodheady
      ,CASE WHEN [scq_nodheadn] = 1 THEN 'Yes'
	  WHEN scq_nodheadn = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_nodheadn
      ,CASE WHEN [scq_facelook] = 1 THEN 'Yes'
	  WHEN scq_facelook = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_facelook
      ,CASE WHEN [scq_smileback] = 1 THEN 'Yes'
	  WHEN scq_smileback = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_smileback
      ,CASE WHEN [scq_attn] = 1 THEN 'Yes'
	  WHEN scq_attn = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_attn
      ,CASE WHEN [scq_share] = 1 THEN 'Yes'
	  WHEN scq_share = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_share
      ,CASE WHEN [scq_joinenjoy] = 1 THEN 'Yes'
	  WHEN scq_joinenjoy = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_joinenjoy
      ,CASE WHEN [scq_comfort] = 1 THEN 'Yes'
	  WHEN scq_comfort = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_comfort
      ,CASE WHEN [scq_help] = 1 THEN 'Yes'
	  WHEN scq_help = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_help
      ,CASE WHEN [scq_normalfacialexp] = 1 THEN 'Yes'
	  WHEN scq_normalfacialexp = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_normalfacialexp
      ,CASE WHEN [scq_copyaction] = 1 THEN 'Yes'
	  WHEN scq_copyaction = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_copyaction
      ,CASE WHEN [scq_makebelievegame] = 1 THEN 'Yes'
	  WHEN scq_makebelievegame = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_makebelievegame
      ,CASE WHEN [scq_childinterest] = 1 THEN 'Yes'
	  WHEN scq_childinterest = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_childinterest
      ,CASE WHEN [scq_positiveapp] = 1 THEN 'Yes'
	  WHEN scq_positiveapp = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_positiveapp
      ,CASE WHEN [scq_talknoname] = 1 THEN 'Yes'
	  WHEN scq_talknoname = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_talknoname
      ,CASE WHEN [scq_imaginegame] = 1 THEN 'Yes'
	  WHEN scq_imaginegame = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_imaginegame
      ,CASE WHEN [scq_playcoop] = 1 THEN 'Yes'
	  WHEN scq_playcoop = 0 THEN 'No' ELSE 'not_answered' END  as lifetime_playcoop
	  ,(
	  (1-isnull([SCQ_turns],0))
      + isnull([SCQ_oddphrases],0)
      + isnull([SCQ_askiappques],0)
      + isnull([SCQ_pronounsmix],0)
      + isnull([SCQ_madeup],0)
      + isnull([SCQ_sayagain],0)
      + isnull([SCQ_things],0)
      + (1 - isnull([SCQ_facialex],0))
      + isnull([SCQ_handtool],0)
      + isnull([SCQ_oddinterest],0)
      + isnull([SCQ_interestobjpart],0)
      + isnull([SCQ_unusual],0)
      + isnull([SCQ_unusualint],0)
      + isnull([SCQ_manner],0)
      + isnull([SCQ_movement],0)
      + isnull([SCQ_injure],0)
      + isnull([SCQ_objcarry],0)
      + (1 - isnull([SCQ_bestfrnd],0))
      + (1 - isnull([SCQ_talkfrndly],0))
      + (1 - isnull([SCQ_copyyou],0))
      + (1 - isnull([SCQ_ptthings],0))
      + (1 - isnull([SCQ_gesture],0))
      + (1 - isnull([SCQ_nodheady],0))
      + (1 - isnull([SCQ_nodheadn],0))
      + (1 - isnull([SCQ_facelook],0))
      + (1 - isnull([SCQ_smileback],0))
      + (1 - isnull([SCQ_attn],0))
      + (1 - isnull([SCQ_share],0))
      + (1 - isnull([SCQ_joinenjoy],0))
      + (1 - isnull([SCQ_comfort],0))
      + (1 - isnull([SCQ_help],0))
      + (1 - isnull([SCQ_normalfacialexp],0))
      + (1 - isnull([SCQ_copyaction],0))
      + (1 - isnull([SCQ_makebelievegame],0))
      + (1 - isnull([SCQ_childinterest],0))
      + (1 - isnull([SCQ_positiveapp],0))
      + (1 - isnull([SCQ_talknoname],0))
      + (1 - isnull([SCQ_imaginegame],0))
      + (1 - isnull([SCQ_playcoop],0))
	  ) as scq_total_score


    
  FROM [Assessment].[SCQ_Lifetime] x
  inner join
  [Proj].[Participants] p on x.ID=p.ID ) as a
  inner join
  [NDA_ReadOnly].[CoreInfo] ndac on a.ScreeningID=ndac.src_subject_id

