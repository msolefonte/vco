local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_ARC_KEY = "wh_main_chs_chaos";
local FACTION_AZA_KEY = "wh3_dlc20_chs_azazel";
local FACTION_FES_KEY = "wh3_dlc20_chs_festus";
local FACTION_VIL_KEY = "wh3_dlc20_chs_vilitch";
local FACTION_VAL_KEY = "wh3_dlc20_chs_valkia";
local FACTION_BEL_KEY = "wh3_main_chs_shadow_legion";
local FACTION_GOD_KEY = "wh3_main_dae_daemon_prince";
local NUMBER_GIFTS_REQUIRED = 40;
local KEY_D_SLAYER_KINGS = "vco_chs_arc_dilemma_slayer_kings";
local KEY_D_SUPPLICANTS_COME = "vco_chs_aza_dilemma_supplicants_come";
local KEY_D_LUSTRIAN_PLAGUE = "vco_chs_fes_dilemma_lustrian_plague";
local KEY_D_THE_RECKONING = "vco_chs_vil_dilemma_the_reckoning";
local KEY_D_NKARI_APPROACHES = "vco_chs_val_dilemma_nkari_approaches";
local KEY_D_AETHEROPHASIC_ENGINE = "vco_chs_bel_dilemma_aetherophasic_engine";

local FACTION_BELAKOR_VASSALS_ELVES_1 = "wh2_dlc15_hef_imrik";
local FACTION_BELAKOR_VASSALS_ELVES_2 = "wh2_main_hef_avelorn";
local FACTION_BELAKOR_VASSALS_ELVES_3 = "wh2_main_hef_caledor";
local FACTION_BELAKOR_VASSALS_ELVES_4 = "wh2_main_hef_chrace";
local FACTION_BELAKOR_VASSALS_ELVES_5 = "wh2_main_hef_citadel_of_dusk";
local FACTION_BELAKOR_VASSALS_ELVES_6 = "wh2_main_hef_cothique";
local FACTION_BELAKOR_VASSALS_ELVES_7 = "wh2_main_hef_eataine";
local FACTION_BELAKOR_VASSALS_ELVES_8 = "wh2_main_hef_ellyrion";
local FACTION_BELAKOR_VASSALS_ELVES_9 = "wh2_main_hef_fortress_of_dawn";
local FACTION_BELAKOR_VASSALS_ELVES_10 = "wh2_main_hef_high_elves";
local FACTION_BELAKOR_VASSALS_ELVES_11 = "wh2_main_hef_nagarythe";
local FACTION_BELAKOR_VASSALS_ELVES_12 = "wh2_main_hef_order_of_loremasters";
local FACTION_BELAKOR_VASSALS_ELVES_13 = "wh2_main_hef_saphery";
local FACTION_BELAKOR_VASSALS_ELVES_14 = "wh2_main_hef_tiranoc";
local FACTION_BELAKOR_VASSALS_ELVES_15 = "wh2_main_hef_tor_elasor";
local FACTION_BELAKOR_VASSALS_ELVES_16 = "wh2_main_hef_yvresse";

