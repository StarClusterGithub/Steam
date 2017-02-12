--[=[
--[=[    This information tells other players more about the mod
--]=]


--The name of the mod displayed in the 'mods' screen.
name = "Kotomi Ichinose"

--A description of the mod.
description = "Clannad anime Kotomi Ichinose character mod. This is one of my favorite characters"

--Who wrote this awesome mod?
author = "Star Cluster"

--A version number so you can ask people if they are running an old version of your mod.
version = "1.0"

--This lets other players know if your mod is out of date.  This typically needs to be updated every time there's a new game update.
api_version = 6

-- Compatible with both the base game and reign of giants
dont_starve_compatible = true
reign_of_giants_compatible = true
shipwrecked_compatible = true
dst_compatible = true

-- Specify the priority
--priority=-1

--Some mods may crash or not work correctly until the game is restarted after the mod is enabled/disabled
restart_required = false

-- Set this to true to prevent _ANY_ other mods from loading while this mod is enabled.
standalone = false

-- icon
icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- This is the URL name of the mod's thread on the forum; the part after the ? and before the first & in the url
forumthread = ""

-----------------------------------------------configure mod-----------------------------------------------
configuration_options = 
{
    {
        name = "demo",
        label = "label",
        options = 
        {
            {description = "select1",data = "1"},
            {description = "select2",data = "2"},
        },
        default = "1",
    }  
    {
        name = "demo",
        label = "label2",
        options = 
        {
            {description = "select1",data = "1"},
            {description = "select2",data = "2"},
        },
        default = "2",
    }
}
