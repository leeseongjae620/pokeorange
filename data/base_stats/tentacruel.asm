	db TENTACRUEL ; 073

	db  80,  70,  65, 100,  80, 120
	;   hp  atk  def  spd  sat  sdf

	db WATER, POISON
	db 60 ; catch rate
	db 205 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 20 ; step cycles to hatch
	dn 6, 6 ; frontpic dimensions

	db SLOW ; growth rate
	dn INVERTEBRATE, INVERTEBRATE ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, BUBBLEBEAM, FRUSTRATION, RETURN, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, CUT, SURF
	; end
