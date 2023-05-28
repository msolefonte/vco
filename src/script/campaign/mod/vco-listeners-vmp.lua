local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local DILEMMA_TURNS_DELAY = 10;
local FACTION_KEM_KEY = "wh2_dlc11_vmp_the_barrow_legion";
local FACTION_MAN_KEY = "wh_main_vmp_vampire_counts";
local FACTION_HEL_KEY = "wh3_main_vmp_caravan_of_blue_roses";
local FACTION_VOL_KEY = "wh3_main_emp_cult_of_sigmar";
local KEY_D_OSSIFIED_PORTAL = "vco_vmp_man_dilemma_ossified_portal";
local KEY_D_DARK_BARGAIN = "vco_vmp_hel_dilemma_dark_bargain";


local function trigger_man_dilemma()
	cm:trigger_dilemma(FACTION_MAN_KEY, KEY_D_OSSIFIED_PORTAL);
end

local function trigger_hel_dilemma()
	cm:trigger_dilemma(FACTION_HEL_KEY, KEY_D_DARK_BARGAIN);
end


local function bloodline_awoken()
	vco:set_mission_text("vco_" .. FACTION_KEM_KEY .. "_bloodline_completed", "vco_vmp_kem_3_bloodline_awoken_completed");
	vco:complete_mission(FACTION_KEM_KEY, "vco_" .. FACTION_KEM_KEY .. "_bloodline_completed");
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
	vlc.nagash_books:check_generic_all_books_collected(FACTION_MAN_KEY, mission, 8);
end

local function check_vol_collected_books(mission)
	vlc.nagash_books:check_generic_all_books_collected(FACTION_VOL_KEY, mission, 8);
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
		"vco_vmp_hel_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_HEL_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_hel_dilemma,
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

	core:add_listener(
		"vco_vmp_man_book_collected",
		"MissionSucceeded",
		function(context)
			return context:faction():is_human() and
				context:faction():name() == FACTION_MAN_KEY and
				context:mission():mission_record_key():sub(1,26) == "wh2_dlc09_books_of_nagash_";
		end,
		function(context)
			check_man_collected_books(context:mission());
		end,
		true
	);

	core:add_listener(
		"vco_vmp_vol_book_collected",
		"MissionSucceeded",
		function(context)
			return context:faction():is_human() and
				context:faction():name() == FACTION_VOL_KEY and
				context:mission():mission_record_key():sub(1,26) == "wh2_dlc09_books_of_nagash_";
		end,
		function(context)
			check_vol_collected_books(context:mission());
		end,
		true
	);

	core:add_listener(
		"vco_vmp_kem_3_bloodline_awoken",
		"RitualCompletedEvent",
		function(context)
			return context:performing_faction():name() == FACTION_KEM_KEY and
				context:performing_faction():is_human() and
				(
					context:ritual():ritual_key() == "wh2_dlc11_vmp_ritual_bloodline_awaken_von_carstein_03" or
						context:ritual():ritual_key() == "wh2_dlc11_vmp_ritual_bloodline_awaken_strigoi_03" or
						context:ritual():ritual_key() == "wh2_dlc11_vmp_ritual_bloodline_awaken_necrarch_03" or
						context:ritual():ritual_key() == "wh2_dlc11_vmp_ritual_bloodline_awaken_lahmian_03" or
						context:ritual():ritual_key() == "wh2_dlc11_vmp_ritual_bloodline_awaken_blood_dragon_03"
				)
		end,
		bloodline_awoken,
		false
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
