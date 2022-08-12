local missions = {
    [[
        mission
        {
            victory_type vco_victory_type_alternative_1_expansion;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 8;

					province wh2_main_great_desert_of_araby;
					province wh2_main_great_mortis_delta;
					province wh2_main_land_of_assassins;
					province wh2_main_land_of_the_dead;
					province wh2_main_land_of_the_dervishes;
					province wh2_main_sartosa;
					province wh2_main_skavenblight;
					province wh_main_southern_badlands;
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
            victory_type vco_victory_type_alternative_2_threat_elimination;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type DESTROY_FACTION;

					faction wh2_main_skv_clan_mors;

					faction wh2_dlc09_tmb_followers_of_nagash;

					faction wh2_dlc11_cst_pirates_of_sartosa;

					faction wh_main_grn_orcs_of_the_bloody_hand;

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
