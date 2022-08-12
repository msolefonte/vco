function vco_add_beastmen_final_battle_listener()
	if not cm:get_saved_value("bst_final_battle_quest") then
		core:add_listener(
			"Beastmen_Final_Battle",
			"FactionTurnStart",
			function(context)
				local faction = context:faction();

				return faction:is_human() and faction:name() == "wh_dlc03_bst_beastmen" and are_all_beastmen_final_battle_factions_dead();
			end,
			function()
				cm:trigger_mission("wh_dlc03_bst_beastmen", "wh_dlc03_qb_bst_the_final_battle", true);
				cm:set_saved_value("bst_final_battle_quest", true);
			end,
			false
		);
	end;
end;

function vco_check_skaven_clan_eshin_clans_reputation(faction)
    local contract_clans = {"mors", "moulder", "pestilens", "skyre"}
    local vco_clan_reputation_requirement = 78;

    local clans_matching_requisites = 0;

    for i = 1, #contract_clans do
        local rep_key = "skv_clan_"..contract_clans[i];

        if faction:has_pooled_resource(rep_key) == true then
            local clan_reputation = faction:pooled_resource(rep_key):value();

            if clan_reputation >= vco_clan_reputation_requirement then
                clans_matching_requisites = clans_matching_requisites + 1;
            end
        end
    end

    if clans_matching_requisites >= 1 then
        -- cm:complete_scripted_mission_objective("wh_main_short_victory", "attain_clan_reputation_1", true);
        -- cm:complete_scripted_mission_objective("wh_main_long_victory", "attain_clan_reputation_1", true);
        -- cm:set_scripted_mission_text("wh_main_short_victory", "attain_clan_reputation_1", "mission_text_text_vco2_attain_clan_reputation_1");
        -- cm:set_scripted_mission_text("wh_main_long_victory", "attain_clan_reputation_1", "mission_text_text_vco2_attain_clan_reputation_1");
        cm:set_scripted_mission_text("wh_main_short_victory", "attain_clan_reputation_1", "mission_text_text_vco2_attain_clan_reputation_2_1");
        cm:set_scripted_mission_text("wh_main_long_victory", "attain_clan_reputation_1", "mission_text_text_vco2_attain_clan_reputation_2_1");
    end

    if clans_matching_requisites >= 2 then
        cm:complete_scripted_mission_objective("wh_main_short_victory", "attain_clan_reputation_2", true);
        cm:complete_scripted_mission_objective("wh_main_long_victory", "attain_clan_reputation_2", true);
        cm:set_scripted_mission_text("wh_main_short_victory", "attain_clan_reputation_1", "mission_text_text_vco2_attain_clan_reputation_2");
        cm:set_scripted_mission_text("wh_main_long_victory", "attain_clan_reputation_1", "mission_text_text_vco2_attain_clan_reputation_2");
    end
end

