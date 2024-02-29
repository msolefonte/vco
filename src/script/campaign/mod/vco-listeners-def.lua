local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_COP_KEY = "wh2_main_def_cult_of_pleasure";
local FACTION_HELLEBRON_KEY = "wh2_main_def_har_ganeth";
local FACTION_MALUS_KEY = "wh2_main_def_hag_graef";
local GAN_ITEM_REWARD_ARMOR = "wh2_main_anc_armour_armour_of_living_death";
local GAN_ITEM_REWARD_WEAPON = "wh2_main_anc_weapon_hydra_blade";
local UNLOCKABLE_SLAANESH_UNITS = { "wh3_main_sla_mon_fiends_of_slaanesh_0", "wh3_main_sla_mon_keeper_of_secrets_0" };
local KEY_D_HELLEBRON_SCOURING = "vco_def_hel_dilemma_scouring";
local KEY_D_MIRROR_MIRROR = "vco_def_malus_dilemma_mirror_mirror";


-- CHECKS --
local function check_malus_give_ancillary_if_faction_defeated(target_faction_key, ancillary_id)
    local target_faction = cm:get_faction(target_faction_key);
    local recipient_faction = cm:get_faction("wh2_main_def_hag_graef");
    if (target_faction == nil or target_faction:is_null_interface() or target_faction:is_dead())
    and not cm:get_saved_value("vco_malus" .. target_faction_key .. "trophy_obtained")
    then
      cm:set_saved_value("vco_malus" .. target_faction_key .. "trophy_obtained", true);
      cm:add_ancillary_to_faction(recipient_faction, ancillary_id, false);
    end
end

local function check_malus_defeated_factions()
    check_malus_give_ancillary_if_faction_defeated("wh3_dlc23_chd_astragoth", "vco_anc_follower_graven_idol");
    check_malus_give_ancillary_if_faction_defeated("wh3_main_vmp_lahmian_sisterhood", "vco_anc_follower_ruby_lahmia");
    check_malus_give_ancillary_if_faction_defeated("wh_main_dwf_dwarfs", "vco_anc_follower_dammaz_kron");
    check_malus_give_ancillary_if_faction_defeated("wh2_dlc15_hef_imrik", "vco_anc_follower_minaithnirs_skull");
    check_malus_give_ancillary_if_faction_defeated("wh3_main_ogr_goldtooth", "vco_anc_follower_golden_mawtooth");
end

local function vco_def_check_malus_final_battle_building_completion()
    local current_building_count = cm:get_saved_value("vco_def_malus_final_battle_building_checker");
    local updated_building_count = 1;
    if current_building_count then updated_building_count = current_building_count + 1 end;
    cm:set_saved_value("vco_def_malus_final_battle_building_checker", updated_building_count);
    if updated_building_count >= 5 then
        cm:set_saved_value("vco_def_malus_final_battle_already_happened", true);
        cm:trigger_mission(FACTION_MALUS_KEY, "vco_wh2_dlc14_qb_def_final_battle_malus", true);
    end
end

local function cop_lock_slaanesh_units()
	vlc.unit_locks:lock_units(UNLOCKABLE_SLAANESH_UNITS, FACTION_COP_KEY);
end

local function cop_unlock_slaanesh_units()
	vlc.unit_locks:unlock_units(UNLOCKABLE_SLAANESH_UNITS, FACTION_COP_KEY);
end

local function trigger_hellebron_dilemma()
	cm:trigger_dilemma(FACTION_HELLEBRON_KEY, KEY_D_HELLEBRON_SCOURING);
end

local function trigger_malus_dilemma()
	cm:trigger_dilemma(FACTION_MALUS_KEY, KEY_D_MIRROR_MIRROR);
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
		"vco_def_malus_1_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_MALUS_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_malus_dilemma,
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

    core:add_listener(
        "vco_def_malus_temples_activate_final_battle",
        "BuildingCompleted",
        function(context)
vco:log("notwork_listener");
            local building = context:building();
            local faction = building:faction();
            return not cm:get_saved_value("vco_def_malus_final_battle_already_happened") and
              building:name() == "vco_landmark_darkblade_soul_engine_2" and
              faction:name() == FACTION_MALUS_KEY and
              faction:is_human();
        end,
        vco_def_check_malus_final_battle_building_completion,
        true
    );

	core:add_listener(
		"vco_def_malus_trophy_hunting",
		"FactionTurnEnd",
		function(context)
			return context:faction():name() == FACTION_MALUS_KEY
			and context:faction():is_human();
		end,
		check_malus_defeated_factions,
		true
	);

end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
