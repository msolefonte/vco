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
					total 12;
					override_text mission_text_text_wh_main_objective_override_empire_control;

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
                    type DESTROY_FACTION;
                    faction wh_main_grn_black_venom;
                    faction wh_main_grn_broken_nose;
                    faction wh_main_grn_crooked_moon;
                    faction wh2_dlc12_grn_leaf_cutterz_tribe;
                    faction wh_main_grn_skullsmasherz;

                    faction wh_main_vmp_mousillon;
                    faction wh_main_vmp_vampire_counts;
                    faction wh2_dlc11_vmp_the_barrow_legion;
                    faction wh_main_vmp_schwartzhafen;

                    faction wh2_dlc15_skv_clan_kreepus;
                    faction wh2_main_skv_clan_moulder;

                    faction wh2_twa03_def_rakarth;

                    faction wh_dlc08_nor_goromadny_tribe;
                    faction wh_dlc08_nor_helspire_tribe;
                    faction wh_dlc08_nor_naglfarlings;
                    faction wh_main_nor_skaeling;
                    faction wh_dlc08_nor_vanaheimlings;
                    faction wh_main_nor_varg;
                    faction wh_dlc08_nor_norsca;
                    faction wh_dlc08_nor_wintertooth;

                    confederation_valid;
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
