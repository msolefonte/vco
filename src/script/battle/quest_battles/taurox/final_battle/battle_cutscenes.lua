local cam = bm:camera()
local cutscene_queue = {}

bm:camera():fade(true, 0);

-------------------------------------------------------------------------------------------------
---------------------------------------- COMPOSITE SCENES ---------------------------------------
-------------------------------------------------------------------------------------------------

herdstone_idle = "composite_scene/wh2_dlc17_battle_enviro_heart_of_the_dark_herdstone.csc";
herdstone_powerup = "composite_scene/wh2_dlc17_battle_enviro_heart_of_the_dark_herdstone_khorne.csc";
herdstone_powerloop = "composite_scene/wh2_dlc17_battle_enviro_heart_of_the_dark_herdstone_khorne_looping.csc";
bm:start_terrain_composite_scene(herdstone_idle);

-------------------------------------------------------------------------------------------------
--------------------------------------- AUDIO TRIGGERS ----------------------------------------
-------------------------------------------------------------------------------------------------

--[[wh2_main_sfx = new_sfx("Play_Movie_Warhammer2_Heart_of_Dark_Taurox_Intro");
wh2_middlebattle1_sfx = new_sfx("Play_Movie_Warhammer2_Heart_of_Dark_Taurox_MidBattle1");
wh2_middlebattle2_sfx = new_sfx("Play_Movie_Warhammer2_Heart_of_Dark_Taurox_MidBattle2");]]

-------------------------------------------------------------------------------------------------
---------------------------------------------- VO -----------------------------------------------
-------------------------------------------------------------------------------------------------
--Intro Taurox's Speech
taurox_intro_01 = new_sfx("play_wh2_dlc17_bst_taurox_final_battle_pt_01"); -- At last! The Heart of the Dark. The Great Herdstone belong to Taurox! Wait… What?
taurox_intro_02 = new_sfx("play_wh2_dlc17_bst_taurox_final_battle_pt_02"); -- Morghur! By the Dark Gods… Taurox is chosen! Taurox is Strongest! Grrrgh!
taurox_intro_03 = new_sfx("play_wh2_dlc17_bst_taurox_final_battle_pt_03"); -- Morghur already bring offerings to the Herdstone… Taurox take them! Taurox make sacrifice for Dark Masters! Hurr!
taurox_intro_04 = new_sfx("play_wh2_dlc17_bst_taurox_final_battle_pt_04"); -- Daemons flock to Heart of the Dark. They come for Taurox’s offering, not Morghur’s! Taurox must appease Dark Masters…
taurox_intro_05 = new_sfx("play_wh2_dlc17_bst_taurox_final_battle_pt_05"); -- I challenge! If Morghur not surrender, Taurox crush him! Feel Bloodgreed! To War!

--Cutscene 1 - Morghur Dead
taurox_igc1_01 = new_sfx("play_wh2_dlc17_bst_taurox_final_battle_phase_2_pt_01"); -- Morghur weak! Leader of nothing. Me strongest!
taurox_igc1_02 = new_sfx("play_wh2_dlc17_bst_taurox_final_battle_phase_2_pt_02"); -- Morghur's brayherd obeys Taurox now! Release prisoners! Begin sacrifices!
taurox_igc1_03 = new_sfx("play_wh2_dlc17_bst_taurox_final_battle_phase_3_pt_02"); -- Hated Coldskins stalk Taurox. Now they die too.

--Cutscene 2 - Ritual Complete
taurox_igc2_01 = new_sfx("play_wh2_dlc17_bst_taurox_final_battle_phase_3_pt_01"); -- Many sacrifices made. Dark Masters are pleased!
taurox_igc2_02 = new_sfx("play_wh2_dlc17_bst_taurox_final_battle_phase_3_pt_03"); -- The hiding coward is here... Good! All will be sacrifices. More favour for Taurox!

