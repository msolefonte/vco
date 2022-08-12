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
                    type OWN_N_UNITS;
                    total 5;

                    unit wh2_dlc15_hef_mon_sun_dragon_imrik;
                    unit wh2_dlc15_hef_mon_moon_dragon_imrik;
                    unit wh2_dlc15_hef_mon_star_dragon_imrik;
                    unit wh2_dlc15_hef_mon_forest_dragon_imrik;
                    unit wh2_dlc15_hef_mon_black_dragon_imrik;
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

                    province wh2_main_caledor;
                    province wh2_main_dragon_isles;
                    province wh2_main_gnoblar_country;
                    province wh2_main_the_plain_of_bones;
                    province wh2_main_the_wolf_lands;
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
            victory_type vco_victory_type_alternative_3_edification;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
                {
                    type CONSTRUCT_N_BUILDINGS_INCLUDING;
                    faction wh2_dlc15_hef_imrik;
                    total 3;

                    building_level wh2_dlc15_special_graves_of_the_dragons_2_hef;
                    building_level wh2_main_hef_dragons_2;
                    building_level wh2_main_special_hall_of_dragons;
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
