	db GYARADOS ; 130

	db  95, 125,  79,  81,  60, 100
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING
	db 45 ; catch rate
	db 214 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 5 ; step cycles to hatch
	dn 7, 7 ; frontpic dimensions

	db SLOW ; growth rate
	dn FISH, REPTILE ; egg groups

	; tmhm
	tmhm HEADBUTT, CURSE, TOXIC, ZAP_CANNON, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, BUBBLEBEAM, FRUSTRATION, DRAGONBREATH, THUNDER, RETURN, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, REST, ATTRACT, SURF, STRENGTH, WATERFALL
	; end