local FACTION_BELAKOR_VASSALS_EMPIRE_1 = "wh2_dlc13_emp_golden_order";
local FACTION_BELAKOR_VASSALS_EMPIRE_2 = "wh2_dlc13_emp_the_huntmarshals_expedition";
local FACTION_BELAKOR_VASSALS_EMPIRE_3 = "wh2_main_emp_new_world_colonies";
local FACTION_BELAKOR_VASSALS_EMPIRE_4 = "wh2_main_emp_pirates_of_sartosa";
local FACTION_BELAKOR_VASSALS_EMPIRE_5 = "wh2_main_emp_sudenburg";
local FACTION_BELAKOR_VASSALS_EMPIRE_6 = "wh3_main_emp_cult_of_sigmar";
local FACTION_BELAKOR_VASSALS_EMPIRE_7 = "wh_main_emp_averland";
local FACTION_BELAKOR_VASSALS_EMPIRE_8 = "wh_main_emp_empire";
local FACTION_BELAKOR_VASSALS_EMPIRE_9 = "wh_main_emp_hochland";
local FACTION_BELAKOR_VASSALS_EMPIRE_10 = "wh_main_emp_marienburg";
local FACTION_BELAKOR_VASSALS_EMPIRE_11 = "wh_main_emp_middenland";
local FACTION_BELAKOR_VASSALS_EMPIRE_12 = "wh_main_emp_nordland";
local FACTION_BELAKOR_VASSALS_EMPIRE_13 = "wh_main_emp_ostermark";
local FACTION_BELAKOR_VASSALS_EMPIRE_14 = "wh_main_emp_ostland";
local FACTION_BELAKOR_VASSALS_EMPIRE_15 = "wh_main_emp_stirland";
local FACTION_BELAKOR_VASSALS_EMPIRE_16 = "wh_main_emp_talabecland";

local FACTION_BELAKOR_VASSALS_BRETONNIA_1 = "wh2_dlc14_brt_chevaliers_de_lyonesse";
local FACTION_BELAKOR_VASSALS_BRETONNIA_2 = "wh2_main_brt_knights_of_origo";
local FACTION_BELAKOR_VASSALS_BRETONNIA_3 = "wh2_main_brt_knights_of_the_flame";
local FACTION_BELAKOR_VASSALS_BRETONNIA_4 = "wh2_main_brt_thegans_crusaders";
local FACTION_BELAKOR_VASSALS_BRETONNIA_5 = "wh3_dlc20_brt_march_of_couronne";
local FACTION_BELAKOR_VASSALS_BRETONNIA_6 = "wh3_main_brt_aquitaine";
local FACTION_BELAKOR_VASSALS_BRETONNIA_7 = "wh_main_brt_artois";
local FACTION_BELAKOR_VASSALS_BRETONNIA_8 = "wh_main_brt_bastonne";
local FACTION_BELAKOR_VASSALS_BRETONNIA_9 = "wh_main_brt_bordeleaux";
local FACTION_BELAKOR_VASSALS_BRETONNIA_10 = "wh_main_brt_bretonnia";
local FACTION_BELAKOR_VASSALS_BRETONNIA_11 = "wh_main_brt_carcassonne";
local FACTION_BELAKOR_VASSALS_BRETONNIA_12 = "wh_main_brt_lyonesse";
local FACTION_BELAKOR_VASSALS_BRETONNIA_13 = "wh_main_brt_parravon";

local FACTION_BELAKOR_VASSALS_DWARFS_1 = "wh2_dlc15_dwf_clan_helhein";
local FACTION_BELAKOR_VASSALS_DWARFS_2 = "wh2_dlc17_dwf_thorek_ironbrow";
local FACTION_BELAKOR_VASSALS_DWARFS_3 = "wh2_main_dwf_greybeards_prospectors";
local FACTION_BELAKOR_VASSALS_DWARFS_4 = "wh2_main_dwf_karak_zorn";
local FACTION_BELAKOR_VASSALS_DWARFS_5 = "wh2_main_dwf_spine_of_sotek_dwarfs";
local FACTION_BELAKOR_VASSALS_DWARFS_6 = "wh3_main_dwf_karak_azorn";
local FACTION_BELAKOR_VASSALS_DWARFS_7 = "wh3_main_dwf_the_ancestral_throng";
local FACTION_BELAKOR_VASSALS_DWARFS_8 = "wh_main_dwf_barak_varr";
local FACTION_BELAKOR_VASSALS_DWARFS_9 = "wh_main_dwf_dwarfs";
local FACTION_BELAKOR_VASSALS_DWARFS_10 = "wh_main_dwf_karak_azul";
local FACTION_BELAKOR_VASSALS_DWARFS_11 = "wh_main_dwf_karak_hirn";
local FACTION_BELAKOR_VASSALS_DWARFS_12 = "wh_main_dwf_karak_izor";
local FACTION_BELAKOR_VASSALS_DWARFS_13 = "wh_main_dwf_karak_kadrin";
local FACTION_BELAKOR_VASSALS_DWARFS_14 = "wh_main_dwf_karak_norn";
local FACTION_BELAKOR_VASSALS_DWARFS_15 = "wh_main_dwf_karak_ziflin";
local FACTION_BELAKOR_VASSALS_DWARFS_16 = "wh_main_dwf_kraka_drak";
local FACTION_BELAKOR_VASSALS_DWARFS_17 = "wh_main_dwf_zhufbar";

