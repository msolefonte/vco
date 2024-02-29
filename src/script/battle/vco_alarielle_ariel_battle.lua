load_script_libraries();

local gc = generated_cutscene:new(true);

gb = generated_battle:new(
	false,                                      -- screen starts black
	false,                                      -- prevent deployment for player
	false,                                      	-- prevent deployment for ai
	function() gb:start_generated_cutscene(gc) end, 	-- intro cutscene function
	false                                      	-- debug mode
);

gc:add_element(nil, nil, "wh2_main_qb_final_battle_00", 5000, false, false, false);
gc:add_element("Play_wh_dlc05_qb_wef_durthu_daiths_sword_stage_4_pt_02", "vco_alarielle_ariel_durthus_speech_01", "gc_slow_enemy_army_pan_front_left_to_front_right_far_high_01", 12700, false, false, false);
gc:add_element("Play_wh_dlc05_qb_wef_durthu_daiths_sword_stage_3_pt_02", "vco_alarielle_ariel_durthus_speech_02", "gc_orbit_90_medium_commander_front_close_low_01", 10800, false, false, false);
gc:add_element("Play_wh_dlc05_qb_wef_durthu_daiths_sword_stage_3_pt_03", "vco_alarielle_ariel_durthus_speech_03", "gc_slow_army_pan_front_left_to_right_medium_low_01", 9100, false, false, false);
gc:add_element(nil,nil, nil, 1000, true, true, false);


gb:set_cutscene_during_deployment(true);


---------------------------
----HARD SCRIPT VERSION----
---------------------------
gb:set_objective_on_message("battle_started", "wh_main_qb_objective_attack_defeat_army");
gb:queue_help_on_message("spawn_reinforcements", "vco_alarielle_custom_quest_ariel_message_orion_comes");
gb:queue_help_on_message("spawn_reinforcements_twilight", "vco_alarielle_custom_quest_ariel_message_twilight_comes");
gb:queue_help_on_message("spawn_reinforcements_slaanesh", "vco_alarielle_custom_quest_ariel_message_slaanesh_comes");
gb:message_on_time_offset("spawn_reinforcements_slaanesh", 20000, "spawn_reinforcements_twilight");

-------ARMY SETUP-------
ga_ai_ariels_tainted = gb:get_army(gb:get_non_player_alliance_num(), "enemy_army");
ga_ai_orions_wild_hunt = gb:get_army(gb:get_non_player_alliance_num(), "enemy_reinforcements");
ga_ai_slaanesh_vaults_of_winter = gb:get_army(gb:get_non_player_alliance_num(), "enemy_reinforcements_2");

ga_ai_twilight_army = gb:get_army(gb:get_player_alliance_num(), "ally_chd");

-------INITIAL ATTACK-------
ga_ai_ariels_tainted:attack_on_message("battle_started",2000);

-------REINFORCEMENTS-------
ga_ai_ariels_tainted:message_on_casualties("spawn_reinforcements", 0.2);
ga_ai_orions_wild_hunt:reinforce_on_message("spawn_reinforcements");
ga_ai_orions_wild_hunt:attack_on_message("spawn_reinforcements",5000);

ga_ai_orions_wild_hunt:message_on_casualties("spawn_reinforcements_twilight", 0.2);
ga_ai_twilight_army:reinforce_on_message("spawn_reinforcements_twilight");
ga_ai_twilight_army:attack_on_message("spawn_reinforcements_twilight",5000);

ga_ai_slaanesh_vaults_of_winter:reinforce_on_message("spawn_reinforcements_slaanesh");
ga_ai_slaanesh_vaults_of_winter:attack_on_message("spawn_reinforcements_slaanesh",5000);

