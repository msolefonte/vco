local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_COP_KEY = "wh2_main_def_cult_of_pleasure";
local FACTION_HELLEBRON_KEY = "wh2_main_def_har_ganeth";
local GAN_ITEM_REWARD_ARMOR = "wh2_main_anc_armour_armour_of_living_death";
local GAN_ITEM_REWARD_WEAPON = "wh2_main_anc_weapon_hydra_blade";
local UNLOCKABLE_SLAANESH_UNITS = { "wh3_main_sla_mon_fiends_of_slaanesh_0", "wh3_main_sla_mon_keeper_of_secrets_0" };
local KEY_D_HELLEBRON_SCOURING = "vco_def_hel_dilemma_scouring";

local function cop_lock_slaanesh_units()
	vlc.unit_locks:lock_units(UNLOCKABLE_SLAANESH_UNITS, FACTION_COP_KEY);
end

local function cop_unlock_slaanesh_units()
	vlc.unit_locks:unlock_units(UNLOCKABLE_SLAANESH_UNITS, FACTION_COP_KEY);
end

local function trigger_hellebron_dilemma()
	cm:trigger_dilemma(FACTION_HELLEBRON_KEY, KEY_D_HELLEBRON_SCOURING);
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_def_cop_first_turn_start",
		"FactionTurnStart",
		function()
			return cm:model():turn_number() == 1;
		end,
		cop_lock_slaanesh_units,
		false
	);

	core:add_listener(
		"vco_def_cop_route_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_COP_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		cop_unlock_slaanesh_units,
		false
	);

	core:add_listener(
		"vco_def_hel_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_HELLEBRON_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_hellebron_dilemma,
		false
	);

    core:add_listener(
    "vco_def_hellebron_battle_desecration_isha",
    "BuildingCompleted",
    function(context)
        local building = context:building();
        return not cm:get_saved_value("vco_def_hellebron_battle_desecration_isha_already_happened") and
        building:name() == "wh2_main_special_shrine_of_khaine_def_1" and
        building:faction():name() == FACTION_HELLEBRON_KEY and
        building:faction():is_human() and
        not building:faction():is_null_interface();
    end,
    function()
      cm:set_saved_value("vco_def_hellebron_battle_desecration_isha_already_happened", true);
      cm:trigger_mission(FACTION_HELLEBRON_KEY, "vco_custom_quest_hellebron_alarielle", true);
    end,
    true
    );

end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
