local vlc = core:get_static_object("vco-lib-commons");

local FACTION_EAT_KEY = "wh2_main_hef_eataine";
local KEY_EB_PENALIZATION = "wh2_main_payload_public_order_negative_all_provinces_factionwide";
local PENALIZABLE_DARK_ELVES_FACTIONS = {
  "wh2_dlc10_def_blood_voyage",
  "wh2_dlc11_def_the_blessed_dread",
  "wh2_main_def_bleak_holds",
  "wh2_main_def_blood_hall_coven",
  "wh2_main_def_clar_karond",
  "wh2_main_def_cult_of_excess",
  "wh2_main_def_cult_of_pleasure",
  "wh2_main_def_dark_elves",
  "wh2_main_def_deadwood_sentinels",
  "wh2_main_def_drackla_coven",
  "wh2_main_def_ghrond",
  "wh2_main_def_hag_graef",
  "wh2_main_def_har_ganeth",
  "wh2_main_def_karond_kar",
  "wh2_main_def_naggarond",
  "wh2_main_def_scourge_of_khaine",
  "wh2_main_def_ssildra_tor",
  "wh2_main_def_the_forgebound",
  "wh2_twa03_def_rakarth"
};
local VASSALIZABLE_WOOD_ELVES_FACTIONS = {
  "wh2_dlc13_wef_laurelorn_forest",
  "wh2_dlc16_wef_sisters_of_twilight",
  "wh2_main_wef_bowmen_of_oreon",
  "wh3_main_wef_laurelorn",
  "wh_dlc05_wef_argwylon",
  "wh_dlc05_wef_torgovann",
  "wh_dlc05_wef_wood_elves",
  "wh_dlc05_wef_wydrioth"
};

-- ACTIONS --
local function eat_penalize_dark_elves_factions()
  for _, de_faction_key in ipairs(PENALIZABLE_DARK_ELVES_FACTIONS) do
	vlc.diplomacy:apply_effect_bundle_safe(KEY_EB_PENALIZATION, de_faction_key, 0);
  end
end

local function eat_vassalize_wood_elves_factions()
  for _, we_faction_key in ipairs(VASSALIZABLE_WOOD_ELVES_FACTIONS) do
	vlc.diplomacy:vassalise_faction_safe(FACTION_EAT_KEY, we_faction_key);
  end
end

-- LISTENERS --
local function add_listeners()
	core:add_listener(
		"vco_hef_eat_def_control_penalty",
		"MissionSucceeded",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:faction():name() == FACTION_EAT_KEY and
				context:mission():mission_record_issuer_key() == "MUFFIN_MAN";
		end,
		eat_penalize_dark_elves_factions,
		true
	); 

	core:add_listener(
		"vco_hef_eat_wef_vassalisation",
		"MissionSucceeded",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:faction():name() == FACTION_EAT_KEY and
				context:mission():mission_record_issuer_key() == "KING_KAZADOR";
		end,
		eat_vassalize_wood_elves_factions,
		true
	);
end

-- MAIN --
local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
