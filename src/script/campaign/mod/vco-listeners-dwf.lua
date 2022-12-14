local vlc = core:get_static_object("vco-lib-commons");

local DILEMMA_TURNS_DELAY = 10;
local FACTION_MAN_ID = "dwf_gro";
local FACTION_MAN_KEY = "wh3_main_dwf_the_ancestral_throng";
local KEY_D_OSSIFIED_PORTAL = "vco_dwf_gro_1_dilemma_elves";

local function trigger_man_dilemma()
	cm:trigger_dilemma(FACTION_MAN_KEY, KEY_D_OSSIFIED_PORTAL);
end

local function trigger_man_dilemma_choice_made(choice)
	if choice == 0 then
		cm:teleport_to(cm:char_lookup_str(cm:get_faction(FACTION_MAN_KEY):faction_leader()), 666, 580);
	elseif choice == 1 then
		local target_turn_number = cm:turn_number() + DILEMMA_TURNS_DELAY;

		core:add_listener(
			"vco_vmp_man_dilemma_trigger_delay",
			"FactionTurnStart",
			function(context)
				return context:faction():is_human() and
					context:faction():name() == FACTION_MAN_KEY and
					cm:turn_number() == target_turn_number;
			end,
			trigger_man_dilemma,
			false
		);
	end
end

-- CHECKS --

local function check_man_collected_books(mission)
	vlc.nagash_books:check_generic_all_books_collected(FACTION_MAN_ID, mission, 8);
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_vmp_man_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_MAN_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_man_dilemma,
		false
	);

	core:add_listener(
		"vco_vmp_man_dilemma_choice_made",
		"DilemmaChoiceMadeEvent",
		function(context)
			return context:dilemma() == KEY_D_OSSIFIED_PORTAL;
		end,
		function(context)
			trigger_man_dilemma_choice_made(context:choice());
		end,
		true
	);

end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
