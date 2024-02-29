local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local DILEMMA_TURNS_DELAY = 10;
local FACTION_MAN_KEY = "wh_main_vmp_vampire_counts";
local FACTION_HEL_KEY = "wh3_main_vmp_caravan_of_blue_roses";
local FACTION_VOL_KEY = "wh3_main_emp_cult_of_sigmar";
local FACTION_VLAD_KEY = "wh_main_vmp_schwartzhafen";
local KEY_D_OSSIFIED_PORTAL = "vco_vmp_man_dilemma_ossified_portal";
local KEY_D_DARK_BARGAIN = "vco_vmp_hel_dilemma_dark_bargain";
local KEY_D_LAST_STAND = "vco_vmp_vla_dilemma_last_stand";


local function trigger_man_dilemma()
	cm:trigger_dilemma(FACTION_MAN_KEY, KEY_D_OSSIFIED_PORTAL);
end

local function trigger_hel_dilemma()
	cm:trigger_dilemma(FACTION_HEL_KEY, KEY_D_DARK_BARGAIN);
end

local function trigger_vlad_dilemma()
	cm:trigger_dilemma(FACTION_VLAD_KEY, KEY_D_LAST_STAND);
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


-- LISTENERS --

local function add_listeners()
    core:add_listener(
        "vco_emp_vol_book_collected",
        "MissionSucceeded",
        function(context)
            return context:faction():is_human() and
                context:faction():name() == FACTION_MAN_KEY and
                context:mission():mission_record_key():sub(1,26) == "wh2_dlc09_books_of_nagash_";
        end,
        function(context)
            local book_number = string.sub(context:mission():mission_record_key(), -1);
            vlc.nagash_books:add(FACTION_MAN_KEY, book_number);
            vlc.nagash_books:check_all_books_collected(FACTION_MAN_KEY, 0);
        end,
        true
    );

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
		"vco_vmp_sla_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_VLAD_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_vlad_dilemma,
		false
	);

end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
