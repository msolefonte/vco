local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_POS_KEY = "wh2_dlc11_cst_pirates_of_sartosa";

local function pos_replenish_movement(character)
	if character:faction():has_effect_bundle("vco_victory_payload_cst_sar_1_captain_of_the_swordfysh") then
		vlc.characters:replenish_campaign_movement(character);
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_nor_pos_razed_port",
		"CharacterRazedSettlement",
		function(context)
			local faction = context:character():faction();
			return faction:is_human() and
				faction:name() == FACTION_POS_KEY and
				not context:garrison_residence():settlement_interface():port_slot():is_null_interface();
		end,
		function(context)
			pos_replenish_movement(context:character());
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
