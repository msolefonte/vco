load_script_libraries();

local gc = generated_cutscene:new(true);

gb = generated_battle:new(
	false,                                      -- screen starts black
	false,                                      -- prevent deployment for player
	false,                                      	-- prevent deployment for ai
	function() gb:start_generated_cutscene(gc) end, 	-- intro cutscene function
	false                                      	-- debug mode
);

gc:add_element(nil, nil, "qb_louen_errantry_war_chaos_01", 6000, false, false, false);
gc:add_element("Play_wh2_dlc10_HEF_Alith_Anar_QB_Final_Battle_pt_3", "vco_conclave_light_speech_01", "gc_orbit_90_medium_commander_back_right_extreme_high_01", 9000, false, false, false);
gc:add_element(nil, "vco_conclave_light_speech_02", "gc_slow_army_pan_front_left_to_front_right_far_high_01", 12000, false, false, false);
gc:add_element(nil, "vco_conclave_light_speech_03", "gc_slow_enemy_army_pan_front_left_to_front_right_far_high_01", 7500, false, false, false);
gc:add_element(nil, "vco_conclave_light_speech_04", "gc_orbit_90_medium_commander_back_left_extreme_high_01", 4500, false, false, false);
gc:add_element(nil, "vco_conclave_light_speech_05", "gc_medium_army_pan_front_right_to_front_left_close_medium_01", 6000, false, false, false);
gc:add_element(nil, "vco_conclave_light_speech_06", "gc_fast_commander_back_medium_medium_to_close_low_01", 4000, false, false, false);
gc:add_element(nil, "vco_conclave_light_speech_07", "gc_orbit_90_medium_commander_front_close_low_01", 15300, false, false, false);
gc:add_element(nil, "vco_conclave_light_speech_08", "gc_slow_commander_front_medium_medium_to_close_low_01", 4200, false, false, false);
gc:add_element(nil,nil, nil, 1000, true, true, false);


gb:set_cutscene_during_deployment(true);


---------------------------
----HARD SCRIPT VERSION----
---------------------------
gb:set_objective_on_message("battle_started", "wh_main_qb_objective_attack_defeat_army");

gb:message_on_time_offset("spawn_reinforcements_artillery_barrage", 30000, "spawn_reinforcements_chaos_dwarfs");
gb:message_on_time_offset("spawn_reinforcements_archaon_arrives", 90000, "spawn_reinforcements_artillery_barrage");
gb:message_on_time_offset("spawn_reinforcements_cavalry_comes", 30000, "spawn_reinforcements_archaon_arrives");

gb:queue_help_on_message("spawn_reinforcements_chaos_dwarfs", "vco_karl_franz_custom_quest_message_chaos_dwarfs_attack");
gb:queue_help_on_message("spawn_reinforcements_artillery_barrage", "vco_karl_franz_custom_quest_message_cathayans_come");
gb:queue_help_on_message("spawn_reinforcements_archaon_arrives", "vco_karl_franz_custom_quest_message_archaon_attacks");
gb:queue_help_on_message("spawn_reinforcements_cavalry_comes", "vco_karl_franz_custom_quest_message_cavalary_arrives");

--gb:queue_help_on_message("spawn_reinforcements", "vco_alarielle_custom_quest_ariel_message_orion_comes");
--gb:queue_help_on_message("spawn_reinforcements_twilight", "vco_alarielle_custom_quest_ariel_message_twilight_comes");
--gb:queue_help_on_message("spawn_reinforcements_slaanesh", "vco_alarielle_custom_quest_ariel_message_slaanesh_comes");
--gb:message_on_time_offset("spawn_reinforcements_slaanesh", 20000, "spawn_reinforcements_twilight");

-------ARMY SETUP-------
ga_ai_grand_alliance = gb:get_army(gb:get_player_alliance_num(), "player_ally");
ga_ai_snow_and_steel = gb:get_army(gb:get_player_alliance_num(), "reinforcements_1");
ga_ai_gold_and_iron = gb:get_army(gb:get_player_alliance_num(), "reinforcements_2");

ga_ai_gibbering_tide = gb:get_army(gb:get_non_player_alliance_num(), "enemy_army_1");
ga_ai_beasts_of_chaos = gb:get_army(gb:get_non_player_alliance_num(), "enemy_army_2");
ga_ai_chaos_dwarfs = gb:get_army(gb:get_non_player_alliance_num(), "enemy_reinforcements_1");
ga_ai_archaons_warhost = gb:get_army(gb:get_non_player_alliance_num(), "enemy_reinforcements_2");



-------INITIAL ATTACK-------
ga_ai_grand_alliance:attack_on_message("battle_started",2000);
ga_ai_gibbering_tide:attack_on_message("battle_started",2000);
ga_ai_beasts_of_chaos:attack_on_message("battle_started",2000);

-------REINFORCEMENTS-------
ga_ai_gibbering_tide:message_on_casualties("spawn_reinforcements_chaos_dwarfs", 0.2);
ga_ai_chaos_dwarfs:reinforce_on_message("spawn_reinforcements_chaos_dwarfs");
ga_ai_chaos_dwarfs:attack_on_message("spawn_reinforcements_chaos_dwarfs",5000);

ga_ai_gold_and_iron:reinforce_on_message("spawn_reinforcements_artillery_barrage");
ga_ai_gold_and_iron:attack_on_message("spawn_reinforcements_artillery_barrage",5000);

ga_ai_archaons_warhost:reinforce_on_message("spawn_reinforcements_archaon_arrives");
ga_ai_archaons_warhost:attack_on_message("spawn_reinforcements_archaon_arrives",5000);

ga_ai_snow_and_steel:reinforce_on_message("spawn_reinforcements_cavalry_comes");
ga_ai_snow_and_steel:attack_on_message("spawn_reinforcements_cavalry_comes",5000);

Cathayan_Charge = new_sfx("Play_wh2_dlc10_HEF_Alith_Anar_QB_Final_Battle_pt_4");
Bretonnian_Charge = new_sfx("Play_wh2_main_qb_skv_queek_headtaker_final_battle_pt_01");
gb:play_sound_on_message("spawn_reinforcements_artillery_barrage", Cathayan_Charge, nil, 3000);
gb:play_sound_on_message("spawn_reinforcements_cavalry_comes", Bretonnian_Charge, nil, 3000);





