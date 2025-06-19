BeautifulBeachVilla_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, BEAUTIFUL_BEACH, 3
	warp_event  3,  7, BEAUTIFUL_BEACH, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_DARACH, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, (1 << MORN) | (1 << DAY) | (1 << EVE), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, DarachMornDayText, -1
	object_event 10,  4, SPRITE_DARACH, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, (1 << NITE), 0, OBJECTTYPE_SCRIPT, 0, DarachNiteScript, EVENT_BEAUTIFUL_BEACH_VILLA_DARACH
	object_event  1,  4, SPRITE_CAITLIN, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, (1 << MORN) | (1 << DAY) | (1 << EVE), 0, OBJECTTYPE_SCRIPT, 0, CaitlinMornDayScript, EVENT_BEAUTIFUL_BEACH_VILLA_CAITLIN
	object_event  9,  2, SPRITE_WEIRD_TREE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, (1 << NITE), PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CaitlinNiteText, -1
	object_event 11,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << NITE), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, DarachsBookText, -1

DarachNiteScript:
	faceplayer
	opentext
	writetext DarachNiteText
	waitbutton
	closetext
	winlosstext DarachBeatenText, 0
	loadtrainer DARACH, 1
	startbattle
	reloadmapafterbattle
	end

CaitlinMornDayScript:
	faceplayer
	opentext
	writetext CaitlinMornDayText
	waitbutton
	closetext
	winlosstext CaitlinBeatenText, 0
	loadtrainer CAITLIN, 1
	startbattle
	reloadmapafterbattle
	end

DarachMornDayText:
	text "Good day, trainer."

	para "My name is Darach,"
	line "and we have come"
	cont "here from the "

	para "Sinnoh region."

	para "Lady Caitlin"
	line "wanted to visit"
	cont "Shamouti Island"

	para "for a while."

	para "So she decided to"
	line "travel here for a"
	cont "short vacation."

	para "As her butler, I"
	line "have to ensure she"
	cont "has a relaxing"

	para "time in this"
	line "island."

	para "With that said, I"
	line "would like to have"
	cont "a battle..."

	para "But I'm currently"
	line "busy serving Lady"
	cont "Caitlin."

	para "Come back another"
	line "time when I have"
	cont "nothing to do."
	done

DarachNiteText:
	text "Ah, greetings!"

	para "Lady Caitlin is"
	line "sleeping right"
	cont "now."

	para "If you need her"
	line "for something, "
	cont "come back when she"

	para "is awake."

	para "...But you know,"
	line "I am in quite a"
	cont "battling mood."

	para "You see, I serve"
	line "as the Castle"
	cont "Valet of the"

	para "Battle Frontier"
	line "in Sinnoh."

	para "With such a title,"
	line "you would assume I"
	cont "would be lesser"

	para "than my employer."

	para "However, I have"
	line "gained experience"
	cont "battling during"

	para "my time serving"
	line "her for many"
	cont "years."

	para "Allow me to"
	line "demonstrate by"
	cont "battling on"

	para "Lady Caitlin's"
	line "behalf."
	done

CaitlinMornDayText:
	text "TODO"
	done

CaitlinNiteText:
	text "She is sleeping"
	line "quietly."
	done

DarachsBookText:
	text "TODO"
	done

DarachBeatenText:
	text "Bravo, bravo!"

	para "You have such"
	line "admirable skills."

	para "I'm glad to have"
	line "the chance to"
	cont "witness the"

	para "strength of your"
	line "#MON."
	done

CaitlinBeatenText:
	text "TODO"
	done
