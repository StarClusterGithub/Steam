
local MakePlayerCharacter = require "prefabs/player_common"


local assets = {
        Asset( "ANIM", "anim/player_basic.zip" ),
        Asset( "ANIM", "anim/player_idles_shiver.zip" ),
        Asset( "ANIM", "anim/player_actions.zip" ),
        Asset( "ANIM", "anim/player_actions_axe.zip" ),
        Asset( "ANIM", "anim/player_actions_pickaxe.zip" ),
        Asset( "ANIM", "anim/player_actions_shovel.zip" ),
        Asset( "ANIM", "anim/player_actions_blowdart.zip" ),
        Asset( "ANIM", "anim/player_actions_eat.zip" ),
        Asset( "ANIM", "anim/player_actions_item.zip" ),
        Asset( "ANIM", "anim/player_actions_uniqueitem.zip" ),
        Asset( "ANIM", "anim/player_actions_bugnet.zip" ),
        Asset( "ANIM", "anim/player_actions_fishing.zip" ),
        Asset( "ANIM", "anim/player_actions_boomerang.zip" ),
        Asset( "ANIM", "anim/player_bush_hat.zip" ),
        Asset( "ANIM", "anim/player_attacks.zip" ),
        Asset( "ANIM", "anim/player_idles.zip" ),
        Asset( "ANIM", "anim/player_rebirth.zip" ),
        Asset( "ANIM", "anim/player_jump.zip" ),
        Asset( "ANIM", "anim/player_amulet_resurrect.zip" ),
        Asset( "ANIM", "anim/player_teleport.zip" ),
        Asset( "ANIM", "anim/wilson_fx.zip" ),
        Asset( "ANIM", "anim/player_one_man_band.zip" ),
        Asset( "ANIM", "anim/shadow_hands.zip" ),
        Asset( "SOUND", "sound/sfx.fsb" ),
        Asset( "SOUND", "sound/winnie.fsb" ),
        Asset( "ANIM", "anim/beard.zip" ),

        -- Character's custom assets.
        Asset( "ANIM", "anim/kotomi.zip" ),
}
local prefabs = {}
local start_inv = {
	-- Custom starting items
    "panflute",
}

local fn = function(inst)
	
	-- choose which sounds this character will play
	inst.soundsname = "winnie"

	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "kotomi.tex" )
	
	-- Stats	
	inst.components.health:SetMaxHealth(100)
	inst.components.hunger:SetMax(100)
	inst.components.sanity:SetMax(300)
	
	-- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = 0.88

    -- Attack period (optional)
    inst.components.combat:SetAttackPeriod( 0.58 * TUNING.WILSON_ATTACK_PERIOD )
	
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 0.85 * TUNING.WILSON_HUNGER_RATE
	
	-- Movement speed (optional)
	inst.components.locomotor.walkspeed = 1.17 * TUNING.WILSON_WALK_SPEED
	inst.components.locomotor.runspeed = 1.24 * TUNING.WILSON_RUN_SPEED

    -- Fire damage multiplier
    inst.components.health.fire_damage_scale = 1.6

    -- science level
	inst.components.builder.science_bonus = 1

end

return MakePlayerCharacter("kotomi", prefabs, assets, fn, start_inv)