-------------------------------------------------------------------------------------------------
--------------------------------------- OPENING CUTSCENE ----------------------------------------
-------------------------------------------------------------------------------------------------
function end_deployment_phase()
	bm:out("\tend_deployment_phase() called");

	-- teleport units into their desired positions
	battle_start_teleport_units();
	--bm:modify_battle_speed(0);	
	local cam = bm:camera();
	-- REMOVE ME
	cam:fade(true, 0);
	-- declare cutscene
	local cutscene_intro = cutscene:new(
		"cutscene_intro", 						-- unique string name for cutscene
		ga_taurox.sunits,					-- unitcontroller over player's army
		61800, 									-- duration of cutscene in ms
		function() intro_cutscene_end() end		-- what to call when cutscene is finished
	);
	local player_units_hidden = false;
	-- set up subtitles
	local subtitles = cutscene_intro:subtitles();
	subtitles:set_alignment("bottom_centre");
	subtitles:clear();
	-- cutscene_intro:set_post_cutscene_fade_time(0);
	-- skip callback
	cutscene_intro:set_skippable(
		true, 
		function()
			local cam = bm:camera();
			cam:fade(true, 0);
			bm:stop_cindy_playback(true);
			if player_units_hidden then
				ga_taurox:set_enabled(true)
			end;				
			bm:callback(function() cam:fade(false, 0.5) end, 500);
		end
	);
	
	-- set up actions on cutscene
	cutscene_intro:action(function() cam:fade(false, 1) end, 1000);
	
	-- cutscene_intro:action(function() cam:move_to(v(-781.747, 84.081, 5.09), v(-770.503, 81.635, 21.587), 0, false, 30) end, 0);	

	cutscene_intro:action(function() bm:cindy_playback("script/battle/quest_battles/_cutscene/managers/heart_first_01.CindySceneManager", 0, 2) end, 200);
	cutscene_intro:action(
		function()
			player_units_hidden = false;
			ga_taurox:set_enabled(true) 
		end, 
		200
	);	
	
	-- Voiceover and Subtitle Timings --

	
	--cutscene_intro:action(function() cutscene_intro:play_sound(wh2_main_sfx) end, 0);

--wh2_dlc17_bst_taurox_final_battle_pt_01 - 11s
--wh2_dlc17_bst_taurox_final_battle_pt_02 - 10s
--wh2_dlc17_bst_taurox_final_battle_pt_03 - 13s
--wh2_dlc17_bst_taurox_final_battle_pt_04 - 13s
--wh2_dlc17_bst_taurox_final_battle_pt_05 - 15s
	
	cutscene_intro:action(function() cutscene_intro:play_sound(taurox_intro_01) end, 2000);	
	cutscene_intro:action(function() cutscene_intro:show_custom_cutscene_subtitle("scripted_subtitles_localised_text_wh2_dlc17_bst_taurox_final_battle_pt_01", "subtitle_with_frame", 0.1, true) end, 2000);	
	cutscene_intro:action(function() cutscene_intro:hide_custom_cutscene_subtitles() end, 11000);
	
	cutscene_intro:action(function() cutscene_intro:play_sound(taurox_intro_02) end, 11500);	
	cutscene_intro:action(function() cutscene_intro:show_custom_cutscene_subtitle("scripted_subtitles_localised_text_wh2_dlc17_bst_taurox_final_battle_pt_02", "subtitle_with_frame", 0.1, true) end, 11500);	
	cutscene_intro:action(function() cutscene_intro:hide_custom_cutscene_subtitles() end, 21500);
	
	cutscene_intro:action(function() cutscene_intro:play_sound(taurox_intro_03) end, 22000);	
	cutscene_intro:action(function() cutscene_intro:show_custom_cutscene_subtitle("scripted_subtitles_localised_text_wh2_dlc17_bst_taurox_final_battle_pt_03", "subtitle_with_frame", 0.1, true) end, 22000);	
	cutscene_intro:action(function() cutscene_intro:hide_custom_cutscene_subtitles() end, 35000);
	
	cutscene_intro:action(function() cutscene_intro:play_sound(taurox_intro_04) end, 35500);
	cutscene_intro:action(function() cutscene_intro:show_custom_cutscene_subtitle("scripted_subtitles_localised_text_wh2_dlc17_bst_taurox_final_battle_pt_04", "subtitle_with_frame", 0.1, true) end, 35500);	
	cutscene_intro:action(function() cutscene_intro:hide_custom_cutscene_subtitles() end, 47500);

	cutscene_intro:action(function() cutscene_intro:play_sound(taurox_intro_05) end, 48000);
	cutscene_intro:action(function() cutscene_intro:show_custom_cutscene_subtitle("scripted_subtitles_localised_text_wh2_dlc17_bst_taurox_final_battle_pt_05", "subtitle_with_frame", 0.1) end, 48000);	
	cutscene_intro:action(function() cutscene_intro:hide_custom_cutscene_subtitles() end, 61500);
	
	cutscene_intro:start();
