load_script_libraries();

local gc = generated_cutscene:new(true);

gb = generated_battle:new(
	false,                                      -- screen starts black
	false,                                      -- prevent deployment for player
	false,                                      	-- prevent deployment for ai
	function() gb:start_generated_cutscene(gc) end, 	-- intro cutscene function
	false                                      	-- debug mode
);

gc:add_element(nil, nil, "wh2_main_qb_final_battle_00", 8000, false, false, false);
gc:add_element("Play_wh2_dlc10_HEF_Alarielle_QB_Final_Battle_pt_01", "wh2_dlc10_qb_hef_alarielle_final_battle_pt_01", "gc_orbit_90_medium_commander_front_close_low_01", 4000, false, false, false);
gc:add_element("Play_wh2_dlc10_HEF_Alarielle_QB_Final_Battle_pt_02", "wh2_dlc10_qb_hef_alarielle_final_battle_pt_02", "gc_slow_army_pan_front_left_to_front_right_far_high_01", 8000, false, false, false);
gc:add_element("Play_wh2_dlc10_HEF_Alarielle_QB_Final_Battle_pt_04", "wh2_dlc10_qb_hef_alarielle_final_battle_pt_04", "gc_orbit_ccw_90_medium_commander_front_left_extreme_high_01", 6000, false, false, false);
gc:add_element(nil,nil, nil, 1000, true, true, false);


gb:set_cutscene_during_deployment(true);

---------------------------
----HARD SCRIPT VERSION----
---------------------------
gb:set_objective_on_message("battle_started", "wh_main_qb_objective_attack_defeat_army");
gb:queue_help_on_message("spawn_reinforcements", "vco_alarielle_custom_quest_hellebron_message_valkia_descends");

-------ARMY SETUP-------
ga_ai_hellebrons_dark_elves = gb:get_army(gb:get_non_player_alliance_num(), 1);
ga_ai_valkias_swarm = gb:get_army(gb:get_non_player_alliance_num(), 2);


-------INITIAL ATTACK-------
ga_ai_hellebrons_dark_elves:attack_on_message("battle_started",2000);

-------VALKIA SWARM SURPRISE-------
ga_ai_hellebrons_dark_elves:message_on_casualties("spawn_reinforcements", 0.2);
ga_ai_valkias_swarm:reinforce_on_message("spawn_reinforcements");
ga_ai_valkias_swarm:attack_on_message("spawn_reinforcements",5000);