function vco_check_skaven_clan_skyre_workshop()
    if current_workshop_lvl >= 2 then
        -- cm:set_scripted_mission_text("wh_main_short_victory", "get_forbidden_workshop_level_3", "mission_text_text_vco2_main_clan_skyre_workshop_lvl_3_2");
        -- cm:set_scripted_mission_text("wh_main_long_victory", "get_forbidden_workshop_level_3", "mission_text_text_vco2_main_clan_skyre_workshop_lvl_3_2");
        cm:set_scripted_mission_text("wh_main_short_victory", "get_forbidden_workshop_level_4", "mission_text_text_vco2_main_clan_skyre_workshop_lvl_4_2");
        cm:set_scripted_mission_text("wh_main_long_victory", "get_forbidden_workshop_level_4", "mission_text_text_vco2_main_clan_skyre_workshop_lvl_4_2");
    end

    if current_workshop_lvl >= 3 then
        -- cm:complete_scripted_mission_objective("wh_main_short_victory", "get_forbidden_workshop_level_3", true);
        -- cm:complete_scripted_mission_objective("wh_main_long_victory", "get_forbidden_workshop_level_3", true);
        -- cm:set_scripted_mission_text("wh_main_short_victory", "get_forbidden_workshop_level_3", "mission_text_text_vco2_main_clan_skyre_workshop_lvl_3");
        -- cm:set_scripted_mission_text("wh_main_long_victory", "get_forbidden_workshop_level_3", "mission_text_text_vco2_main_clan_skyre_workshop_lvl_3");
        cm:set_scripted_mission_text("wh_main_short_victory", "get_forbidden_workshop_level_4", "mission_text_text_vco2_main_clan_skyre_workshop_lvl_4_3");
        cm:set_scripted_mission_text("wh_main_long_victory", "get_forbidden_workshop_level_4", "mission_text_text_vco2_main_clan_skyre_workshop_lvl_4_3");
    end

    if current_workshop_lvl >= 4 then
        cm:complete_scripted_mission_objective("wh_main_short_victory", "get_forbidden_workshop_level_4", true);
        cm:complete_scripted_mission_objective("wh_main_long_victory", "get_forbidden_workshop_level_4", true);
        cm:set_scripted_mission_text("wh_main_short_victory", "get_forbidden_workshop_level_4", "mission_text_text_vco2_main_clan_skyre_workshop_lvl_4");
        cm:set_scripted_mission_text("wh_main_long_victory", "get_forbidden_workshop_level_4", "mission_text_text_vco2_main_clan_skyre_workshop_lvl_4");
    end
end

function add_listeners()
    out("#### Adding Victory Conditions Overhaul Listeners ####");
    if cm:is_multiplayer() == false then
        out("#### Adding Beastmen Victory Conditions Overhaul Listeners ####");
        cm:set_saved_value("vco_bst_final_battle_quest", false);
        core:add_listener(
            "vco_beastmen_turn_50_start",
            "FactionTurnStart",
            function(context)
                local faction = context:faction();
                return faction:is_human() and faction:name() == "wh_dlc03_bst_beastmen" and cm:turn_number() == 50;
            end,
            function()
                -- Duplicated because I do not exactly know how this work:
                -- - Key bst_final_battle_quest is vanilla and should be false by default
                -- - Key vco_bst_final_battle_quest is custom, but I do not know if value is correctly saved
                if not (cm:get_saved_value("bst_final_battle_quest") and cm:get_saved_value("vco_bst_final_battle_quest")) then
                    cm:trigger_mission("wh_dlc03_bst_beastmen", "wh_dlc03_qb_bst_the_final_battle", true);
                    cm:set_saved_value("bst_final_battle_quest", true);
                    cm:set_saved_value("vco_bst_final_battle_quest", true);
                end
            end,
            false
        );

        out("#### Adding Skaven Victory Conditions Overhaul Listeners ####");
        core:add_listener(
            "vco_clan_eshin_faction_turn_start",
            "FactionTurnStart",
            function(context)
                return context:faction():name() == "wh2_main_skv_clan_eshin" and context:faction():name() == local_faction end,
            function(context)
                vco_check_skaven_clan_eshin_clans_reputation(context:faction());
            end,
            true
        );
        core:add_listener(
            "vco_clan_eshin_faction_turn_end",
            "FactionTurnEnd",
            function(context)
                return context:faction():name() == "wh2_main_skv_clan_eshin" and context:faction():name() == local_faction end,
            function(context)
                vco_check_skaven_clan_eshin_clans_reputation(context:faction());
            end,
            true
        );
        core:add_listener(
            "vco_clan_skyre_faction_turn_start",
            "FactionTurnStart",
            function(context)
                return context:faction():name() == "wh2_main_skv_clan_skyre" and context:faction():name() == local_faction end,
            function(context)
                vco_check_skaven_clan_skyre_workshop(context:faction());
            end,
            true
        );
        core:add_listener(
            "vco_clan_skyre_faction_turn_end",
            "FactionTurnEnd",
            function(context)
                return context:faction():name() == "wh2_main_skv_clan_skyre" and context:faction():name() == local_faction
            end,
            function(context)
                vco_check_skaven_clan_skyre_workshop(context:faction());
            end,
            true
        );
    end
end

function main()
    add_listeners();
end

main();