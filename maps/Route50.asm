const_value set 2
	const ROUTE50_YOUNGSTER1
	const ROUTE50_YOUNGSTER2
	const ROUTE50_BUG_CATCHER
	const ROUTE50_FRUIT_TREE1
	const ROUTE50_FRUIT_TREE2
	const ROUTE50_COOLTRAINER_F
	const ROUTE50_POKE_BALL

Route50_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerYoungsterJoey:
	trainer EVENT_BEAT_YOUNGSTER_TOM, YOUNGSTER, TOM, YoungsterTomSeenText, YoungsterTomBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext YoungsterTomAfterText
	waitbutton
	closetext
	end

TrainerYoungsterSawyer:
	trainer EVENT_BEAT_YOUNGSTER_SAWYER, YOUNGSTER, SAWYER, YoungsterSawyerSeenText, YoungsterSawyerBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext YoungsterSawyerAfterText
	waitbutton
	closetext
	end

TrainerBug_catcherEugene:
	trainer EVENT_BEAT_BUG_CATCHER_EUGENE, BUG_CATCHER, EUGENE, Bug_catcherEugeneSeenText, Bug_catcherEugeneBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext Bug_catcherEugeneAfterText
	waitbutton
	closetext
	end

Route50CooltrainerFScript:
	jumptextfaceplayer Route50CooltrainerFText

Route50Sign:
	jumptext Route50SignText

Route50TrainerTips:
	jumptext Route50TrainerTipsText

Route50Antidote:
	itemball ANTIDOTE

Route50FruitTree1:
	fruittree FRUITTREE_ROUTE_50_1

Route50FruitTree2:
	fruittree FRUITTREE_ROUTE_50_2

Route50HiddenPotion:
	dwb EVENT_ROUTE_50_HIDDEN_POTION, POTION

YoungsterTomSeenText:
	text "Hey, you're taking"
	line "the ORANGE CREW"
	cont "CHALLENGE?"

	para "So am I!"
	line "Let's battle!"
	done

YoungsterTomBeatenText:
	text "Agh! I lost!"
	done

YoungsterTomAfterText:
	text "Darn! I have to"
	line "train even more"
	cont "to take on the"
	cont "ORANGE CREW!"
	done

YoungsterSawyerSeenText:
	text "You're a #MON"
	line "trainer, right?"

	para "Then you have to"
	line "battle!"
	done

YoungsterSawyerBeatenText:
	text "You are way too"
	line "strong!"
	done

YoungsterSawyerAfterText:
	text "Becoming a good"
	line "trainer is really"
	cont "tough."

	para "I'm going to bat-"
	line "tle other people"
	cont "to get better."
	done

Bug_catcherEugeneSeenText:
	text "Instead of a bug"
	line "#MON, I found"
	cont "a trainer!"
	done

Bug_catcherEugeneBeatenText:
	text "Aiyaa!"
	done

Bug_catcherEugeneAfterText:
	text "I ran out of #"
	line "BALLS while I was"
	cont "catching #MON."

	para "I should've bought"
	line "some more<...>"
	done

Route50CooltrainerFText:
	text "You can cross"
	line "ROUTE 51 to enter"
	cont "the TANGELO"
	cont "JUNGLE."
	done

Route50SignText:
	text "ROUTE 50"
	done

Route50TrainerTipsText:
	text "TRAINER TIPS"

	para "No stealing other"
	line "people's #MON!"

	para "# BALLS are to"
	line "be thrown only at"
	cont "wild #MON!"
	done

Route50_MapEventHeader:: db 0, 0

.Warps: db 0

.CoordEvents: db 0

.BGEvents: db 3
	signpost 47, 3, SIGNPOST_READ, Route50Sign
	signpost 30, 10, SIGNPOST_READ, Route50TrainerTips
	signpost 2, 6, SIGNPOST_ITEM, Route50HiddenPotion

.ObjectEvents: db 7
	person_event SPRITE_YOUNGSTER, 29, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerYoungsterJoey, -1
	person_event SPRITE_YOUNGSTER, 14, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 1, TrainerYoungsterSawyer, -1
	person_event SPRITE_BUG_CATCHER, 13, 10, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 3, TrainerBug_catcherEugene, -1
	person_event SPRITE_FRUIT_TREE, 11, 13, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route50FruitTree1, -1
	person_event SPRITE_FRUIT_TREE, 33, 0, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route50FruitTree2, -1
	person_event SPRITE_COOLTRAINER_F, 42, 13, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route50CooltrainerFScript, -1
	person_event SPRITE_POKE_BALL, 19, 13, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, Route50Antidote, EVENT_ROUTE_50_ANTIDOTE

