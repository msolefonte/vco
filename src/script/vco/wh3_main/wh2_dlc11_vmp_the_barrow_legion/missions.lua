local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_corruption;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type AT_LEAST_X_RELIGION_IN_PROVINCES;

					province wh_main_bastonne_et_montfort;
                    province wh_main_bordeleaux_et_aquitaine;
                    province wh_main_carcassone_et_brionne;
                    province wh_main_couronne_et_languille;
                    province wh_main_forest_of_arden;
                    province wh_main_lyonesse;
                    province wh_main_parravon_et_quenelles;

					total 80;
					religion wh_main_religion_undeath;
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
			victory_type vco_victory_type_alternative_2_corruption;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type AT_LEAST_X_RELIGION_IN_PROVINCES;

					province wh_main_argwylon;
					province wh_main_talsyn;
					province wh_main_torgovann;
					province wh_main_wydrioth;
					province wh_main_yn_edri_eternos;

					total 80;
					religion wh_main_religion_undeath;
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
			victory_type vco_victory_type_alternative_3_magic_supremacy;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type CONSTRUCT_N_BUILDINGS_FROM;
					faction wh2_dlc11_vmp_the_barrow_legion;
					total 3;

					building_level wh2_main_wef_oak_of_ages_occupied_1;
					building_level wh2_main_special_drakenhof_court;
					building_level wh_main_special_college_of_magic_vampires;
					building_level wh_main_special_settlement_couronne_5_vmp;
					building_level wh2_main_special_pyramid_of_nagash_vmp;
					building_level wh2_dlc11_special_settlement_galleons_graveyard_5;
					building_level wh2_main_special_castle_drachenfels_2;
					building_level wh2_main_special_pyramid_of_nagash_vmp;
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