-- TRIGGERS --

local function trigger_arc_dilemma()
	cm:trigger_dilemma(FACTION_ARC_KEY, KEY_D_SLAYER_KINGS);
end

local function trigger_aza_dilemma()
	cm:trigger_dilemma(FACTION_AZA_KEY, KEY_D_SUPPLICANTS_COME);
end

local function trigger_fes_dilemma()
	cm:trigger_dilemma(FACTION_FES_KEY, KEY_D_LUSTRIAN_PLAGUE);
end

local function trigger_bel_dilemma()
	cm:trigger_dilemma(FACTION_BEL_KEY, KEY_D_AETHEROPHASIC_ENGINE);
end

local function trigger_bel_vassals()
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_GOD_KEY);
    cm:force_make_vassal(FACTION_BEL_KEY, FACTION_ARC_KEY);
end

local function bel_vassalise_elves()
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_1);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_2);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_3);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_4);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_5);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_6);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_7);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_8);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_9);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_10);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_11);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_12);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_13);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_14);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_15);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_ELVES_16);
end

local function bel_vassalise_empire()
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_1);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_2);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_3);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_4);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_5);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_6);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_7);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_8);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_9);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_10);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_11);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_12);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_13);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_14);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_15);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_EMPIRE_16);
end

local function bel_vassalise_bretonnians()
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_BRETONNIA_1);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_BRETONNIA_2);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_BRETONNIA_3);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_BRETONNIA_4);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_BRETONNIA_5);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_BRETONNIA_6);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_BRETONNIA_7);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_BRETONNIA_8);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_BRETONNIA_9);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_BRETONNIA_10);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_BRETONNIA_11);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_BRETONNIA_12);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_BRETONNIA_13);
end

local function bel_vassalise_dwarfs()
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_1);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_2);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_3);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_4);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_5);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_6);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_7);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_8);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_9);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_10);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_11);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_12);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_13);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_14);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_15);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_16);
	cm:force_make_vassal(FACTION_BEL_KEY, FACTION_BELAKOR_VASSALS_DWARFS_17);
end

local function trigger_bel_dilemma_choice_made(choice)
	if choice == 0 then
		bel_vassalise_elves();
	elseif choice == 1 then
		bel_vassalise_empire();
	elseif choice == 2 then
		bel_vassalise_bretonnians();
	elseif choice == 3 then
		bel_vassalise_dwarfs();
	end
end

local function trigger_vil_dilemma()
	cm:trigger_dilemma(FACTION_VIL_KEY, KEY_D_THE_RECKONING)
	if not cm:get_faction("wh_main_chs_chaos") then
    cm:spawn_character_to_pool("wh3_dlc20_chs_vilitch", "names_name_2147343903", "names_name_21473573645", "", "", 18, true, "general", "vco_wh_main_chs_archaon", true, "");
    
    elseif not cm:get_faction("wh_main_chs_chaos"):was_confederated()
    then
    cm:spawn_character_to_pool("wh3_dlc20_chs_vilitch", "names_name_2147343903", "names_name_21473573645", "", "", 18, true, "general", "vco_wh_main_chs_archaon", true, "");
    end
end

local function trigger_val_dilemma()
	cm:trigger_dilemma(FACTION_VAL_KEY, KEY_D_NKARI_APPROACHES);
end

