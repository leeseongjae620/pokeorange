	db SEAKING ; 119

	db  80,  92,  65,  68,  65,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER
	db 60 ; catch rate
	db 170 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 20 ; step cycles to hatch
	dn 7, 7 ; frontpic dimensions

	db MEDIUM_FAST ; growth rate
	dn FISH, FISH ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, BUBBLEBEAM, FRUSTRATION, RETURN, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, SURF, WATERFALL
	; end
