local missions = {
    [[
        mission
        {
            victory_type vco_victory_type_alternative_1_conquest;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 5;

					region wh2_main_eataine_lothern;
					region wh2_main_yvresse_shrine_of_loec;
					region wh2_main_eataine_angerrial;
					region wh2_main_yvresse_elessaeli;
					region wh2_main_yvresse_tralinia;
					region wh2_main_cothique_tor_koruali;
					region wh2_main_cothique_mistnar;
					region wh2_main_chrace_elisia;
					region wh2_main_nagarythe_tor_anlec;
					region wh2_main_tiranoc_tor_anroc;
					region wh2_main_ellyrion_whitefire_tor;
					region wh2_main_avelorn_evershale;
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
            victory_type vco_victory_type_alternative_2_edification;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {

				objective
				{
					type CONSTRUCT_N_BUILDINGS_FROM;
					faction wh2_dlc11_cst_the_drowned;
					total 2;

					building_level wh2_dlc11_special_cylostra_opera_house_1;
					building_level wh2_dlc11_special_ship_cylostra_1;
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
            victory_type vco_victory_type_alternative_3_miscellany;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
					pooled_resource cst_infamy;
					total 15000;
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