--CHECKS
local function check_aza_gifts_given()
	vco:log("check_aza_gifts_given | Function Entry");
	local gifts_given = cm:get_saved_value("gifts_given_" .. FACTION_AZA_KEY) or 0;
	vco:log("check_aza_gifts_given | Gifts given prior to this event: " .. gifts_given);

	local gifts_given_incremented = gifts_given + 1;
	cm:set_saved_value("gifts_given_" .. FACTION_AZA_KEY, gifts_given_incremented);
	vco:log("check_aza_gifts_given | Gifts given after this event: " .. gifts_given_incremented);

	if gifts_given_incremented < NUMBER_GIFTS_REQUIRED then
		vco:log("check_aza_gifts_given | Gifts given evaluation: Not enough gifts given");
		vco:set_mission_text("vco_" .. FACTION_AZA_KEY .. "_gifts_given", "vco_sla_gifts_given_" .. gifts_given_incremented);
	else
		vco:log("check_aza_gifts_given | Gifts given evaluation: Gifts given equals or exceeds requirement, mission completed");
		vco:set_mission_text("vco_" .. FACTION_AZA_KEY .. "_gifts_given", "vco_sla_gifts_given_completed");
		vco:complete_mission(FACTION_AZA_KEY, "vco_" .. FACTION_AZA_KEY .. "_gifts_given");
	end
end


-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_chs_aza_gifts_given",
		"FactionCharacterTagAddedEvent",
		function(context)
			vco:log("vco_chs_aza_gifts_given | Conditional Function");
			return context:tagging_faction():is_human() and
				context:tagging_faction():name() == FACTION_AZA_KEY
		end,
		check_aza_gifts_given,
		true
	);

	core:add_listener(
		"vco_chs_aza_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_AZA_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_aza_dilemma,
		false
	);

	core:add_listener(
		"vco_chs_fes_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_FES_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_fes_dilemma,
		false
	);

	core:add_listener(
		"vco_chs_vil_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_VIL_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_vil_dilemma,
		false
	);

core:add_listener(
    "adds_trait_to_possessed_archaon",
    "CharacterCreated",
    function(context)
			return context:character():character_subtype_key() == "vco_wh_main_chs_archaon"
    end,
    function(context)
        local character = context:character()
        local cqi = character:command_queue_index()
        local lookup_str = cm:char_lookup_str(cqi)
        cm:force_add_trait(lookup_str,"vco_trait_archaon_possessed", true, 1)
        cm:force_add_ancillary(character,"vco_anc_weapon_the_slayer_of_kings", false, true)
        cm:force_add_ancillary(character,"vco_anc_talisman_the_eye_of_sheerian", false, true)
        cm:force_add_ancillary(character,"vco_anc_armour_the_armour_of_morkar", false, true)
        cm:force_add_ancillary(character,"vco_anc_enchanted_item_the_crown_of_domination", false, true)
        cm:force_add_ancillary(character,"vco_anc_arcane_item_vilitchs_locket", false, false)
        cm:add_agent_experience(lookup_str, 20000)
    end,
    false
    );
    
	core:add_listener(
		"vco_chs_val_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_VAL_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_val_dilemma,
		false
	);

	core:add_listener(
		"vco_chs_bel_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_BEL_KEY and
				context:mission():mission_issuer_record_key() == "KING_KAZADOR";
		end,
		trigger_bel_vassals,
		false
	);

	core:add_listener(
		"vco_chs_bel_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_BEL_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_bel_dilemma,
		false
	);

	core:add_listener(
		"vco_chs_bel_dilemma_choice_made",
		"DilemmaChoiceMadeEvent",
		function(context)
			return context:dilemma() == KEY_D_AETHEROPHASIC_ENGINE;
		end,
		function(context)
			trigger_bel_dilemma_choice_made(context:choice());
		end,
		true
	);

	core:add_listener(
		"vco_chs_arc_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_ARC_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_arc_dilemma,
		false
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