end;

function intro_cutscene_end()
	gb.sm:trigger_message("01_intro_cutscene_end")
end;

-------------------------------------------------------------------------------------------------
------------------------------------ CUTSCENE QUEUE SYSTEM --------------------------------------
-------------------------------------------------------------------------------------------------

function enqueue_cutscene(c)
    if bm:is_any_cutscene_running() then
        table.insert(cutscene_queue, c);
    else
        c:start();
    end;    
end;

function check_cutscene_queue()
    if #cutscene_queue > 0 then
        cutscene_queue[1]:start();
        table.remove(cutscene_queue, 1);
        return true;
    end;
    return false;
end;

-------------------------------------------------------------------------------------------------
-------------------------------- CUTSCENE 1 - MORGHUR IS SLAIN! ---------------------------------
-------------------------------------------------------------------------------------------------

cutscene_morghur_dead = cutscene:new(
	"cutscene_morghur_dead", 					-- unique string name for cutscene
	ga_taurox.sunits, 									-- unitcontroller over player's army
	42000,												-- duration of cutscene in ms
	function() 
		cutscene_morghur_dead_end()
		check_cutscene_queue()
	end	-- what to call when cutscene is finished
);

cutscene_morghur_dead:set_restore_cam(2, v(-101.098633,108.695152,517.100586),v(-32.25,60.446899,343.165039), 2);
cutscene_morghur_dead:set_close_advisor_on_end(false);
cutscene_morghur_dead:set_post_cutscene_fade_time(0);
cutscene_morghur_dead:set_should_disable_unit_ids(true);
cutscene_morghur_dead:set_should_enable_cinematic_camera(false);
cutscene_morghur_dead:set_skippable(false);
cutscene_morghur_dead:set_debug(false);

function play_cutscene_morghur_dead()

