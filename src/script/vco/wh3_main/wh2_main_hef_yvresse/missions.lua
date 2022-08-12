local missions = {
    [[
         mission
        {
            victory_type vco_victory_type_alternative_1_miscellany;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type HAVE_AT_LEAST_X_OF_A_POOLED_RESOURCE;
					pooled_resource yvresse_defence;
					total 100;
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
            victory_type vco_victory_type_alternative_2_expansion;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 5;

					province wh2_main_yvresse;
					province wh2_main_cothique;
					province wh2_main_chrace;

					province wh_main_southern_badlands;
					province wh_main_western_badlands;
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
            victory_type vco_victory_type_alternative_3_threat_elimination;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc15_grn_broken_axe;
					faction wh_main_grn_greenskins;
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
