-- ProbablyEngine Rotation Packager
-- Custom Fire Mage Rotation
-- Created on Dec 14th 2013 6:18 am
-- Mackdaddy2887's rotation Modded by NEM
-- Source: https://probablyengine.com/forum/viewtopic.php?id=800

ProbablyEngine.rotation.register_custom(267, "Test", 
{ -- in combat
},{
	-- Works
	-- Summon Healthstone if < 3
	{ "6201",
		{ 	"@nemcommon.Healthstone",
			"!modifier.last" 
		}
	}, 

	--  Fel Hunter
	-- works
	--{"691"},
	--works
	--{"691",{"!pet.exists","!modifier.last"}},	
	--  Fel Hunter
		-- works but double casts + it tries to cast while casting
	--{"/cast Summon Felhunter",{"!pet.exists","!modifier.last"}},
	-- works
	--{"Summon Felhunter",{"!pet.exists","!modifier.last"}},
	-- works .. tries to start casting while still casting
	--{"Summon Felhunter"},
	-- works
	--{"Summon Felhunter","!modifier.last"},
	-- works double cast + 49 tries while casting
	--{"Summon Felhunter","!pet.exists"},
	-- Casts spell doesn't recognize !modifier.last just loops
	--{"/cast Summon Felhunter","!modifier.last"},
		-- works but double casts
	--{"/cast Summon Felhunter","!pet.exists"},
		-- works but double casts
	-- {"/cast Summon Felhunter",{"!pet.health > 0","!modifier.last"}},
	
		-- works but double casts
	-- {"/cast Summon Felhunter","!pet.health > 0"},


}
)

ProbablyEngine.rotation.register_custom(63, "sheep", 
{

	{ "118", 										-- Havoc on Focus
		{	"focus.alive",
			"focus.enemy",
			"!focus.debuff(118)",
			"focus.spell(118).range",
			"@nemcommon.targNotfocus"	
		}, "focus" 
	},
 },
{
-- OOC
	{"!/run UIErrorsFrame:AddMessage('True', 1.0, 0.5, 0.0, 3)", "player.level > 89"},
	{"!/run UIErrorsFrame:AddMessage('False', 1.0, 0.5, 0.0, 3)", "player.level < 89"},

	{ "!/focus [target=mouseover]", "modifier.rcontrol" },
	
	{ "118", 										-- Havoc on Focus
		{	"focus.alive",
			"focus.enemy",
			"!focus.debuff(118)",
			"focus.spell(118).range",
			"@nemcommon.targNotfocus"	
		}, "focus" 
	},

	{ "!/targetenemy [noharm]", {						-- Auto Target Enemy 
		"!target.alive", 
		"!target.enemy",
		"!target.exists",
		--"target.range > 10",
	}},

-- Evo > PoM > Pyro
--[[
	{ 
	
		{
			{ "Evocation", -- Evo for buff
				{	"!player.buff(Invoker's Energy)",
					"player.spell(114003).exists",
				}
			},
			{ "Mirror Image", "modifier.cooldowns" },				-- MiniMes
			{ "12043"},				-- PoM for insta Pyro
			{ "11366",									-- Pyro
				{	"player.buff(12043)", 						-- Presence of Mind		
					"target.spell(11366).range",
				},"target"
			},
		},
		{	"target.exists",											-- Don't waste mana
			"target.enemy",
			"player.spell(114003).exists",
			"player.spell(12043).exists",
			"!player.spell.cooldown(12043)",			-- Pres of Mind ready
			"!target.immune.all",						-- Can't touch this!
			"!target.buff(122464.any)", 				-- Dematerialize 
			"!target.buff(122470).any", 				-- touch of karma
			"target.alive",
		}, 
	}, 
-- Or just Snare it	
		{"44614", 
			{ 	"target.spell(44614).range",
				"target.enemy",
				"target.exists",
				"!modified.last"
			},"target"
		},
-- Buffs
		{ "Arcane Brilliance", "!player.buff" },
		{ "Molten Armor", "!player.buff(Molten Armor)" },
		]]
} 
)