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
gc:add_element("Play_wh2_dlc10_DEF_Hellebron_QB_Final_Battle_001", "vco_hellebron_alarielle_speech_01", "gc_orbit_90_medium_commander_front_close_low_01", 16000, false, false, false);
gc:add_element(nil, "vco_hellebron_alarielle_speech_02", "gc_slow_enemy_army_pan_front_left_to_front_right_far_high_01", 16500, false, false, false);
gc:add_element(nil,nil, nil, 1000, true, true, false);


gb:set_cutscene_during_deployment(true);

---------------------------
----HARD SCRIPT VERSION----
---------------------------
gb:set_objective_on_message("battle_started", "wh_main_qb_objective_attack_defeat_army");
gb:queue_help_on_message("spawn_reinforcements", "vco_hellebron_custom_quest_alarielle_message_nkari_arrives");

-------ARMY SETUP-------
ga_ai_alarielles_glittering_host = gb:get_army(gb:get_non_player_alliance_num(), 1);
ga_ai_nkaris_soul_flayers = gb:get_army(gb:get_non_player_alliance_num(), 2);


-------INITIAL ATTACK-------
ga_ai_alarielles_glittering_host:attack_on_message("battle_started",2000);

-------VALKIA SWARM SURPRISE-------
ga_ai_alarielles_glittering_host:message_on_casualties("spawn_reinforcements", 0.2);
ga_ai_nkaris_soul_flayers:reinforce_on_message("spawn_reinforcements");
ga_ai_nkaris_soul_flayers:attack_on_message("spawn_reinforcements",5000);


