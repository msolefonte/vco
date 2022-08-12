local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 14;

					province wh_main_nordland;
					province wh_main_ostland;
					province wh_main_hochland;
					province wh_main_middenland;
					province wh_main_talabecland;
					province wh_main_ostermark;
					province wh_main_reikland;
					province wh_main_stirland;
					province wh_main_averland;
					province wh_main_wissenland;
					province wh_main_the_wasteland;
					province wh2_main_solland;

					province wh_main_eastern_sylvania;
					province wh_main_western_sylvania;
				}

				payload
				{
					game_victory;
				}
			}
		}
    ]],
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_2;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type CONSTRUCT_N_BUILDINGS_FROM;
					faction wh_main_vmp_schwartzhafen;
					total 2;

					building_level wh2_main_special_altdorf_imperial_palace_vmp;
					building_level wh2_main_special_drakenhof_court;
				}

				payload
				{
					game_victory;
				}
			}
		}
    ]]
};

return missions;
