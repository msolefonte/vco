local vlc = core:get_static_object("vco-lib-commons");

local FACTION_TGO_KEY = "wh3_main_ksl_the_great_orthodoxy";
local FACTION_TIC_KEY = "wh3_main_ksl_the_ice_court";
local KEY_D_CALL_FOR_AID = "vco_ksl_kat_3_dilemma_call_for_aid";
local KEY_U_GIANT_SLAYERS = "wh2_dlc10_dwf_inf_giant_slayers";
local KEY_U_GREAT_CANNON = "wh_main_emp_art_great_cannon";
local KEY_U_LUMINARK = "wh_main_emp_veh_luminark_of_hysh_0";
local KEY_U_MORTAR = "wh_main_emp_art_mortar";
local KEY_U_SLAYERS = "wh_main_dwf_inf_slayers";

local function tgo_lock_luminark()
	vlc.unit_locks:lock_unit(KEY_U_LUMINARK, FACTION_TGO_KEY);
end

local function tgo_unlock_luminark()
	vlc.unit_locks:unlock_unit(KEY_U_LUMINARK, FACTION_TGO_KEY);
end

local function tic_lock_units()
	vlc.unit_locks:lock_unit(KEY_U_SLAYERS, FACTION_TIC_KEY);
	vlc.unit_locks:lock_unit(KEY_U_GIANT_SLAYERS, FACTION_TIC_KEY);
	vlc.unit_locks:lock_unit(KEY_U_MORTAR, FACTION_TIC_KEY);
	vlc.unit_locks:lock_unit(KEY_U_GREAT_CANNON, FACTION_TIC_KEY);
end

local function tic_unlock_dwarf_units()
	vlc.unit_locks:unlock_unit(KEY_U_SLAYERS, FACTION_TIC_KEY);
	vlc.unit_locks:unlock_unit(KEY_U_GIANT_SLAYERS, FACTION_TIC_KEY);
end

local function tic_unlock_empire_units()
	vlc.unit_locks:unlock_unit(KEY_U_MORTAR, FACTION_TIC_KEY);
	vlc.unit_locks:unlock_unit(KEY_U_GREAT_CANNON, FACTION_TIC_KEY);
end

-- TRIGGERS --

local function trigger_tic_dilemma()
	cm:trigger_dilemma(FACTION_TIC_KEY, KEY_D_CALL_FOR_AID);
end

local function trigger_tic_dilemma_choice_made(choice)
	if choice == 1 then
		tic_unlock_dwarf_units();
	elseif choice == 2 then
		tic_unlock_empire_units();
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_ksl_tgo_first_turn_start",
		"FactionTurnStart",
		function(context)
			return cm:model():turn_number() == 1 and
				context:faction():name() == FACTION_TGO_KEY;
		end,
		tgo_lock_luminark,
		false
	);

	core:add_listener(
		"vco_ksl_tgo_route_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_TGO_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		tgo_unlock_luminark,
		false
	);

	core:add_listener(
		"vco_ksl_tic_first_turn_start",
		"FactionTurnStart",
		function(context)
			return cm:model():turn_number() == 1 and
				context:faction():name() == FACTION_TIC_KEY;
		end,
		tic_lock_units,
		false
	);

	core:add_listener(
		"vco_ksl_tic_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_TIC_KEY and
				context:mission():mission_issuer_record_key() == "KING_KAZADOR";
		end,
		trigger_tic_dilemma,
		false
	);

	core:add_listener(
		"vco_ksl_tic_dilemma_choice_made",
		"DilemmaChoiceMadeEvent",
		function(context)
			return context:dilemma() == KEY_D_CALL_FOR_AID;
		end,
		function(context)
			trigger_tic_dilemma_choice_made(context:choice());
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
