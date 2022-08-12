local missions = {
  [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_in_harmony;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 8;

					province wh3_main_chaos_province_broken_lands_of_tian_li;
					province wh3_main_chaos_province_celestial_riverlands;
          province wh3_main_chaos_province_forests_of_the_moon;
					province wh3_main_chaos_province_gunpowder_road;
					province wh3_main_chaos_province_imperial_road;
					province wh3_main_chaos_province_lands_of_stone_and_steel;
					province wh3_main_chaos_province_warpstone_desert;
					province wh3_main_chaos_province_wastelands_of_jinshen;
				}

		    objective
		    {
	        type CONTROL_N_PROVINCES_INCLUDING;
	        total 3;

          province wh3_main_chaos_province_central_great_bastion;
          province wh3_main_chaos_province_eastern_great_bastion;
		      province wh3_main_chaos_province_western_great_bastion;
		    }

				payload
				{
          money 15000;
          game_victory;
				}
			}
		}
  ]],
  [[
 		mission
		{
			victory_type vco_victory_type_alternative_2_cool_and_aloof;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
        {
          type DESTROY_FACTION;

          faction wh2_main_skv_clan_eshin;

          faction wh3_main_cth_rebel_lords_of_nan_yang;
          faction wh3_main_cth_dissenter_lords_of_jinshen;

          faction wh3_main_tze_sarthoraels_watchers;

          confederation_valid;
        }

				objective
        {
          type CONSTRUCT_N_OF_A_BUILDING;
          faction wh3_main_cth_the_northern_provinces;
          total 3;

          building_level wh3_main_cth_bastion_primary_5;
        }

				payload
				{
          money 15000;
          game_victory;
				}
			}
		}
  ]],
  [[
 		mission
		{
			victory_type vco_victory_type_alternative_3_nan-gau-style_chicken;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
        {
          type DESTROY_FACTION;

          faction wh3_main_tze_all_seeing_eye;
          faction wh3_main_tze_broken_wheel;
          faction wh3_main_tze_flaming_scribes;
          faction wh3_main_tze_oracles_of_tzeentch;
          faction wh3_main_tze_sarthoraels_watchers;

          confederation_valid;
        }

        payload
        {
          money 15000;
          game_victory;
        }
			}
		}
  ]]
};

return missions;
