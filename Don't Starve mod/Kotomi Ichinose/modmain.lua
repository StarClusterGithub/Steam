PrefabFiles = {
	"kotomi",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/kotomi.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/kotomi.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/kotomi.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/kotomi.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/kotomi_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/kotomi_silho.xml" ),

    Asset( "IMAGE", "bigportraits/kotomi.tex" ),
    Asset( "ATLAS", "bigportraits/kotomi.xml" ),
	
	Asset( "IMAGE", "images/map_icons/kotomi.tex" ),
	Asset( "ATLAS", "images/map_icons/kotomi.xml" ),

}

local require = GLOBAL.require

-- The character select screen lines
GLOBAL.STRINGS.CHARACTER_NAMES.kotomi = "Kotomi Ichinose"
GLOBAL.STRINGS.CHARACTER_TITLES.kotomi = "A double ponytail violinist."
GLOBAL.STRINGS.CHARACTER_QUOTES.kotomi = "\"Kotomi, three beautiful hiragana composed of kotomi.\""
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.kotomi = "*Genius girl\n*Like violin\n*Natural stay"

-- Custom speech strings
GLOBAL.STRINGS.CHARACTERS.kotomi = require "speech_kotomi"

-- Let the game know character is male, female, or robot
table.insert(GLOBAL.CHARACTER_GENDERS.FEMALE, "kotomi")


AddMinimapAtlas("images/map_icons/kotomi.xml")
AddModCharacter("kotomi")