--Turn Invincibility On and Morale Losses Off
--Player + Allies
	ga_taurox.sunits:invincible_if_standing(true)
	cam:fade(true, 1);
	gb.sm:trigger_message("lzd_move");
	gb.sm:trigger_message("brays_move");
	cutscene_morghur_dead:action(
		function()
		-----------------------------------------------
		-- Dynamic Teleport Script for Player Armies --
		-----------------------------------------------
		-- In campaign players can bring less than 20 units into the battle, which can break the usual way of teleporting units.
		-- This script allows you to dynamically teleport an army by checking how many units are in the player's army.
		-- Feel free to change any of the variable names e.g. "teleport_coords", "current_teleport_coords", "army_size"

		-- The array below defines your coordinates, replace these numbers with your own values.
		-- Be aware that if you have less coordinates than units, some units will not get teleported.
		-- The coordinates will teleport units based on their index, so the General will be teleported first, followed by Heroes, then units etc.
		-- It does not matter if you define more coordinates than you need. 20 is a good number.
			teleport_coords = {
				{coord = v(-8.25993, 507.67), rot = 0, width = 2.43}, --Taurox
				{coord = v(6.90786, 246.629), rot = 180, width = 42}, -- Shaman
				{coord = v(54.916, 198.094), rot = 180, width = 42}, -- Bestigor
				{coord = v(11.0523, 196.31), rot = 180, width = 42}, -- Bestigor
				{coord = v(-36.7287, 194.858), rot = 180, width = 42}, -- Bestigor
				{coord = v(-144.229, 313.703), rot = 240, width = 42}, -- Bestigor
				{coord = v(46.3427, 280.311), rot = 180, width = 42}, -- Rzgor Chariot
				{coord = v(-26.7049, 283), rot = 210, width = 42}, -- Rzgor Chariot
				{coord = v(195.45, 309.844), rot = 150, width = 42}, -- Centigor
				{coord = v(-141.547, 390.998), rot = 240, width = 42}, -- Centigor
				{coord = v(42.7861, 371.8), rot = 180, width = 42}, -- Ghorgon
				{coord = v(-24.8035, 373.205), rot = 180, width = 42}, -- Ghorgon
				{coord = v(-186.359, 370.464), rot = 240, width = 42}, -- Minoshield
				{coord = v(236.528, 274.959), rot = 160, width = 42}, -- Minoshield
				{coord = v(187.83, 253.982), rot = 160, width = 42}, -- Minoshield
				{coord = v(96.3337, 375.01), rot = 140, width = 42}, -- MinoGW
				{coord = v(44.8343, 330.877), rot = 180, width = 42}, -- MinoGW
				{coord = v(-27.1267, 334.817), rot = 180, width = 42}, -- MinoGW
				{coord = v(-84.1512, 371.14), rot = 220, width = 42}, -- MinoGW
				{coord = v(7.30926, 382.179), rot = 180, width = 40}, -- Cygor
			};

			army_size = ga_taurox.sunits:count()
			for i = 1, army_size do
				local current_teleport_coord = teleport_coords[i];
				if(#teleport_coords <  i) then
					out.design("WARNING: Not enough coordinates to support the current army size, the rest of the army will be deployed normally.")
					break
				end;
				ga_taurox.sunits:item(i).uc:teleport_to_location(current_teleport_coord.coord,current_teleport_coord.rot,current_teleport_coord.width);
			end;
			cam:fade(false, 1);
			cam:move_to(v(-199.178619,166.098404,94.853195),v(-121.737038,176.216461,358.312866), 0, false, 0);
			cam:move_to(v(-9.367683,29.745703,398.649384),v(-9.355381,29.728327,399.649292), 8, false, 10);
		end,
		1000
	);
	cutscene_morghur_dead:action(
		function()
			-- Teleport Taurox to a better place after his first line
			ga_taurox.sunits:item(1).uc:teleport_to_location(v(-2.28447, 413.596), 180, 40);
		end,
		15000
	);
	cutscene_morghur_dead:action(
		function()
			cam:fade(true, 1);
		end,
		14000
	);
	cutscene_morghur_dead:action(
		function()
			cam:fade(false, 1);
			cam:move_to(v(410.411896,112.763519,305.520782),v(561.990479,44.224976,403.680115), 0, false, 0);
			cam:move_to(v(366.76474,69.574539,520.386841),v(498.334351,63.849419,379.095581), 8, false, 60);
		end,
		15000
	);
	cutscene_morghur_dead:action(
		function()
			cam:fade(true, 1);
		end,
		22000
	);
	cutscene_morghur_dead:action(
		function()
			cam:fade(false, 1);
			-- Zoom to Prisoners 1
			cam:move_to(v(427.795898,104.016571,-54.058823),v(616.653015,104.956879,-94.680626), 0, false, 40);
		end,
		23000
	);
	cutscene_morghur_dead:action(
		function()
			cam:fade(true, 0.5);
		end,
		26000
	);

	cutscene_morghur_dead:action(
		function()
			cam:fade(false, 1);
			cam:move_to(v(-410.60556,85.941452,-456.733887),v(-577.975342,76.639046,-552.704712), 0, false, 0);
			cam:move_to(v(-462.287537,96.24157,-393.65863),v(-414.569946,73.512367,-579.465149), 7, false, 60);
		end,
		31000
	);
	--cutscene_morghur_dead:action(
	--	function()
	--		start_patrol_2();
	--		start_patrol_3();
	--	end,
	--	41000
	--);
	cutscene_morghur_dead:action(
		function()
			cam:fade(true, 1);
		end,
		41000
	);
	
	--cutscene_morghur_dead:action(function() cutscene_morghur_dead:play_sound(wh2_middlebattle1_sfx) end, 0);

	--wh2_dlc17_bst_taurox_final_battle_phase_2_pt_01 - 6s
	--wh2_dlc17_bst_taurox_final_battle_phase_2_pt_02 - 10s
	--wh2_dlc17_bst_taurox_final_battle_phase_3_pt_02 - 6s
	
	cutscene_morghur_dead:action(function() cutscene_morghur_dead:play_sound(taurox_igc1_01) end, 5000);
	cutscene_morghur_dead:action(function() cutscene_morghur_dead:show_custom_cutscene_subtitle("scripted_subtitles_localised_text_wh2_dlc17_bst_taurox_final_battle_phase_2a", "subtitle_with_frame", 0.1, true) end, 5000);	
	cutscene_morghur_dead:action(function() cutscene_morghur_dead:hide_custom_cutscene_subtitles() end, 14000);

	cutscene_morghur_dead:action(function() cutscene_morghur_dead:play_sound(taurox_igc1_02) end, 18000);
	cutscene_morghur_dead:action(function() cutscene_morghur_dead:show_custom_cutscene_subtitle("scripted_subtitles_localised_text_wh2_dlc17_bst_taurox_final_battle_phase_2b", "subtitle_with_frame", 0.1, true) end, 18000);	
	cutscene_morghur_dead:action(function() cutscene_morghur_dead:hide_custom_cutscene_subtitles() end, 28000);

	cutscene_morghur_dead:action(function() cutscene_morghur_dead:play_sound(taurox_igc1_03) end, 33000);
	cutscene_morghur_dead:action(function() cutscene_morghur_dead:show_custom_cutscene_subtitle("scripted_subtitles_localised_text_wh2_dlc17_bst_taurox_final_battle_phase_3b", "subtitle_with_frame", 0.1, true) end, 33000);	
	cutscene_morghur_dead:action(function() cutscene_morghur_dead:hide_custom_cutscene_subtitles() end, 39000);



	cutscene_morghur_dead:action(
		function()

			ga_ally_great_bray_01.sunits:take_control()
			ga_ally_great_bray_02.sunits:take_control()

			ga_ally_prison_guards_01.sunits:take_control()
			ga_ally_prison_guards_02.sunits:take_control()

			ga_reinforcement_army_prisoners_01.sunits:take_control()
			ga_reinforcement_army_prisoners_02.sunits:take_control()

			ga_ally_prison_guards_01:set_enabled(false)
			ga_ally_prison_guards_02:set_enabled(false)

			ga_ally_great_bray_01.sunits:item(1).uc:teleport_to_location(v(-125.37, 30.8257), 200, 1); -- GBS
			ga_ally_great_bray_01.sunits:item(2).uc:teleport_to_location(v(-280.983, 207.577), 5, 2); -- Gorebull
			ga_ally_great_bray_01.sunits:item(3).uc:teleport_to_location(v(-309.687, 213.307) , 29, 42); -- Gor
			ga_ally_great_bray_01.sunits:item(4).uc:teleport_to_location(v(-191.062, 217.541), 353, 42); -- Gor
			ga_ally_great_bray_01.sunits:item(5).uc:teleport_to_location(v(-247.359, 209.264), 352, 42); -- Gor
			ga_ally_great_bray_01.sunits:item(6).uc:teleport_to_location(v(-350.901, 242.724), 42, 42); -- Gor
			ga_ally_great_bray_01.sunits:item(7).uc:teleport_to_location(v(-171.702, 34.9428), 180, 4); -- Jabber
			ga_ally_great_bray_01.sunits:item(8).uc:teleport_to_location(v(-73.4388, 5.42118), 220, 40); -- Chaos Dawgs
			ga_ally_great_bray_01.sunits:item(9).uc:teleport_to_location(v(-340.309, 37.7724), 180, 40); -- Chaos Dawgs
			ga_ally_great_bray_01.sunits:item(10).uc:teleport_to_location(v(-126.835, 33.4408), 180, 42); -- Spawn
			ga_ally_great_bray_01.sunits:item(11).uc:teleport_to_location(v(-216.311, 37.9078), 180, 42); -- Spawn
			ga_ally_great_bray_01.sunits:item(12).uc:teleport_to_location(v(-271.42, 38.1477), 180, 42); -- Spawn

			ga_ally_great_bray_02.sunits:item(1).uc:teleport_to_location(v(38.9277, -117.989), 250, 1); -- GBS
			ga_ally_great_bray_02.sunits:item(2).uc:teleport_to_location(v(152.126, 101.55), 96, 2); -- Gorebull
			ga_ally_great_bray_02.sunits:item(3).uc:teleport_to_location(v(152.126, 101.55), 96, 40); -- Gor
			ga_ally_great_bray_02.sunits:item(4).uc:teleport_to_location(v(163.118, 163.501), 104, 40); -- Gor
			ga_ally_great_bray_02.sunits:item(5).uc:teleport_to_location(v(156.026, 49.1902), 85, 40); -- Gor
			ga_ally_great_bray_02.sunits:item(6).uc:teleport_to_location(v(167.238, -9.50226), 76, 30); -- Gor
			ga_ally_great_bray_02.sunits:item(7).uc:teleport_to_location(v(342.255, 381.763), 223, 30); -- Rzgor Chariot
			ga_ally_great_bray_02.sunits:item(8).uc:teleport_to_location(v(372.208, 340.123), 239, 40); -- Rzgor Chariot
			ga_ally_great_bray_02.sunits:item(9).uc:teleport_to_location(v(-6.67053, -143.533), 254, 40); -- Rzgor
			ga_ally_great_bray_02.sunits:item(10).uc:teleport_to_location(v(-18.6766, -104.225), 254, 40); -- Rzgor
			ga_ally_great_bray_02.sunits:item(11).uc:teleport_to_location(v(181.557, -80.476), 72, 40); -- Rzgor
			ga_ally_great_bray_02.sunits:item(12).uc:teleport_to_location(v(-42.6908, -44.8085), 285, 5); -- Big Friendly Giant

		end,
		31000
	);

	enqueue_cutscene(cutscene_morghur_dead);
end;
function cutscene_morghur_dead_end()
	start_patrol_2();
	cam:fade(false, 1);
--Turn Invincibility Off and Morale Loss back on
--Player
	ga_taurox.sunits:set_invincible(false)
	ga_taurox.sunits:morale_behavior_default_if_standing(true)
	--cam:fade(false, 1);
	gb.sm:trigger_message("cutscene_morghur_dead_end")
	ga_ally_prison_guards_01.sunits:item(1).uc:teleport_to_location(v(-481.668, 374.637), 95, 28);
	ga_ally_prison_guards_01.sunits:item(2).uc:teleport_to_location(v(-484.366, 344.357), 95, 28);
	ga_ally_prison_guards_02.sunits:item(1).uc:teleport_to_location(v(492.106, -52.535), 270, 28);
	ga_ally_prison_guards_02.sunits:item(2).uc:teleport_to_location(v(491.846, -82.9339), 270, 28);
end;

-------------------------------------------------------------------------------------------------
-------------------------------- CUTSCENE 2 - RITUAL COMPLETE! ----------------------------------
-------------------------------------------------------------------------------------------------

cutscene_ritual_complete = cutscene:new(
	"cutscene_ritual_complete", 					-- unique string name for cutscene
	ga_taurox.sunits, 									-- unitcontroller over player's army
	36000,												-- duration of cutscene in ms
	function() 
		cutscene_ritual_complete_end()
		check_cutscene_queue()
	end	-- what to call when cutscene is finished
);

cutscene_ritual_complete:set_restore_cam(0, v(-401.602722,189.058136,210.608841),v(-258.380615,112.625832,108.498116), 2);
cutscene_ritual_complete:set_close_advisor_on_end(false);
cutscene_ritual_complete:set_post_cutscene_fade_time(0);
cutscene_ritual_complete:set_should_disable_unit_ids(true);
cutscene_ritual_complete:set_should_enable_cinematic_camera(false);
cutscene_ritual_complete:set_skippable(false);
cutscene_ritual_complete:set_debug(false);

function play_cutscene_ritual_complete()
	cam:fade(true, 1);
	
--Turn Invincibility On and Morale Losses Off
--Player + Allies
	ga_taurox.sunits:invincible_if_standing(true)

	cutscene_ritual_complete:action(
		function()
			cam:fade(false, 1);
			cam:move_to(v(-246.522751,201.484848,-38.200115),v(-188.909561,226.610825,143.649796), 2, false, 0);
			cam:move_to(v(294.420319,108.99836,111.115471),v(294.047119,109.300652,111.992615), 8, false, 0);
		end,
		1000
	);
	cutscene_ritual_complete:action(
		function()
			gb.sm:trigger_message("powerup");
		end,
		2000
	);
	cutscene_ritual_complete:action(
		function()
			cam:fade(true, 1);
		end,
		9000
	);
	cutscene_ritual_complete:action(
		function()
			cam:fade(false, 1);
			cam:move_to(v(38.560432,95.169601,399.498322),v(38.220341,94.621613,400.262512), 2, false, 75);
			cam:move_to(v(-26.485178,30.942856,429.453247),v(46.894192,16.623793,607.565308), 8, false, 50);
		end,
		10000
	);
	cutscene_ritual_complete:action(function() gb.sm:trigger_message("spawn_the_beef") end, 11000);

	cutscene_ritual_complete:action(
		function()
			cam:fade(true, 1);
		end,
		25000
	);
	cutscene_ritual_complete:action(
		function()
			cam:fade(false, 1);
			ga_enemy_army_oxyotl.sunits:item(1).uc:teleport_to_location(v(239.023, -129.067), 330, 1.4); -- Oxyotl
			ga_enemy_army_oxyotl.sunits:item(2).uc:teleport_to_location(v(243.882, -132.812), 334, 14); -- Stalkers
			ga_enemy_army_oxyotl.sunits:item(3).uc:teleport_to_location(v(267.531, -138.715), 313, 32); -- Stalkers
			ga_enemy_army_oxyotl.sunits:item(4).uc:teleport_to_location(v(245.03, -134.716), 333, 23.2); -- ChamSkinks
			ga_enemy_army_oxyotl.sunits:item(5).uc:teleport_to_location(v(249.584, -152.297), 348, 14.4); -- ChamSkinks

			cam:move_to(v(274.665131,139.983459,-240.368744),v(265.190002,147.045273,-203.736923), 0, false, 0);
			cam:move_to(v(243.401535,132.190369,-133.309097),v(225.141449,135.614944,-99.598335), 4, false, 0);
		end,
		26000
	);
	cutscene_ritual_complete:action(
		function()
			cam:move_to(v(224.242798,129.661041,-106.810951),v(224.796539,129.731659,-107.640686), 0, false, 30);
			cam:move_to(v(224.242798,129.661041,-106.810951),v(224.796539,129.731659,-107.640686), 7, false, 15);
		end,
		28000
	);
	cutscene_ritual_complete:action(
		function()
			cam:fade(true, 1);
		end,
		35000
	);
	--cutscene_ritual_complete:action(function() cutscene_ritual_complete:play_sound(wh2_middlebattle2_sfx) end, 0);	

	cutscene_ritual_complete:action(function() cutscene_morghur_dead:play_sound(taurox_igc2_01) end, 11000);
	cutscene_ritual_complete:action(function() cutscene_ritual_complete:show_custom_cutscene_subtitle("scripted_subtitles_localised_text_wh2_dlc17_bst_taurox_final_battle_phase_3a", "subtitle_with_frame", 0.1) end, 11000);	
	cutscene_ritual_complete:action(function() cutscene_ritual_complete:hide_custom_cutscene_subtitles() end, 22000);

	cutscene_ritual_complete:action(function() cutscene_morghur_dead:play_sound(taurox_igc2_02) end, 27000);
	cutscene_ritual_complete:action(function() cutscene_ritual_complete:show_custom_cutscene_subtitle("scripted_subtitles_localised_text_wh2_dlc17_bst_taurox_final_battle_phase_3c", "subtitle_with_frame", 0.1) end, 27000);	
	cutscene_ritual_complete:action(function() cutscene_ritual_complete:hide_custom_cutscene_subtitles() end, 33000);

	enqueue_cutscene(cutscene_ritual_complete);
end;
function cutscene_ritual_complete_end()
	cam:fade(false, 1);
	ga_enemy_army_oxyotl.sunits:item(1).uc:teleport_to_location(v(-92.2427, -362.031), 330, 1.4); -- Oxyotl
	ga_enemy_army_oxyotl.sunits:item(2).uc:teleport_to_location(v(-65.7965, -337.647), 320, 40); -- Stalkers
	ga_enemy_army_oxyotl.sunits:item(3).uc:teleport_to_location(v(-112.975, -380.412), 320, 40); -- Stalkers
	ga_enemy_army_oxyotl.sunits:item(4).uc:teleport_to_location(v(-44.7844, -354.843), 320, 40); -- ChamSkinks
	ga_enemy_army_oxyotl.sunits:item(5).uc:teleport_to_location(v(-89.9624, -391.979), 320, 40); -- ChamSkinks

	ga_enemy_army_oxyotl:set_visible_to_all(false);
--Turn Invincibility Off and Morale Loss back on
--Player
	ga_taurox.sunits:set_invincible(false)
	ga_taurox.sunits:morale_behavior_default_if_standing(true)
	cam:fade(false, 1);
	cam:fade(false, 1);
	gb.sm:trigger_message("cutscene_ritual_complete_end")
end;

-- Cutscene Triggers
gb:message_on_time_offset("trigger_cutscene_morghur_dead", 10000, "morghur_total_dead")
gb:add_listener("trigger_cutscene_morghur_dead", function() play_cutscene_morghur_dead() end);

gb:message_on_time_offset("trigger_cutscene_ritual_complete", 10000, "kill_threshold_reached")
--gb:message_on_time_offset("trigger_cutscene_ritual_complete", 1000, "morghur_total_dead")
gb:add_listener("trigger_cutscene_ritual_complete", function() play_cutscene_ritual_complete() end);

-- Spawn Ghorgon
ga_taurox:use_army_special_ability_on_message("spawn_the_beef","wh2_dlc17_army_abilities_ghorgon_summon_qb_scripted", v(-4.28342, 491.967), 3.141, 4, 0);
ga_taurox:use_army_special_ability_on_message("spawn_the_beef","wh2_dlc17_army_abilities_cygor_summon_qb_scripted", v(28.084, 485.065), 3.141, 4, 0);
ga_taurox:use_army_special_ability_on_message("spawn_the_beef","wh2_dlc17_army_abilities_cygor_summon_qb_scripted", v(-25.8276, 485.236), 3.141, 4, 1000);

ga_taurox:use_army_special_ability_on_message("spawn_the_beef","wh2_dlc17_army_abilities_chaos_spawn_summon_qb_scripted", v(-34.9476, 461.756), 3.66519, 40, 0);
ga_taurox:use_army_special_ability_on_message("spawn_the_beef","wh2_dlc17_army_abilities_chaos_spawn_summon_qb_scripted", v(-4.4105, 446.796), 3.141, 40, 1000);
ga_taurox:use_army_special_ability_on_message("spawn_the_beef","wh2_dlc17_army_abilities_chaos_spawn_summon_qb_scripted", v(18.1803, 466.277), 2.61799, 40, 2000);

-- Comp Scene Triggers
gb:stop_terrain_composite_scene_on_message("powerup", herdstone_idle, 3250);
gb:start_terrain_composite_scene_on_message("powerup", herdstone_powerup);
gb:stop_terrain_composite_scene_on_message("powerup", herdstone_powerup, 6000);
gb:start_terrain_composite_scene_on_message("powerup", herdstone_powerloop, 3250);

-- Refill Ammo and Refresh Taurox units
ga_taurox:refresh_on_message("cutscene_ritual_complete_end");